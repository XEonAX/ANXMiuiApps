package com.miui.gallery.data;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudTableUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CloudUtils.SecretAlbumUtils;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.GalleryAes;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UpdateHelper;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.ArrayList;
import java.util.Iterator;
import miui.os.ExtraFileUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class DBImage implements DBItem {
    public static final ArrayList<ExifDataConst> sExifDataConst = new ArrayList();
    private static final Object sSecretKeyLock = new Object();
    protected String mAppKey;
    protected long mAttributes;
    protected String mBabyInfoJson;
    protected String mCreatorId;
    private long mDateModified;
    private long mDatetaken;
    private String mDescription;
    @Deprecated
    private String mDownloadFile;
    protected long mDownloadFileAddTime;
    private int mDuration;
    protected String mEditedColumns;
    private JSONObject mExifInfo = new JSONObject();
    private String mFileName;
    protected String mFromLocalGroupId;
    protected JSONObject mGeoInfo = new JSONObject();
    private long mGroupId;
    private String mId;
    protected boolean mIsFavorite;
    protected int mLables;
    protected String mLatitudeStr;
    protected String mLatitudeStrRef;
    private String mLocalFile;
    private int mLocalFlag;
    private String mLocalGroupId;
    private String mLocalImageId;
    protected String mLongitudeStr;
    protected String mLongitudeStrRef;
    private String mMicroThumbFile;
    private String mMimeType;
    protected long mMixedDateTime;
    protected String mPeopleFaceId;
    protected byte[] mSecretKey;
    private String mServerId;
    private String mServerStatus;
    private long mServerTag;
    private int mServerType;
    private String mSha1;
    private String mShareAlbumId;
    private long mSize;
    protected long mSpecialTypeFlags;
    private String mThumbnailFile;
    private String mTitle;
    protected int mUbiFocusIndex;
    protected int mUbiSubImageCount;
    protected int mUbiSubIndex;

    public static class ExifDataConst {
        public final String cloudTagName;
        public final int columnIndex;
        public final String exifTagName;
        public final int exifValueType;

        public ExifDataConst(int columnIndex, String cloudTagName, String exifTagName, int exifValueType) {
            this.columnIndex = columnIndex;
            this.cloudTagName = cloudTagName;
            this.exifTagName = exifTagName;
            this.exifValueType = exifValueType;
        }
    }

    public interface SubUbiImage {
        String getUbiLocalId();
    }

    public abstract String getAlbumId();

    public abstract Uri getBaseUri();

    public abstract String getRequestId();

    public abstract String getTagId();

    public abstract void setRequestAlbumId(String str);

    static {
        sExifDataConst.add(new ExifDataConst(14, "imageWidth", "ImageWidth", 0));
        sExifDataConst.add(new ExifDataConst(15, "imageLength", "ImageLength", 0));
        sExifDataConst.add(new ExifDataConst(16, "orientation", "Orientation", 0));
        sExifDataConst.add(new ExifDataConst(17, "GPSLatitude", "GPSLatitude", 1));
        sExifDataConst.add(new ExifDataConst(18, "GPSLongitude", "GPSLongitude", 1));
        sExifDataConst.add(new ExifDataConst(19, "make", "Make", 1));
        sExifDataConst.add(new ExifDataConst(20, "model", "Model", 1));
        sExifDataConst.add(new ExifDataConst(21, "flash", "Flash", 0));
        sExifDataConst.add(new ExifDataConst(22, "GPSLatitudeRef", "GPSLatitudeRef", 1));
        sExifDataConst.add(new ExifDataConst(23, "GPSLongitudeRef", "GPSLongitudeRef", 1));
        sExifDataConst.add(new ExifDataConst(24, "exposureTime", "ExposureTime", 1));
        sExifDataConst.add(new ExifDataConst(25, "FNumber", "FNumber", 1));
        sExifDataConst.add(new ExifDataConst(26, "ISOSpeedRatings", "ISOSpeedRatings", 1));
        sExifDataConst.add(new ExifDataConst(27, "GPSAltitude", "GPSAltitude", 1));
        sExifDataConst.add(new ExifDataConst(28, "GPSAltitudeRef", "GPSAltitudeRef", 0));
        sExifDataConst.add(new ExifDataConst(29, "GPSTimeStamp", "GPSTimeStamp", 1));
        sExifDataConst.add(new ExifDataConst(30, "GPSDateStamp", "GPSDateStamp", 1));
        sExifDataConst.add(new ExifDataConst(31, "whiteBalance", "WhiteBalance", 0));
        sExifDataConst.add(new ExifDataConst(32, "focalLength", "FocalLength", 1));
        sExifDataConst.add(new ExifDataConst(33, "GPSProcessingMethod", "GPSProcessingMethod", 1));
        sExifDataConst.add(new ExifDataConst(34, "dateTime", "DateTime", 1));
    }

    public DBImage(String serverId) {
        this.mServerId = serverId;
    }

    public DBImage(Cursor c) {
        reloadData(c);
    }

    public boolean reloadData(Cursor c) {
        boolean isUpdated = false;
        UpdateHelper uh = new UpdateHelper();
        this.mId = (String) uh.update(this.mId, GalleryDBHelper.getCursorString(c, 0));
        this.mGroupId = uh.update(this.mGroupId, c.getLong(1));
        this.mSize = uh.update(this.mSize, c.getLong(2));
        this.mDateModified = uh.update(this.mDateModified, c.getLong(3));
        this.mMimeType = (String) uh.update(this.mMimeType, GalleryDBHelper.getCursorString(c, 4));
        this.mTitle = (String) uh.update(this.mTitle, GalleryDBHelper.getCursorString(c, 5));
        this.mDescription = (String) uh.update(this.mDescription, GalleryDBHelper.getCursorString(c, 6));
        this.mFileName = (String) uh.update(this.mFileName, GalleryDBHelper.getCursorString(c, 7));
        this.mDatetaken = uh.update(this.mDatetaken, c.getLong(8));
        this.mDuration = uh.update(this.mDuration, c.getInt(9));
        this.mServerId = (String) uh.update(this.mServerId, GalleryDBHelper.getCursorString(c, 10));
        this.mServerType = uh.update(this.mServerType, c.getInt(11));
        this.mServerTag = uh.update(this.mServerTag, c.getLong(13));
        this.mServerStatus = (String) uh.update(this.mServerStatus, GalleryDBHelper.getCursorString(c, 12));
        this.mLocalFlag = uh.update(this.mLocalFlag, c.getInt(35));
        this.mThumbnailFile = (String) uh.update(this.mThumbnailFile, GalleryDBHelper.getCursorString(c, 36));
        this.mDownloadFile = (String) uh.update(this.mDownloadFile, GalleryDBHelper.getCursorString(c, 37));
        this.mMicroThumbFile = (String) uh.update(this.mMicroThumbFile, GalleryDBHelper.getCursorString(c, 41));
        this.mLocalFile = (String) uh.update(this.mLocalFile, GalleryDBHelper.getCursorString(c, 38));
        this.mSha1 = (String) uh.update(this.mSha1, GalleryDBHelper.getCursorString(c, 39));
        this.mLocalGroupId = (String) uh.update(this.mLocalGroupId, GalleryDBHelper.getCursorString(c, 42));
        this.mLocalImageId = (String) uh.update(this.mLocalImageId, GalleryDBHelper.getCursorString(c, 43));
        this.mShareAlbumId = (String) uh.update(this.mShareAlbumId, GalleryDBHelper.getCursorString(c, 44));
        this.mLongitudeStr = (String) uh.update(this.mLongitudeStr, c.getString(18));
        this.mLatitudeStr = (String) uh.update(this.mLatitudeStr, c.getString(17));
        this.mLongitudeStrRef = (String) uh.update(this.mLongitudeStrRef, c.getString(23));
        this.mLatitudeStrRef = (String) uh.update(this.mLatitudeStrRef, c.getString(22));
        try {
            Iterator it = sExifDataConst.iterator();
            while (it.hasNext()) {
                ExifDataConst exifDataConst = (ExifDataConst) it.next();
                switch (exifDataConst.exifValueType) {
                    case 0:
                        if (c.isNull(exifDataConst.columnIndex)) {
                            if (!this.mExifInfo.has(exifDataConst.cloudTagName)) {
                                break;
                            }
                            isUpdated = true;
                            this.mExifInfo.put(exifDataConst.cloudTagName, null);
                            break;
                        }
                        int intValue = c.getInt(exifDataConst.columnIndex);
                        if (this.mExifInfo.has(exifDataConst.cloudTagName)) {
                            intValue = uh.update(this.mExifInfo.getInt(exifDataConst.cloudTagName), intValue);
                        } else {
                            isUpdated = true;
                        }
                        this.mExifInfo.put(exifDataConst.cloudTagName, intValue);
                        break;
                    case 1:
                        String stringValue = c.getString(exifDataConst.columnIndex);
                        if (stringValue == null) {
                            if (!this.mExifInfo.has(exifDataConst.cloudTagName)) {
                                break;
                            }
                            isUpdated = true;
                            this.mExifInfo.put(exifDataConst.cloudTagName, null);
                            break;
                        }
                        if (this.mExifInfo.has(exifDataConst.cloudTagName)) {
                            stringValue = (String) uh.update(this.mExifInfo.getString(exifDataConst.cloudTagName), (Object) stringValue);
                        } else {
                            isUpdated = true;
                        }
                        this.mExifInfo.put(exifDataConst.cloudTagName, stringValue);
                        break;
                    default:
                        Log.e("DBImage", "exifDataConst.exifValueType is wrong: " + exifDataConst.exifValueType);
                        break;
                }
            }
        } catch (JSONException e) {
            Log.e("DBCloud", "DBCloud(Cursor c): put JSON error");
        }
        if (isUpdated || uh.isUpdated()) {
            return true;
        }
        return false;
    }

    public JSONObject toJSONObject() {
        JSONObject cloudJson = new JSONObject();
        try {
            getBasicValues(cloudJson);
            if (getGroupId() != 0) {
                cloudJson.put("groupId", getGroupId());
            }
            if (!TextUtils.isEmpty(getServerId())) {
                cloudJson.put("id", getServerId());
            }
            if (!TextUtils.isEmpty(getServerStatus())) {
                cloudJson.put("status", getServerStatus());
            }
            if (getServerTag() != 0) {
                cloudJson.put(nexExportFormat.TAG_FORMAT_TAG, getServerTag());
            }
            if (this.mUbiSubImageCount > 0) {
                cloudJson.put("ubiSubImageCount", this.mUbiSubImageCount);
                cloudJson.put("currentFocusIndex", this.mUbiFocusIndex);
                cloudJson.put("ubiDefaultIndex", this.mUbiSubIndex);
            }
            if (!TextUtils.isEmpty(getOriginSha1())) {
                cloudJson.put("originSha1", getOriginSha1());
            }
        } catch (JSONException e) {
            Log.e("DBCloud", "toJSONObject: get JSON error");
        }
        return cloudJson;
    }

    protected void getBasicValues(JSONObject cloudJson) throws JSONException {
        String description;
        cloudJson.put("fileName", getFileName());
        cloudJson.put("dateTaken", getDatetaken());
        cloudJson.put("dateModified", getDateModified());
        int serverType = getServerType();
        if (serverType == 0) {
            description = CloudUtils.collectAlbumDescription(this);
        } else if (serverType == 1 || serverType == 2) {
            description = CloudUtils.collectMediaDescription(this);
        } else {
            description = getDescription();
        }
        if (!TextUtils.isEmpty(description)) {
            cloudJson.put("description", description);
        }
        switch (getServerType()) {
            case 0:
                cloudJson.put(nexExportFormat.TAG_FORMAT_TYPE, "group");
                if (ApplicationHelper.isAutoUploadFeatureOpen() && !TextUtils.isEmpty(getAppKey())) {
                    cloudJson.put("appKey", getAppKey());
                }
                if (ApplicationHelper.isBabyAlbumFeatureOpen() && !TextUtils.isEmpty(this.mBabyInfoJson)) {
                    JSONObject obj = new JSONObject(this.mBabyInfoJson);
                    if (obj.has("localFlag")) {
                        obj.remove("localFlag");
                    }
                    JSONArray array = new JSONArray();
                    array.put(0, obj);
                    cloudJson.put("renderInfos", array);
                    break;
                }
            case 1:
                cloudJson.put(nexExportFormat.TAG_FORMAT_TYPE, "image");
                cloudJson.put("size", getSize());
                cloudJson.put("mimeType", getMimeType());
                cloudJson.put("title", getTitle());
                cloudJson.put("sha1", getSha1());
                break;
            case 2:
                cloudJson.put(nexExportFormat.TAG_FORMAT_TYPE, "video");
                cloudJson.put("size", getSize());
                cloudJson.put("mimeType", getMimeType());
                cloudJson.put("title", getTitle());
                cloudJson.put("sha1", getSha1());
                cloudJson.put("duration", getDuration());
                break;
            default:
                Log.e("DBImage", "type is invalid:" + getServerType());
                break;
        }
        if (getExifInfo().length() > 0) {
            cloudJson.put("exifInfo", getExifInfo());
        }
    }

    public JSONObject toJsonObjectForSubUbi() {
        JSONObject cloudJson = new JSONObject();
        try {
            getBasicValues(cloudJson);
            try {
                cloudJson.put(nexExportFormat.TAG_FORMAT_TYPE, null);
            } catch (JSONException e) {
                Log.e("DBCloud", "put null JSON_TAG_TYPE failed");
            }
        } catch (JSONException e2) {
            Log.e("DBCloud", "toJsonObjectForSubUbi: get JSON error");
            try {
                cloudJson.put(nexExportFormat.TAG_FORMAT_TYPE, null);
            } catch (JSONException e3) {
                Log.e("DBCloud", "put null JSON_TAG_TYPE failed");
            }
        } catch (Throwable th) {
            try {
                cloudJson.put(nexExportFormat.TAG_FORMAT_TYPE, null);
            } catch (JSONException e4) {
                Log.e("DBCloud", "put null JSON_TAG_TYPE failed");
            }
            throw th;
        }
        return cloudJson;
    }

    public boolean isShareItem() {
        return false;
    }

    public String getId() {
        return this.mId;
    }

    public int getServerType() {
        return this.mServerType;
    }

    public void setSecretKey(byte[] secretKey) {
        this.mSecretKey = secretKey;
    }

    public long getGroupId() {
        return this.mGroupId;
    }

    public void setGroupId(long mGroupId) {
        this.mGroupId = mGroupId;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public void setFileName(String mFileName) {
        this.mFileName = mFileName;
    }

    public String getSha1FileName() {
        return this.mSha1 + "." + ExtraFileUtils.getExtension(this.mFileName);
    }

    public String getSha1Thumbnail() {
        return this.mSha1 + "." + "jpg";
    }

    public String getSha1ThumbnailSA() {
        return SecretAlbumUtils.getSha1ThumbnailSA(this.mSha1, getMD5Key());
    }

    public String getEncodedFileName() {
        return SecretAlbumUtils.getEncodedFileName(this.mFileName, getMD5Key());
    }

    public String getSha1() {
        return this.mSha1;
    }

    public void setSha1(String mSha1) {
        this.mSha1 = mSha1;
    }

    public int getLocalFlag() {
        return this.mLocalFlag;
    }

    public String getThumbnailFile() {
        return this.mThumbnailFile;
    }

    public void setThumbnailFile(String mThumbnailFile) {
        this.mThumbnailFile = mThumbnailFile;
    }

    public String getMicroThumbnailFile() {
        return this.mMicroThumbFile;
    }

    public void setMicroThumbFile(String microThumbFile) {
        this.mMicroThumbFile = microThumbFile;
    }

    public String getLocalFile() {
        return this.mLocalFile;
    }

    public void setLocalFile(String mLocalFile) {
        this.mLocalFile = mLocalFile;
    }

    public String getLocalGroupId() {
        return this.mLocalGroupId;
    }

    public String getLocalImageId() {
        return this.mLocalImageId;
    }

    public long getSize() {
        return this.mSize;
    }

    public long getDateModified() {
        return this.mDateModified;
    }

    public String getMimeType() {
        return this.mMimeType;
    }

    public String getBabyInfoJson() {
        return this.mBabyInfoJson;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public long getDatetaken() {
        return this.mDatetaken;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public String getServerId() {
        return this.mServerId;
    }

    public void setServerId(String mServerId) {
        this.mServerId = mServerId;
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    public long getServerTag() {
        return this.mServerTag;
    }

    public String getServerStatus() {
        return this.mServerStatus;
    }

    public JSONObject getExifInfo() {
        return this.mExifInfo;
    }

    public JSONObject getGeoInfo() {
        return this.mGeoInfo;
    }

    public String getJsonExifString(String name) {
        try {
            if (getExifInfo().has(name)) {
                return getExifInfo().getString(name);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getShareAlbumId() {
        return this.mShareAlbumId;
    }

    public void setShareAlbumId(String mShareAlbumId) {
        this.mShareAlbumId = mShareAlbumId;
    }

    public String getCreatorId() {
        return this.mCreatorId;
    }

    public boolean isItemType() {
        if (getServerType() == 1 || getServerType() == 2) {
            return true;
        }
        return false;
    }

    public boolean isVideoType() {
        return getServerType() == 2;
    }

    public boolean isImageType() {
        return getServerType() == 1;
    }

    public long getMixedDateTime() {
        return this.mMixedDateTime;
    }

    public int getSubUbiImageCount() {
        return this.mUbiSubImageCount;
    }

    public void setSubUbiImageCount(int subUbiImageCount) {
        this.mUbiSubImageCount = subUbiImageCount;
    }

    public boolean isUbiFocus() {
        return false;
    }

    public boolean isSubUbiFocus() {
        return false;
    }

    public String getUbiServerId() {
        return "";
    }

    public int getSubUbiIndex() {
        return this.mUbiSubIndex;
    }

    public void setShareId(String shareId) {
    }

    public String getEditedColumns() {
        return this.mEditedColumns;
    }

    public String getFromLocalGroupId() {
        return this.mFromLocalGroupId;
    }

    public boolean isSecretItem() {
        if (ApplicationHelper.isSecretAlbumFeatureOpen()) {
            return CloudTableUtils.isSecretAlbum(String.valueOf(getGroupId()), getLocalGroupId());
        }
        return false;
    }

    public byte[] getSecretKey() {
        if (SecretAlbumUtils.isEmpty(this.mSecretKey)) {
            generateSecretKey();
        }
        return this.mSecretKey;
    }

    public byte[] getSecretKeyNoGenerate() {
        return this.mSecretKey;
    }

    public String getMD5Key() {
        return SecretAlbumUtils.getMD5Key(getSecretKey());
    }

    private void generateSecretKey() {
        synchronized (sSecretKeyLock) {
            Uri uri = getBaseUri();
            String selection = "_id = '" + getId() + "'";
            byte[] secretKey = (byte[]) GalleryUtils.safeQuery(uri, new String[]{"secretKey"}, selection, null, null, new QueryHandler<byte[]>() {
                public byte[] handle(Cursor cursor) {
                    if (cursor == null || !cursor.moveToFirst()) {
                        return null;
                    }
                    return cursor.getBlob(0);
                }
            });
            if (secretKey == null) {
                secretKey = GalleryAes.generateRandomKey();
                ContentValues values = new ContentValues();
                values.put("secretKey", secretKey);
                GalleryUtils.safeUpdate(uri, values, selection, null);
            } else {
                Log.d("DBImage", "generateSecretKey  secret key exists:" + secretKey);
            }
            this.mSecretKey = secretKey;
        }
    }

    public long getAttributes() {
        return this.mAttributes;
    }

    public void setOriginInfo(String originSha1, String originFileName) {
    }

    public String getOriginSha1() {
        return "";
    }

    public boolean isFavorite() {
        return this.mIsFavorite;
    }

    public long getSpecialTypeFlags() {
        return this.mSpecialTypeFlags;
    }

    public String toString() {
        return super.toString() + "[ _id = " + getId() + ", albumId = " + getAlbumId() + "]";
    }
}
