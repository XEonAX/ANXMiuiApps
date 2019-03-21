package com.miui.gallery.data;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.ThumbnailInfo;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UpdateHelper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DBCloud extends DBImage {
    private String mAddress;
    private boolean mCanModified;
    protected String mExtraGps;
    private boolean mIsPublic;
    private String mOriginFileName;
    private String mOriginSha1;
    private String mPublicUrl;
    private String mShareUrl;
    private String mThumbnailInfo;

    public DBCloud(String serverId) {
        super(serverId);
    }

    public DBCloud(Cursor c) {
        super(c);
    }

    public Uri getBaseUri() {
        return GalleryCloudUtils.CLOUD_URI;
    }

    public String getTagId() {
        return "DBCloud" + getId();
    }

    public boolean reloadData(Cursor c) {
        boolean z;
        boolean isUpdated = super.reloadData(c);
        UpdateHelper uh = new UpdateHelper();
        this.mCanModified = uh.update(this.mCanModified ? 1 : 0, c.getInt(45)) == 1;
        this.mShareUrl = (String) uh.update(this.mShareUrl, GalleryDBHelper.getCursorString(c, 46));
        this.mCreatorId = (String) uh.update(this.mCreatorId, GalleryDBHelper.getCursorString(c, 50));
        if (uh.update(this.mIsPublic ? 1 : 0, c.getInt(51)) == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsPublic = z;
        this.mPublicUrl = (String) uh.update(this.mPublicUrl, GalleryDBHelper.getCursorString(c, 52));
        this.mDownloadFileAddTime = uh.update(this.mDownloadFileAddTime, c.getLong(54));
        this.mMixedDateTime = uh.update(this.mMixedDateTime, c.getLong(55));
        this.mUbiSubImageCount = uh.update(this.mUbiSubImageCount, c.getInt(56));
        this.mUbiFocusIndex = uh.update(this.mUbiFocusIndex, c.getInt(57));
        this.mUbiSubIndex = uh.update(this.mUbiSubIndex, c.getInt(58));
        this.mLables = uh.update(this.mLables, c.getInt(65));
        this.mEditedColumns = (String) uh.update(this.mEditedColumns, c.getString(59));
        this.mFromLocalGroupId = (String) uh.update(this.mFromLocalGroupId, c.getString(60));
        byte[] key = uh.update(this.mSecretKey, c.getBlob(61));
        if (key != null) {
            this.mSecretKey = key;
        }
        this.mAppKey = (String) uh.update(this.mAppKey, c.getString(62));
        this.mBabyInfoJson = (String) uh.update(this.mBabyInfoJson, GalleryDBHelper.getCursorString(c, 63));
        this.mPeopleFaceId = (String) uh.update(this.mPeopleFaceId, GalleryDBHelper.getCursorString(c, 64));
        this.mThumbnailInfo = (String) uh.update(this.mThumbnailInfo, GalleryDBHelper.getCursorString(c, 66));
        this.mAttributes = uh.update(this.mAttributes, c.getLong(68));
        this.mAddress = (String) uh.update(this.mAddress, c.getString(70));
        this.mExtraGps = (String) uh.update(this.mExtraGps, c.getString(69));
        this.mSpecialTypeFlags = uh.update(this.mSpecialTypeFlags, c.getLong(71));
        try {
            if (!TextUtils.isEmpty(this.mAddress)) {
                boolean isAccurate = TextUtils.isEmpty(this.mExtraGps);
                String gps = this.mExtraGps;
                if (isAccurate) {
                    gps = LocationManager.formatExifGpsString(this.mLatitudeStr, this.mLongitudeStr, this.mLatitudeStrRef, this.mLongitudeStrRef);
                }
                this.mGeoInfo.put("isAccurate", isAccurate);
                this.mGeoInfo.put("gps", gps);
                String addressJson = null;
                try {
                    JSONArray array = new JSONArray(this.mAddress);
                    this.mGeoInfo.put("addressList", array);
                    if (array.length() > 0) {
                        addressJson = array.optString(0);
                    }
                } catch (Exception e) {
                    addressJson = this.mAddress;
                }
                if (!TextUtils.isEmpty(addressJson)) {
                    try {
                        this.mGeoInfo.put("address", new JSONObject(addressJson));
                    } catch (Exception e2) {
                        Log.w("DBCloud", "Failed to convert Address info, %s", e2);
                    }
                }
            }
        } catch (JSONException e3) {
            Log.e("DBCloud", "DBCloud(Cursor c): put JSON error");
        }
        if (!TextUtils.isEmpty(getSha1())) {
            Boolean isFavorite = (Boolean) GalleryUtils.safeQuery("favorites", new String[]{"isFavorite"}, "sha1 = ?", new String[]{getSha1()}, null, new QueryHandler<Boolean>() {
                public Boolean handle(Cursor cursor) {
                    boolean z = false;
                    if (cursor != null && cursor.moveToFirst() && cursor.getInt(0) > 0) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                }
            });
            Object valueOf = Boolean.valueOf(this.mIsFavorite);
            z = isFavorite != null && isFavorite.booleanValue();
            this.mIsFavorite = ((Boolean) uh.update(valueOf, Boolean.valueOf(z))).booleanValue();
        }
        if (isUpdated || uh.isUpdated()) {
            return true;
        }
        return false;
    }

    public JSONObject toJSONObject() {
        JSONObject cloudJson = super.toJSONObject();
        if (cloudJson == null) {
            return new JSONObject();
        }
        return cloudJson;
    }

    protected void getBasicValues(JSONObject cloudJson) throws JSONException {
        super.getBasicValues(cloudJson);
        if (!(getServerType() != 0 || TextUtils.isEmpty(this.mThumbnailInfo) || TextUtils.isEmpty(getThumbnailInfo().getFaceId()))) {
            cloudJson.put("faceId", getThumbnailInfo().getFaceId());
        }
        if (getServerType() == 1 || getServerType() == 2) {
            cloudJson.put("isFavorite", isFavorite());
        }
    }

    public String getShareUrl() {
        return this.mShareUrl;
    }

    public void setRequestAlbumId(String albumId) {
        setGroupId(Long.valueOf(albumId).longValue());
    }

    public boolean isPublic() {
        return this.mIsPublic;
    }

    public String getPublicUrl() {
        return this.mPublicUrl;
    }

    public String getRequestId() {
        return getServerId();
    }

    public String getAlbumId() {
        return String.valueOf(getGroupId());
    }

    public boolean isUbiFocus() {
        return this.mUbiSubImageCount > 0;
    }

    public ThumbnailInfo getThumbnailInfo() {
        return new ThumbnailInfo(Integer.valueOf(getId()).intValue(), false, this.mThumbnailInfo);
    }

    public void setOriginInfo(String originSha1, String originFileName) {
        this.mOriginSha1 = originSha1;
        this.mOriginFileName = originFileName;
    }

    public String getOriginSha1() {
        return this.mOriginSha1;
    }
}
