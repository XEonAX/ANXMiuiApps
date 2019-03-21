package com.miui.gallery.cloud;

import android.content.ContentValues;
import android.content.Context;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.util.UbiFocusUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class MoveItemToSharerAlbum extends MoveItemBase {
    public MoveItemToSharerAlbum(Context context) {
        super(context);
    }

    protected String getAlbumId(RequestCloudItem requestItem) {
        return CloudUtils.getShareAlbumIdByLocalId(this.mContext, requestItem);
    }

    protected void appendAlbumIdParameter(ArrayList<NameValuePair> parameters) throws IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        parameters.add(new BasicNameValuePair("toSharedAlbumId", this.mAlbumId));
    }

    protected void appendValues(ContentValues values) {
        values.put("albumId", this.mAlbumId);
        values.putNull("fromLocalGroupId");
    }

    protected void handleSubUbiSchema(JSONObject schemaJson, String localId) throws JSONException {
        UbiFocusUtils.handleSubUbiImage(schemaJson, true, localId);
    }

    protected SpaceFullListener getSpaceFullListener() {
        return SpaceFullHandler.getSharerSpaceFullListener();
    }

    protected boolean isToShare() {
        return true;
    }

    protected String getUrl(CloudUrlProvider urlProvider, String userId, String serverId, RequestCloudItem requestItem) {
        return urlProvider.getMoveUrl(userId, serverId);
    }
}
