package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBShareImage;
import com.miui.gallery.util.GalleryUtils;
import com.xiaomi.opensdk.file.model.CommitParameter;
import com.xiaomi.opensdk.file.model.RequestUploadParameter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class CloudGallerySharerRequestor extends CloudGalleryRequestorBase {
    public CloudGallerySharerRequestor(Account account, CloudUrlProvider urlProvider) {
        super(account, urlProvider);
    }

    protected String getAlbumId(RequestCloudItem requestItem) {
        long groupId = requestItem.dbCloud.getGroupId();
        if (CloudTableUtils.isSystemAlbum(groupId)) {
            return String.valueOf(groupId);
        }
        String albumId = CloudUtils.getShareAlbumIdByLocalId(GalleryApp.sGetAndroidContext(), requestItem);
        if (TextUtils.isEmpty(albumId)) {
            return null;
        }
        requestItem.dbCloud.setRequestAlbumId(albumId);
        return albumId;
    }

    protected String parseRequestId(JSONObject json, RequestCloudItem requestItem) throws JSONException {
        String requestId = json.getString("shareId");
        requestItem.dbCloud.setShareId(requestId);
        return requestId;
    }

    protected DBImage getItemByRequestId(String requestId, RequestCloudItem requestItem) {
        return CloudUtils.getItem(requestItem.dbCloud.getBaseUri(), GalleryApp.sGetAndroidContext(), "shareId", requestId);
    }

    protected void putAlbumIdInValues(RequestCloudItem requestItem, JSONObject schemaJson, ContentValues values) {
        if (!TextUtils.isEmpty(requestItem.dbCloud.getShareAlbumId())) {
            values.put("albumId", requestItem.dbCloud.getShareAlbumId());
        }
    }

    protected SpaceFullListener getSpaceFullListener() {
        return SpaceFullHandler.getSharerSpaceFullListener();
    }

    protected void connectSubUbi(RequestCloudItem remoteInfo) {
        ContentValues values = new ContentValues();
        values.put("ubiServerId", ((DBShareImage) remoteInfo.dbCloud).getShareId());
        GalleryUtils.safeUpdate(GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI, values, "ubiLocalId = ? ", new String[]{remoteInfo.dbCloud.getId()});
    }

    protected Map<String, String> getCommitUploadParams(RequestCloudItem remoteInfo, CommitParameter commitParameter) throws JSONException {
        Map<String, String> parameters = super.getCommitUploadParams(remoteInfo, commitParameter);
        if (parameters == null) {
            parameters = new HashMap();
        }
        if (remoteInfo.dbCloud.isSubUbiFocus()) {
            parameters.put("sharedGalleryId", remoteInfo.dbCloud.getUbiServerId());
        } else {
            parameters.put("sharedGalleryId", commitParameter.getUploadId());
        }
        return parameters;
    }

    protected Map<String, String> getRequestUploadParams(RequestCloudItem remoteInfo, RequestUploadParameter requestUploadParameter) throws JSONException {
        Map<String, String> parameters = super.getRequestUploadParams(remoteInfo, requestUploadParameter);
        if (parameters == null) {
            parameters = new HashMap();
        }
        if (remoteInfo.dbCloud.isSubUbiFocus()) {
            parameters.put("sharedGalleryId", remoteInfo.dbCloud.getUbiServerId());
        } else {
            parameters.put("sharedAlbumId", getAlbumId(remoteInfo));
        }
        return parameters;
    }

    protected Map<String, String> getRequestDownloadParams(RequestCloudItem remoteInfo) {
        Map<String, String> parameters = super.getRequestDownloadParams(remoteInfo);
        if (parameters == null) {
            parameters = new HashMap();
        }
        parameters.put("sharedGalleryId", remoteInfo.dbCloud.getRequestId());
        return parameters;
    }
}
