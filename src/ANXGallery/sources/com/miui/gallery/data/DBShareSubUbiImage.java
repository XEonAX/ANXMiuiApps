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

public class DBShareSubUbiImage extends DBImage implements SubUbiImage {
    private boolean mHasQuery;
    private String mShareId;
    private String mUbiLocalId;
    private String mUbiServerId;

    public DBShareSubUbiImage(Cursor c) {
        super(c);
    }

    public Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI;
    }

    public String getTagId() {
        return "DBShareSubUbiImage" + getId();
    }

    public boolean isShareItem() {
        return true;
    }

    public boolean reloadData(Cursor c) {
        boolean isUpdated = super.reloadData(c);
        UpdateHelper uh = new UpdateHelper();
        this.mCreatorId = (String) uh.update(this.mCreatorId, GalleryDBHelper.getCursorString(c, 45));
        this.mShareId = (String) uh.update(this.mShareId, GalleryDBHelper.getCursorString(c, 46));
        this.mDownloadFileAddTime = uh.update(this.mDownloadFileAddTime, c.getLong(48));
        this.mMixedDateTime = uh.update(this.mMixedDateTime, c.getLong(49));
        this.mUbiServerId = (String) uh.update(this.mUbiServerId, GalleryDBHelper.getCursorString(c, 50));
        this.mUbiLocalId = (String) uh.update(this.mUbiLocalId, GalleryDBHelper.getCursorString(c, 51));
        this.mUbiSubIndex = uh.update(this.mUbiSubIndex, c.getInt(52));
        byte[] key = uh.update(this.mSecretKey, c.getBlob(53));
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

    public String getShareId() {
        return this.mShareId;
    }

    public void setShareId(String mShareId) {
        this.mShareId = mShareId;
    }

    public void setRequestAlbumId(String albumId) {
        setShareAlbumId(albumId);
    }

    public String getRequestId() {
        return getShareId();
    }

    public String getAlbumId() {
        return getShareAlbumId();
    }

    public boolean isSubUbiFocus() {
        return true;
    }

    public String getUbiServerId() {
        if (TextUtils.isEmpty(this.mUbiServerId)) {
            this.mUbiServerId = UbiFocusUtils.getUbiServerIdByUbiLocalId(this.mUbiLocalId, true);
        }
        return this.mUbiServerId;
    }

    public String getUbiLocalId() {
        return this.mUbiLocalId;
    }

    public int getSubUbiImageCount() {
        if (super.getSubUbiImageCount() <= 0 && !this.mHasQuery) {
            this.mHasQuery = true;
            setSubUbiImageCount(UbiFocusUtils.getSubUbiCount(true, getRequestId(), getUbiLocalId()));
        }
        return super.getSubUbiImageCount();
    }
}
