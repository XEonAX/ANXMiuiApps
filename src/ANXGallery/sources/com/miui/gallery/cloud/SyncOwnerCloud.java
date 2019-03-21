package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.download.BatchDownloadManager;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Favorites;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.UbiFocusUtils;
import com.miui.gallery.util.baby.SendNotificationUtilForSharedBabyAlbum;
import com.miui.gallery.util.deprecated.Preference;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class SyncOwnerCloud extends SyncCloudBase {
    public SyncOwnerCloud(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        super(mContext, mAccount, mExtendedAuthToken);
    }

    protected DBImage getItem(String id) {
        return CloudUtils.getItemByServerID(this.mContext, id);
    }

    protected List<DBImage> getCandidateItemsInAGroup(String fileName, String sha1, String localGroupId) {
        return CloudUtils.getCandidateItemsInAGroup(this.mContext, fileName, sha1, localGroupId, false);
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.CLOUD_URI;
    }

    protected String getTagColumnName() {
        return "serverTag";
    }

    protected ArrayList<SyncTagItem> getSyncTagList() {
        ArrayList<SyncTagItem> syncTagList = new ArrayList();
        syncTagList.add(new SyncTagItem(1));
        return syncTagList;
    }

    protected boolean isCreatedByMySelf(ContentValues values) {
        String creatorId = values.getAsString("creatorId");
        if (TextUtils.isEmpty(creatorId) || this.mAccount.name.equalsIgnoreCase(creatorId)) {
            return true;
        }
        return false;
    }

    protected String getSyncTagSelection() {
        return GalleryCloudSyncTagUtils.getAccountSelections(this.mAccount);
    }

    protected void handleUbiSubImage(JSONObject schemaJson, String ubiLocalId) throws JSONException {
        UbiFocusUtils.handleSubUbiImage(schemaJson, false, ubiLocalId);
    }

    protected void handleFavoriteInfo(JSONObject schemaJson, String sha1) throws JSONException {
        if (schemaJson.has("isFavorite")) {
            int i;
            boolean isFavorite = schemaJson.getBoolean("isFavorite");
            Boolean exists = (Boolean) GalleryUtils.safeQuery(Favorites.URI, new String[]{"_id"}, "sha1 = ?", new String[]{sha1}, null, new QueryHandler<Boolean>() {
                public Boolean handle(Cursor cursor) {
                    boolean z = cursor != null && cursor.getCount() > 0;
                    return Boolean.valueOf(z);
                }
            });
            ContentValues values = new ContentValues();
            String str = "isFavorite";
            if (isFavorite) {
                i = 1;
            } else {
                i = 0;
            }
            values.put(str, Integer.valueOf(i));
            if (exists != null && exists.booleanValue()) {
                GalleryUtils.safeUpdate(Favorites.DELAY_NOTIFY_URI, values, "sha1 = ?", new String[]{sha1});
            } else if (isFavorite) {
                values.put("sha1", sha1);
                values.put("dateFavorite", Long.valueOf(System.currentTimeMillis()));
                values.put("source", Integer.valueOf(1));
                GalleryUtils.safeInsert(Favorites.DELAY_NOTIFY_URI, values);
            }
        }
    }

    protected String getLocalGroupId(ContentValues values) {
        String serverId = values.getAsString("groupId");
        DBImage dbImage = CloudUtils.getItemByServerID(this.mContext, serverId);
        if (dbImage == null && CloudTableUtils.isGroupWithoutRecord(Long.valueOf(serverId).longValue())) {
            return String.valueOf(CloudTableUtils.getCloudIdForGroupWithoutRecord(Long.valueOf(serverId).longValue()));
        }
        if (dbImage == null) {
            Uri uri = null;
            if (CloudTableUtils.isCameraGroup(serverId)) {
                uri = GalleryUtils.safeInsert(GalleryCloudUtils.CLOUD_URI, CloudUtils.getCameraRecordValues());
            } else if (CloudTableUtils.isScreenshotGroup(serverId)) {
                uri = GalleryUtils.safeInsert(GalleryCloudUtils.CLOUD_URI, CloudUtils.getScreenshotsRecordValues());
            }
            if (uri != null) {
                long id = ContentUris.parseId(uri);
                if (id > 0) {
                    Map<String, String> params = new HashMap();
                    params.put("serverId", serverId);
                    BaseSamplingStatHelper.recordCountEvent("Sync", "sync_try_insert_system_album", params);
                    return String.valueOf(id);
                }
            }
        }
        return dbImage == null ? null : dbImage.getId();
    }

    protected void updateLocalGroupIdInGroup(String localId, ContentValues groupItemValues) {
        CloudUtils.updateLocalGroupIdInGroup(getBaseUri(), groupItemValues.getAsString("serverId"), localId, "groupId");
    }

    protected void onNewImageSynced(ContentValues values, String insertedId) {
        Long flag = values.getAsLong("serverTag");
        if (flag == null) {
            SyncLog.e("SyncOwnerCloud", "server tag should not be null");
        } else if (Preference.sIsFirstSynced()) {
            if (!isCreatedByMySelf(values)) {
                String albumId = values.getAsString("groupId");
                if (belong2BabyAlbum(values, false)) {
                    DBImage album = CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, this.mContext, "serverId", albumId);
                    if (album != null) {
                        SendNotificationUtilForSharedBabyAlbum.getInstance().sendNotification(albumId, Long.parseLong(album.getId()), album.getFileName(), false, flag.longValue());
                    }
                }
            }
            if (Sync.isAutoDownload()) {
                BatchDownloadManager.getInstance().download(ContentUris.withAppendedId(Cloud.CLOUD_URI, Long.parseLong(insertedId)));
            }
        }
    }

    protected void appendParams(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> syncTagList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        super.appendParams(params, syncTagList);
        params.add(new BasicNameValuePair("returnSystemAlbum", String.valueOf(true)));
    }
}
