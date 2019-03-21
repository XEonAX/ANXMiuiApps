package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.HostManager.OwnerAlbum;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import org.json.JSONObject;

public class CreateGroupItem extends RequestOperationBase {
    private static String[] invalidCharacters = new String[]{"/", "\\", ":", "@", "*", "?", "<", ">", "\r", "\n", "\t", "-"};
    private static String[] invalidStartWiths = new String[]{".", "_"};

    public CreateGroupItem(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestCloudItem) {
            RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
            SyncLog.d(getTag(), "create group start: %s", requestCloudItem.dbCloud.getFileName());
            if (requestCloudItem.dbCloud.isShareItem()) {
                SyncLog.e(getTag(), "can't create share group.");
                return GallerySyncResult.NotRetryError;
            } else if (SpaceFullHandler.getOwnerSpaceFullListener().isSpaceFull(requestCloudItem)) {
                return GallerySyncResult.NotRetryError;
            } else {
                synchronized (GalleryCloudUtils.CLOUD_URI) {
                    DBImage currentCloud = CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, this.mContext, "_id", requestCloudItem.dbCloud.getId());
                    if (currentCloud.getLocalFlag() == 0 && !TextUtils.isEmpty(currentCloud.getServerId())) {
                        SyncLog.d(getTag(), "this group already exist in server, severId: %s", currentCloud.getServerId());
                    }
                }
                return super.onPreRequest(requestItem);
            }
        }
        SyncLog.e(getTag(), "item is not instanceof RequestCloudItem.");
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        String createGroupUrl = OwnerAlbum.getCreateAlbumUrl();
        return new Builder().setMethod(2).setUrl(createGroupUrl).setPostData(new JSONObject().put("content", requestCloudItem.dbCloud.toJSONObject())).setRetryTimes(requestCloudItem.createRetryTimes).setNeedReRequest(requestCloudItem.needReRequest).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        JSONObject contentCreateJson = data.optJSONObject("content");
        if (contentCreateJson == null) {
            SyncLog.e(getTag(), "response content null");
            return;
        }
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        String serverId = contentCreateJson.getString("id");
        long serverTag = CloudUtils.getLongAttributeFromJson(contentCreateJson, nexExportFormat.TAG_FORMAT_TAG);
        ContentValues values = CloudUtils.getContentValuesForAllAndThumbNull(contentCreateJson);
        synchronized (GalleryCloudUtils.CLOUD_URI) {
            DBImage oldCloud = CloudUtils.getItemByServerID(this.mContext, serverId);
            if (!(oldCloud == null || oldCloud.getId().equals(requestCloudItem.dbCloud.getId()))) {
                SyncLog.d(getTag(), "cloud:" + requestCloudItem.dbCloud.getId() + " has the same one :" + oldCloud.getId() + " delete oldCloud, fileName:" + oldCloud.getFileName());
                CloudUtils.deleteDirty(oldCloud);
            }
            CloudUtils.reviseAttributes(values, requestCloudItem.dbCloud);
            CloudUtils.updateToLocalDBForSync(GalleryCloudUtils.CLOUD_URI, values, requestCloudItem.dbCloud);
        }
        SyncLog.d(getTag(), AlbumShareOperations.requestUrlForBarcode(serverId).toString());
        SyncLog.d(getTag(), "create group succeed and end:" + requestCloudItem.dbCloud.getFileName());
    }

    public static String localCreateBabyGroup(Context context, String fileName) {
        String id;
        SyncLog.d("LOCAL_CREATE_GROUP", "local create group start:" + fileName);
        synchronized (GalleryCloudUtils.CLOUD_URI) {
            DBCloud dbCloud = CloudUtils.getGroupByFileName(context, fileName);
            if (dbCloud != null) {
                id = dbCloud.getId();
            } else {
                id = localCreateGroup(context, null, null, fileName, true);
            }
        }
        return id;
    }

    private static String localCreateGroup(Context context, String appKey, String albumId, String fileName, boolean isBabyAlbum) {
        String lastPathSegment;
        SyncLog.d("LOCAL_CREATE_GROUP", "localCreateGroupBySpecialAppKey:" + fileName);
        synchronized (GalleryCloudUtils.CLOUD_URI) {
            ContentValues groupValue = new ContentValues();
            if (!TextUtils.isEmpty(appKey)) {
                groupValue.put("appKey", appKey);
            }
            if (!TextUtils.isEmpty(albumId)) {
                groupValue.put("serverId", albumId);
            }
            if (isBabyAlbum) {
                groupValue.put("attributes", Long.valueOf(1));
            }
            groupValue.put("fileName", fileName);
            groupValue.put("dateTaken", Long.valueOf(isBabyAlbum ? -996 : System.currentTimeMillis()));
            groupValue.put("dateModified", Long.valueOf(System.currentTimeMillis()));
            groupValue.put("serverType", Integer.valueOf(0));
            groupValue.put("localFlag", Integer.valueOf(8));
            groupValue.put("localFile", DownloadPathHelper.getFolderRelativePathInCloud(fileName));
            Uri uri = GalleryUtils.safeInsert(GalleryCloudUtils.CLOUD_URI, groupValue);
            SyncLog.d("LOCAL_CREATE_GROUP", "insert a group in local DB:" + fileName);
            SyncLog.d("LOCAL_CREATE_GROUP", "local create group end:" + fileName);
            lastPathSegment = uri.getLastPathSegment();
        }
        return lastPathSegment;
    }

    public static void recreateGroup(String localGroupId) {
        recreateGroupBySpecialAppKey(null, localGroupId);
    }

    public static void recreateGroupBySpecialAppKey(String appKey, String localGroupId) {
        ContentValues values = new ContentValues();
        values.putNull("serverId");
        values.putNull("serverTag");
        values.putNull("serverStatus");
        if (!TextUtils.isEmpty(appKey)) {
            values.put("appKey", appKey);
        }
        values.put("localFlag", Integer.valueOf(8));
        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_URI, values, "_id = '" + localGroupId + "'", null);
    }

    public static String checkFileNameValid(Context context, String fileName) {
        if (TextUtils.isEmpty(fileName)) {
            return context.getText(R.string.cloudfolder_name_cannot_empty).toString();
        }
        for (int id : new int[]{R.string.cloud_camera_display_name, R.string.cloud_screenshots_display_name, R.string.secret_album_display_name, R.string.all_video_album_display_name, R.string.pet_album_display_name}) {
            if (fileName.equalsIgnoreCase(context.getString(id))) {
                return context.getText(R.string.cloudfolder_name_reserved).toString();
            }
        }
        if (CloudControlStrategyHelper.getServerReservedAlbumNamesStrategy().containsName(fileName)) {
            return context.getText(R.string.cloudfolder_name_reserved).toString();
        }
        for (String invalidCharacter : invalidCharacters) {
            if (fileName.contains(invalidCharacter)) {
                return context.getResources().getString(R.string.cloudfolder_contain_invalidate_char, new Object[]{r6[r4]});
            }
        }
        for (String invalidStartWith : invalidStartWiths) {
            if (fileName.startsWith(invalidStartWith)) {
                return context.getResources().getString(R.string.cloudfolder_cannot_start_with, new Object[]{r6[r4]});
            }
        }
        return null;
    }
}
