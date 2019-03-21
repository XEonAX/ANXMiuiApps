package com.miui.gallery.cloud;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.UbiFocusUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class CopyImageToOwnerAlbum extends CopyImageBase {
    public CopyImageToOwnerAlbum(Context context) {
        super(context);
    }

    protected String getAlbumId(RequestCloudItem requestItem) {
        return CloudUtils.getServerIdByLocalId(this.mContext, requestItem.dbCloud.getLocalGroupId(), requestItem);
    }

    protected String getAlbumIdTagName() {
        return "toAlbumId";
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.CLOUD_URI;
    }

    protected SpaceFullListener getSpaceFullListener() {
        return SpaceFullHandler.getOwnerSpaceFullListener();
    }

    protected void handleSubUbiSchema(JSONObject schemaJson, String localId) throws JSONException {
        UbiFocusUtils.handleSubUbiImage(schemaJson, false, localId);
    }

    protected String getUrl(CloudUrlProvider urlProvider, String userId, String serverId, boolean isShared, RequestCloudItem requestItem) {
        boolean isToHideAlbum = CloudTableUtils.isSecretAlbum(this.mAlbumId, null);
        boolean isFromHideAlbum = false;
        if (!isShared) {
            String fromGroupId = CloudUtils.getGroupIdByPhotoLocalId(requestItem.dbCloud.getLocalImageId());
            if (TextUtils.isEmpty(fromGroupId)) {
                return null;
            }
            isFromHideAlbum = CloudTableUtils.isSecretAlbum(fromGroupId, null);
        }
        if (isShared) {
            if (!isToHideAlbum && !isFromHideAlbum) {
                return urlProvider.getCopyUrl(userId, serverId);
            }
            SyncLog.d(getTag(), "getUrl  cannot support copy share image to hide album");
            return null;
        } else if (!isToHideAlbum && !isFromHideAlbum) {
            return urlProvider.getCopyUrl(userId, serverId);
        } else {
            if (isToHideAlbum && !isFromHideAlbum) {
                return urlProvider.getHideCopyUrl(userId, serverId);
            }
            if (!isToHideAlbum && isFromHideAlbum) {
                return urlProvider.getUnhideCopyUrl(userId, serverId);
            }
            SyncLog.d(getTag(), "getUrl  only support one hide album now");
            return null;
        }
    }

    protected boolean isToShare() {
        return false;
    }
}
