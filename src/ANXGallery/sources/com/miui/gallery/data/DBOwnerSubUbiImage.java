package com.miui.gallery.data;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.data.DBImage.SubUbiImage;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.UbiFocusUtils;
import com.miui.gallery.util.UpdateHelper;
import org.json.JSONObject;

public class DBOwnerSubUbiImage extends DBImage implements SubUbiImage {
    private boolean mHasQuery;
    private String mUbiLocalId;
    private String mUbiServerId;

    public DBOwnerSubUbiImage(Cursor c) {
        super(c);
    }

    public Uri getBaseUri() {
        return GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI;
    }

    public String getTagId() {
        return "DBOwnerSubUbiImage" + getId();
    }

    public boolean isShareItem() {
        return false;
    }

    public boolean reloadData(Cursor c) {
        boolean isUpdated = super.reloadData(c);
        UpdateHelper uh = new UpdateHelper();
        this.mDownloadFileAddTime = uh.update(this.mDownloadFileAddTime, c.getLong(46));
        this.mMixedDateTime = uh.update(this.mMixedDateTime, c.getLong(47));
        this.mUbiServerId = (String) uh.update(this.mUbiServerId, GalleryDBHelper.getCursorString(c, 48));
        this.mUbiLocalId = (String) uh.update(this.mUbiLocalId, GalleryDBHelper.getCursorString(c, 49));
        this.mUbiSubIndex = uh.update(this.mUbiSubIndex, c.getInt(50));
        byte[] key = uh.update(this.mSecretKey, c.getBlob(51));
        if (key != null) {
            this.mSecretKey = key;
        }
        return isUpdated || uh.isUpdated();
    }

    public JSONObject toJSONObject() {
        JSONObject cloudJson = super.toJSONObject();
        if (cloudJson == null) {
            return new JSONObject();
        }
        return cloudJson;
    }

    public String getRequestId() {
        return getUbiServerId();
    }

    public String getAlbumId() {
        return String.valueOf(getGroupId());
    }

    public void setRequestAlbumId(String albumId) {
        setGroupId(Long.valueOf(albumId).longValue());
    }

    public boolean isSubUbiFocus() {
        return true;
    }

    public String getUbiServerId() {
        if (TextUtils.isEmpty(this.mUbiServerId)) {
            this.mUbiServerId = UbiFocusUtils.getUbiServerIdByUbiLocalId(this.mUbiLocalId, false);
        }
        return this.mUbiServerId;
    }

    public String getUbiLocalId() {
        return this.mUbiLocalId;
    }

    public int getSubUbiImageCount() {
        if (super.getSubUbiImageCount() <= 0 && !this.mHasQuery) {
            this.mHasQuery = true;
            setSubUbiImageCount(UbiFocusUtils.getSubUbiCount(false, getRequestId(), getUbiLocalId()));
        }
        return super.getSubUbiImageCount();
    }
}
