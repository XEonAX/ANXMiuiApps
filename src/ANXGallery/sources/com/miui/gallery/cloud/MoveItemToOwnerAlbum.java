package com.miui.gallery.cloud;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.UbiFocusUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class MoveItemToOwnerAlbum extends MoveItemBase {
    public MoveItemToOwnerAlbum(Context context) {
        super(context);
    }

    protected String getAlbumId(RequestCloudItem requestItem) {
        return CloudUtils.getServerIdByLocalId(this.mContext, requestItem.dbCloud.getLocalGroupId(), requestItem);
    }

    protected void appendAlbumIdParameter(ArrayList<NameValuePair> parameters) throws IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        parameters.add(new BasicNameValuePair("toAlbumId", this.mAlbumId));
    }

    protected void handleSubUbiSchema(JSONObject schemaJson, String localId) throws JSONException {
        UbiFocusUtils.handleSubUbiImage(schemaJson, false, localId);
    }

    protected SpaceFullListener getSpaceFullListener() {
        return SpaceFullHandler.getOwnerSpaceFullListener();
    }

    protected boolean isToShare() {
        return false;
    }

    protected void appendValues(ContentValues values) {
        values.putNull("fromLocalGroupId");
    }

    protected String getUrl(CloudUrlProvider urlProvider, String userId, String serverId, RequestCloudItem requestItem) {
        boolean isToHideAlbum = CloudTableUtils.isSecretAlbum(this.mAlbumId, null);
        String fromLocalGroupId = requestItem.dbCloud.getFromLocalGroupId();
        if (TextUtils.isEmpty(fromLocalGroupId)) {
            SyncLog.d("MoveItemToOwnerAlbum", "getUrl  fromLocalGroupId does not exist");
            return urlProvider.getMoveUrl(userId, serverId);
        }
        boolean isFromHideAlbum = CloudTableUtils.isSecretAlbum(null, fromLocalGroupId);
        if (!isToHideAlbum && !isFromHideAlbum) {
            return urlProvider.getMoveUrl(userId, serverId);
        }
        if (isToHideAlbum || !isFromHideAlbum) {
            return urlProvider.getHideMoveUrl(userId, serverId);
        }
        return urlProvider.getUnHideMoveUrl(userId, serverId);
    }
}
