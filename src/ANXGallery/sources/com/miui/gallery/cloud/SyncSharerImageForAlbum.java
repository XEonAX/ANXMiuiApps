package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import com.miui.gallery.cloud.download.BatchDownloadManager;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.UbiFocusUtils;
import com.miui.gallery.util.baby.SendNotificationUtilForSharedBabyAlbum;
import com.miui.gallery.util.deprecated.Preference;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public final class SyncSharerImageForAlbum extends SyncCloudBase {
    private final String mShareAlbumId;

    public SyncSharerImageForAlbum(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken, String shareAlbumId) {
        super(mContext, mAccount, mExtendedAuthToken);
        this.mShareAlbumId = shareAlbumId;
    }

    protected ArrayList<SyncTagItem> getSyncTagList() {
        ArrayList<SyncTagItem> syncTagList = new ArrayList();
        syncTagList.add(new SyncTagItem(8));
        return syncTagList;
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_IMAGE_URI;
    }

    protected String getTagColumnName() {
        return "serverTag";
    }

    protected String getSyncUrl() {
        return SyncPull.getPullShareAlbumImage();
    }

    protected void appendParams(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> syncTagList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        super.appendParams(params, syncTagList);
        params.add(new BasicNameValuePair("sharedAlbumId", this.mShareAlbumId));
    }

    protected String getSyncTagSelection() {
        return "albumId = '" + this.mShareAlbumId + "'";
    }

    protected DBImage getItem(String id) {
        return CloudUtils.getItem(GalleryCloudUtils.SHARE_IMAGE_URI, this.mContext, "serverId", id);
    }

    protected List<DBImage> getCandidateItemsInAGroup(String fileName, String sha1, String localGroupId) {
        return CloudUtils.getCandidateItemsInAGroup(this.mContext, fileName, sha1, localGroupId, true);
    }

    protected String handleNewImage(ContentValues values, String serverId, String status, JSONObject schemaJson) {
        String id = null;
        if (status.equals("custom")) {
            values.put("albumId", this.mShareAlbumId);
            id = super.handleNewImage(values, serverId, status, schemaJson);
            if (values.getAsLong("serverTag") == null) {
                SyncLog.e("SyncSharerImageForAlbum", "server tag should not be null");
            }
        }
        return id;
    }

    protected void onNewImageSynced(ContentValues values, String insertedId) {
        Long flag = values.getAsLong("serverTag");
        if (flag == null) {
            SyncLog.e("SyncSharerImageForAlbum", "server tag should not be null");
        } else if (Preference.sIsFirstSynced()) {
            if (!isCreatedByMySelf(values) && belong2BabyAlbum(values, true)) {
                DBShareAlbum album = CloudUtils.getDBShareAlbumBySharedId(this.mShareAlbumId);
                if (album != null) {
                    SendNotificationUtilForSharedBabyAlbum.getInstance().sendNotification(this.mShareAlbumId, Long.parseLong(album.getId()), album.getFileName(), true, flag.longValue());
                }
            }
            if (Sync.isAutoDownload() && CloudControlStrategyHelper.getSyncStrategy().isAutoDownloadShare()) {
                BatchDownloadManager.getInstance().download(ContentUris.withAppendedId(ShareImage.SHARE_URI, Long.parseLong(insertedId)));
            }
        }
    }

    protected boolean isCreatedByMySelf(ContentValues values) {
        String creatorId = values.getAsString("creatorId");
        if (TextUtils.isEmpty(creatorId) || !this.mAccount.name.equalsIgnoreCase(creatorId)) {
            return false;
        }
        return true;
    }

    protected void handleUbiSubImage(JSONObject schemaJson, String ubiLocalId) throws JSONException {
        UbiFocusUtils.handleSubUbiImage(schemaJson, true, ubiLocalId);
    }

    protected String getLocalGroupId(ContentValues values) {
        return CloudUtils.getLocalGroupIdForSharerAlbum(this.mShareAlbumId);
    }

    protected void updateLocalGroupIdInGroup(String localId, ContentValues groupItemValues) {
    }
}
