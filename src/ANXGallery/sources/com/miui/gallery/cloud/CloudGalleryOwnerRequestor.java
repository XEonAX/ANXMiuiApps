package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.GalleryUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class CloudGalleryOwnerRequestor extends CloudGalleryRequestorBase {
    public CloudGalleryOwnerRequestor(Account account, CloudUrlProvider urlProvider) {
        super(account, urlProvider);
    }

    protected String getAlbumId(RequestCloudItem requestItem) {
        long groupId = requestItem.dbCloud.getGroupId();
        if (CloudTableUtils.isSystemAlbum(groupId)) {
            return String.valueOf(groupId);
        }
        String albumId = CloudUtils.getServerIdByLocalId(GalleryApp.sGetAndroidContext(), requestItem.dbCloud.getLocalGroupId(), requestItem);
        if (TextUtils.isEmpty(albumId)) {
            return null;
        }
        requestItem.dbCloud.setRequestAlbumId(albumId);
        return albumId;
    }

    protected String parseRequestId(JSONObject json, RequestCloudItem requestItem) throws JSONException {
        String requestId = json.getString("id");
        requestItem.dbCloud.setServerId(requestId);
        return requestId;
    }

    protected DBImage getItemByRequestId(String requestId, RequestCloudItem requestItem) {
        return CloudUtils.getItem(requestItem.dbCloud.getBaseUri(), GalleryApp.sGetAndroidContext(), "serverId", requestId);
    }

    protected SpaceFullListener getSpaceFullListener() {
        return SpaceFullHandler.getOwnerSpaceFullListener();
    }

    protected void connectSubUbi(RequestCloudItem remoteInfo) {
        ContentValues values = new ContentValues();
        values.put("ubiServerId", remoteInfo.dbCloud.getServerId());
        GalleryUtils.safeUpdate(GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, values, "ubiLocalId = ? ", new String[]{remoteInfo.dbCloud.getId()});
    }
}
