package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.micloudsdk.request.utils.Request;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class SyncCloudBase extends SyncFromServer {
    protected abstract List<DBImage> getCandidateItemsInAGroup(String str, String str2, String str3);

    protected abstract DBImage getItem(String str);

    protected abstract String getLocalGroupId(ContentValues contentValues);

    protected abstract void handleUbiSubImage(JSONObject jSONObject, String str) throws JSONException;

    protected abstract void onNewImageSynced(ContentValues contentValues, String str);

    protected abstract void updateLocalGroupIdInGroup(String str, ContentValues contentValues);

    public SyncCloudBase(Context context, Account account, GalleryExtendedAuthToken extendedAuthToken) {
        super(context, account, extendedAuthToken);
    }

    protected final boolean handleItem(JSONObject schemaJson) throws JSONException {
        boolean z = false;
        String type = schemaJson.getString(nexExportFormat.TAG_FORMAT_TYPE);
        String status = schemaJson.getString("status");
        String serverId = schemaJson.getString("id");
        synchronized (getBaseUri()) {
            DBImage cloud = getItem(serverId);
            if (cloud == null) {
                ContentValues values = CloudUtils.getContentValuesForAll(schemaJson);
                if (type.equals("group")) {
                    updateLocalGroupIdInGroup(handleNewGroup(this.mContext, getBaseUri(), values, serverId), values);
                } else {
                    values.put("localGroupId", getLocalGroupId(values));
                    handleUbiSubImage(schemaJson, handleNewImage(values, serverId, status, schemaJson));
                    if (values.containsKey("sha1") && schemaJson.has("isFavorite")) {
                        handleFavoriteInfo(schemaJson, values.getAsString("sha1"));
                    }
                    z = true;
                }
            } else if (cloud.getServerTag() >= CloudUtils.getLongAttributeFromJson(schemaJson, nexExportFormat.TAG_FORMAT_TAG)) {
                SyncLog.d("SyncCloudBase", "cloud:" + cloud.getFileName() + " local tag:" + cloud.getServerTag() + " >= server tag:" + CloudUtils.getLongAttributeFromJson(schemaJson, nexExportFormat.TAG_FORMAT_TAG) + ", don't update local.");
            } else {
                if (status.equals("custom")) {
                    handleCustom(cloud, schemaJson);
                    handleUbiSubImage(schemaJson, null);
                } else if (status.equals("deleted")) {
                    handleDelete(cloud, schemaJson);
                } else if (status.equals("purged")) {
                    handlePurged(cloud, schemaJson);
                } else {
                    SyncLog.e("SyncCloudBase", "status unrecognized, schema:" + schemaJson);
                }
            }
        }
        return z;
    }

    protected void handleFavoriteInfo(JSONObject schemaJson, String sha1) throws JSONException {
    }

    static String handleNewGroup(Context context, Uri baseUri, ContentValues values, String serverId) throws JSONException {
        String fileName;
        String newAlbumName;
        ContentValues valuesWithNewName;
        Uri uri;
        if (CloudUtils.isUmodifyAlbum(serverId)) {
            DBImage dbImage = CloudUtils.getItemByServerID(context, String.valueOf(serverId));
            if (dbImage != null) {
                CloudUtils.reviseAttributes(values, dbImage);
                CloudUtils.updateToLocalDBForSync(baseUri, values, dbImage);
                return dbImage.getId();
            }
            fileName = CloudControlStrategyHelper.getServerUnModifyAlbumsStrategy().getServerAlbumName(Long.parseLong(serverId));
            DBImage conflictItem = fileName != null ? CloudUtils.getGroupByFileName(context, fileName) : null;
            if (conflictItem != null) {
                newAlbumName = conflictItem.getFileName() + "_" + System.currentTimeMillis();
                valuesWithNewName = new ContentValues();
                valuesWithNewName.put("fileName", newAlbumName);
                CloudUtils.updateToLocalDB(baseUri, valuesWithNewName, conflictItem);
            }
            values.put("localFlag", Integer.valueOf(0));
            CloudUtils.reviseAttributes(values, null);
            uri = GalleryUtils.safeInsertImage(baseUri, values);
            if (uri != null) {
                return uri.getLastPathSegment();
            }
            return null;
        }
        DBImage oldCloud;
        String appKey = null;
        if (ApplicationHelper.isAutoUploadFeatureOpen()) {
            if (values.containsKey("appKey")) {
                appKey = values.getAsString("appKey");
                oldCloud = CloudUtils.getGroupByAppKey(GalleryApp.sGetAndroidContext(), appKey);
                if (oldCloud != null) {
                    CloudUtils.reviseAttributes(values, oldCloud);
                    CloudUtils.updateToLocalDBForSync(baseUri, values, oldCloud);
                    return oldCloud.getId();
                }
            }
        }
        String newItemLocalFile = values.getAsString("localFile");
        fileName = values.getAsString("fileName");
        oldCloud = CloudUtils.getGroupByFileName(context, fileName);
        if (oldCloud != null) {
            if (CloudUtils.isUmodifyAlbum(oldCloud.getServerId())) {
                statSuspiciousAlbum(values);
            } else {
                String oldItemLocalFile = oldCloud.getLocalFile();
                if (TextUtils.isEmpty(oldItemLocalFile) || TextUtils.isEmpty(newItemLocalFile) || oldItemLocalFile.equalsIgnoreCase(newItemLocalFile)) {
                    CloudUtils.reviseAttributes(values, oldCloud);
                    CloudUtils.updateToLocalDBForSync(baseUri, values, oldCloud);
                    return oldCloud.getId();
                } else if (oldCloud.getLocalFlag() == 8 || oldCloud.getLocalFlag() == 7) {
                    newAlbumName = oldCloud.getFileName() + "_" + System.currentTimeMillis();
                    valuesWithNewName = new ContentValues();
                    valuesWithNewName.put("fileName", newAlbumName);
                    CloudUtils.updateToLocalDB(baseUri, valuesWithNewName, oldCloud);
                } else {
                    SyncLog.e("SyncCloudBase", "old album's localflag: %s, old album's name: %s", Integer.valueOf(oldCloud.getLocalFlag()), oldCloud.getFileName());
                }
            }
        }
        if (TextUtils.isEmpty(newItemLocalFile)) {
            newItemLocalFile = CloudUtils.getOwnerAlbumLocalFile(fileName, appKey);
            String editedColumns = GalleryCloudUtils.mergeEditedColumns(GalleryCloudUtils.transformToEditedColumnsElement(38), values.getAsString("editedColumns"));
            values.put("localFile", newItemLocalFile);
            values.put("editedColumns", editedColumns);
        }
        oldCloud = CloudUtils.getGroupItemByColumnnameAndValue(context, "localFile", newItemLocalFile, true);
        if (oldCloud != null) {
            CloudUtils.reviseAttributes(values, oldCloud);
            CloudUtils.updateToLocalDBForSync(baseUri, values, oldCloud);
            return oldCloud.getId();
        }
        values.put("localFlag", Integer.valueOf(0));
        CloudUtils.reviseAttributes(values, null);
        uri = GalleryUtils.safeInsertImage(baseUri, values);
        if (uri != null) {
            return uri.getLastPathSegment();
        }
        return null;
    }

    private static void statSuspiciousAlbum(ContentValues values) {
        HashMap<String, String> params = new HashMap();
        params.put("album_info", values.toString());
        BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_suspicious_album", params);
    }

    protected String handleNewImage(ContentValues values, String serverId, String status, JSONObject schemaJson) {
        values.put("localFlag", Integer.valueOf(0));
        Object fileName = values.getAsString("fileName");
        String newItemSha1 = values.getAsString("sha1");
        String localGroupId = values.getAsString("localGroupId");
        List<DBImage> candidateItems;
        if (TextUtils.isEmpty(localGroupId)) {
            candidateItems = new ArrayList();
            logForNullLocalGroupId(values, schemaJson);
        } else {
            candidateItems = getCandidateItemsInAGroup(fileName, newItemSha1, localGroupId);
        }
        DBImage itemToMerge = null;
        DBImage itemNeedRename = null;
        for (DBImage candidateItem : candidateItems) {
            String localFile;
            if (TextUtils.equals(candidateItem.getSha1(), newItemSha1)) {
                if (TextUtils.equals(candidateItem.getFileName(), fileName)) {
                    localFile = candidateItem.getLocalFile();
                    boolean isThumbnail = (TextUtils.isEmpty(localFile) || TextUtils.isEmpty(ExifUtil.getUserCommentSha1(localFile))) ? false : true;
                    if (itemToMerge == null || isThumbnail) {
                        itemToMerge = candidateItem;
                        if (isThumbnail) {
                            values.put("thumbnailFile", localFile);
                            values.putNull("localFile");
                        }
                    } else {
                        SyncLog.w("SyncCloudBase", "the new item matches both %s and %s", itemToMerge.getId(), candidateItem.getId());
                    }
                } else {
                    localFile = candidateItem.getLocalFile();
                    if (TextUtils.isEmpty(localFile) || !TextUtils.equals(CloudUtils.readFileNameFromExif(localFile), fileName)) {
                        SyncLog.i("SyncCloudBase", "%s and %s have the same sha1", fileName, candidateItem.getFileName());
                    } else if (itemToMerge == null) {
                        itemToMerge = candidateItem;
                        values.put("thumbnailFile", localFile);
                        values.putNull("localFile");
                    } else {
                        SyncLog.w("SyncCloudBase", "the new item matches both %s and %s", itemToMerge.getId(), candidateItem.getId());
                    }
                }
            } else if (TextUtils.equals(candidateItem.getFileName(), fileName)) {
                localFile = candidateItem.getLocalFile();
                if (TextUtils.isEmpty(localFile) || TextUtils.isEmpty(ExifUtil.getUserCommentSha1(localFile)) || !TextUtils.equals(FileUtils.getSha1(localFile), newItemSha1)) {
                    itemNeedRename = candidateItem;
                } else {
                    SyncLog.d("SyncCloudBase", "update an item with a thumbnail as its original file, name: %s", fileName);
                    if (itemToMerge == null) {
                        itemToMerge = candidateItem;
                    } else {
                        SyncLog.w("SyncCloudBase", "the new item matches both %s and %s", itemToMerge.getId(), candidateItem.getId());
                    }
                }
            } else {
                SyncLog.e("SyncCloudBase", "should not reach here!!");
            }
        }
        if (itemNeedRename != null) {
            CloudUtils.renameAnItemInLocal(itemNeedRename, false);
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            params.put("groupId", values.getAsString("groupId"));
            params.put("sha1", newItemSha1 + "_" + itemNeedRename.getSha1());
            BaseSamplingStatHelper.recordCountEvent("Sync", "sync_rename_conflict_item", params);
        }
        if (itemToMerge != null) {
            CloudUtils.reviseSpecialTypeFlags(values, itemToMerge);
            GalleryUtils.safeUpdateImage(values, itemToMerge);
            return itemToMerge.getId();
        }
        CloudUtils.reviseSpecialTypeFlags(values, null);
        Uri uri = GalleryUtils.safeInsertImage(getBaseUri(), values);
        if (uri == null) {
            return null;
        }
        String id = uri.getLastPathSegment();
        onNewImageSynced(values, id);
        return id;
    }

    private void logForNullLocalGroupId(ContentValues values, JSONObject schemaJson) {
        SyncLog.i("SyncCloudBase", "localGroupId is null, schemaJson= ", schemaJson == null ? "" : schemaJson.toString());
        Map<String, String> params = new HashMap();
        params.put("groupId", values.getAsString("groupId"));
        params.put("serverstatus", values.getAsString("serverStatus"));
        params.put("model", Build.MODEL);
        params.put("version", VERSION.INCREMENTAL);
        BaseSamplingStatHelper.recordCountEvent("Sync", "group_record_not_found", params);
    }

    private final void handleCustom(DBImage cloud, JSONObject schemaJson) throws JSONException {
        ContentValues values = CloudUtils.getContentValuesForAll(schemaJson);
        values.putNull("editedColumns");
        CloudUtils.reviseAttributes(values, cloud);
        int serverType = values.getAsInteger("serverType").intValue();
        if (serverType == 1 || serverType == 2) {
            String localGroupId = getLocalGroupId(values);
            if (TextUtils.isEmpty(localGroupId)) {
                logForNullLocalGroupId(values, schemaJson);
            } else {
                values.put("localGroupId", localGroupId);
            }
            CloudUtils.reviseSpecialTypeFlags(values, cloud);
        } else if (serverType == 0) {
            updateLocalGroupIdInGroup(cloud.getId(), values);
        }
        CloudUtils.updateToLocalDBForSync(getBaseUri(), values, cloud);
        if ((serverType == 1 || serverType == 2) && values.containsKey("sha1") && schemaJson.has("isFavorite")) {
            handleFavoriteInfo(schemaJson, values.getAsString("sha1"));
        }
    }

    private final void handleDelete(DBImage cloud, JSONObject schemaJson) throws JSONException {
        DeleteCloudItem.updateForDeleteOrPurgedOnLocal(getBaseUri(), this.mContext, cloud, schemaJson);
    }

    private final void handlePurged(DBImage cloud, JSONObject schemaJson) throws JSONException {
        DeleteCloudItem.updateForDeleteOrPurgedOnLocal(getBaseUri(), this.mContext, cloud, schemaJson);
    }

    private final Set<String> getLargerTags(long syncTag) {
        Set<String> tags = Sets.newHashSet();
        Cursor cursor = null;
        try {
            Uri uri = UriUtil.appendLimit(getBaseUri(), 100);
            cursor = this.mContext.getContentResolver().query(uri, new String[]{"serverTag"}, "serverTag > " + syncTag, null, "serverTag ASC ");
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    tags.add(cursor.getString(0));
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return tags;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    protected void appendParams(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> syncTagList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        if (syncTagList != null) {
            super.appendParams(params, syncTagList);
            Set<String> tagSet = getLargerTags(((SyncTagItem) syncTagList.get(0)).currentValue);
            HashMap<String, String> paramsMap = Maps.newHashMap();
            Iterator it = params.iterator();
            while (it.hasNext()) {
                NameValuePair param = (NameValuePair) it.next();
                paramsMap.put(param.getName(), param.getValue());
            }
            Request.addFilterTagsToParams(getSyncUrl(), paramsMap, this.mExtendedAuthToken.getSecurity(), tagSet, ((SyncTagItem) syncTagList.get(0)).currentValue);
            String tags = (String) paramsMap.get("filterTag");
            if (!TextUtils.isEmpty(tags)) {
                params.add(new BasicNameValuePair("filterTag", tags));
            }
        }
    }

    protected final boolean handleDataJson(JSONObject dataJson) throws JSONException {
        JSONArray contentArray = dataJson.optJSONArray("content");
        if (contentArray == null || contentArray.length() <= 0) {
            SyncLog.d("SyncCloudBase", "contentArray is empty, return.");
            return false;
        }
        boolean hasNewItem = false;
        for (int i = 0; i < contentArray.length(); i++) {
            JSONObject schemaJson = contentArray.getJSONObject(i);
            if (handleItem(schemaJson)) {
                hasNewItem = true;
            }
            String type = schemaJson.getString(nexExportFormat.TAG_FORMAT_TYPE);
            String status = schemaJson.getString("status");
            if (type.equals("group") && status.equals("custom") && schemaJson.has("isPublic") && schemaJson.getBoolean("isPublic")) {
                AlbumShareOperations.requestPublicUrl(schemaJson.getString("id"), false);
            }
        }
        return hasNewItem;
    }

    protected boolean belong2BabyAlbum(ContentValues values, boolean isShare) {
        return BabyAlbumUtils.isBabyAlbumForThisServerId(this.mContext, values.getAsString("groupId"), isShare);
    }
}
