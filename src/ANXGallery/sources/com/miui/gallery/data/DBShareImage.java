package com.miui.gallery.data;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UpdateHelper;
import org.json.JSONException;
import org.json.JSONObject;

public class DBShareImage extends DBImage {
    private String mShareId;

    public DBShareImage(Cursor c) {
        super(c);
    }

    public Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_IMAGE_URI;
    }

    public String getTagId() {
        return "DBShareImage" + getId();
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
        this.mUbiSubImageCount = uh.update(this.mUbiSubImageCount, c.getInt(50));
        this.mUbiFocusIndex = uh.update(this.mUbiFocusIndex, c.getInt(51));
        this.mUbiSubIndex = uh.update(this.mUbiSubIndex, c.getInt(52));
        this.mLables = uh.update(this.mLables, c.getInt(56));
        this.mEditedColumns = (String) uh.update(this.mEditedColumns, c.getString(53));
        this.mFromLocalGroupId = (String) uh.update(this.mFromLocalGroupId, c.getString(54));
        byte[] key = uh.update(this.mSecretKey, c.getBlob(55));
        if (key != null) {
            this.mSecretKey = key;
        }
        this.mSpecialTypeFlags = uh.update(this.mSpecialTypeFlags, c.getLong(60));
        return isUpdated || uh.isUpdated();
    }

    public JSONObject toJSONObject() {
        JSONObject cloudJson = super.toJSONObject();
        if (cloudJson == null) {
            cloudJson = new JSONObject();
        }
        try {
            if (!TextUtils.isEmpty(getCreatorId())) {
                cloudJson.put("creatorId", getCreatorId());
            }
            if (!TextUtils.isEmpty(getShareId())) {
                cloudJson.put("shareId", getShareId());
            }
        } catch (JSONException e) {
            Log.e("DBCloud", "toJSONObject: get JSON error");
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

    public boolean isUbiFocus() {
        return this.mUbiSubImageCount > 0;
    }
}
