package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public final class SyncOwnerUserForAlbum extends SyncUserBase {
    public SyncOwnerUserForAlbum(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken, String serverId) {
        super(mContext, mAccount, mExtendedAuthToken, serverId);
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.CLOUD_USER_URI;
    }

    protected String getTagColumnName() {
        return "serverTag";
    }

    protected ArrayList<SyncTagItem> getSyncTagList() {
        ArrayList<SyncTagItem> syncTagList = new ArrayList();
        syncTagList.add(new SyncTagItem(10));
        return syncTagList;
    }

    protected String getSyncUrl() {
        return SyncPull.getPullOwnerShareUserUrl(this.mAlbumId);
    }

    protected final boolean handleDataJson(JSONObject dataJson) throws JSONException {
        return addUsers(dataJson);
    }

    protected String getSyncTagSelection() {
        return "albumId = '" + this.mAlbumId + "'";
    }
}
