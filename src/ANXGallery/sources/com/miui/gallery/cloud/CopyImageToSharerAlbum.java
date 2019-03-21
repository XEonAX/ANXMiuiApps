package com.miui.gallery.cloud;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.util.UbiFocusUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class CopyImageToSharerAlbum extends CopyImageBase {
    public CopyImageToSharerAlbum(Context context) {
        super(context);
    }

    protected String getAlbumId(RequestCloudItem requestItem) {
        return CloudUtils.getShareAlbumIdByLocalId(this.mContext, requestItem);
    }

    protected String getAlbumIdTagName() {
        return "toSharedAlbumId";
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_IMAGE_URI;
    }

    protected void appendValues(ContentValues values) {
        values.put("albumId", this.mAlbumId);
    }

    protected SpaceFullListener getSpaceFullListener() {
        return SpaceFullHandler.getSharerSpaceFullListener();
    }

    protected void handleSubUbiSchema(JSONObject schemaJson, String localId) throws JSONException {
        UbiFocusUtils.handleSubUbiImage(schemaJson, true, localId);
    }

    protected String getUrl(CloudUrlProvider urlProvider, String userId, String serverId, boolean isShared, RequestCloudItem requestItem) {
        return urlProvider.getCopyUrl(userId, serverId);
    }

    protected boolean isToShare() {
        return true;
    }
}
