package com.miui.gallery.cloud;

import android.text.TextUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public class ThumbnailInfo {
    private String mBgImageId;
    private long mBgImageLocalId = -1;
    private String mBgUrl;
    private String mCoverImageId;
    private String mCoverUrl;
    private String mFaceId;
    private FaceInfo mFaceInfo;
    private String mFaceUrl;
    private final int mGroupLocalId;
    private final boolean mIsSharerAlbum;
    private long mLastTimeRequest;

    private static class FaceInfo {
        private final double eyeLeftXScale;
        private final double eyeLeftYScale;
        private final double eyeRightXScale;
        private final double eyeRightYScale;
        private final double faceHScale;
        private final int faceRegionOrientation;
        private final double faceWScale;
        private final double faceXScale;
        private final double faceYScale;

        private FaceInfo(double eyeLeftXScale, double eyeLeftYScale, double eyeRightXScale, double eyeRightYScale, double faceXScale, double faceYScale, double faceWScale, double faceHScale, int faceRegionOrientation) {
            this.eyeLeftXScale = eyeLeftXScale;
            this.eyeLeftYScale = eyeLeftYScale;
            this.eyeRightXScale = eyeRightXScale;
            this.eyeRightYScale = eyeRightYScale;
            this.faceXScale = faceXScale;
            this.faceYScale = faceYScale;
            this.faceWScale = faceWScale;
            this.faceHScale = faceHScale;
            this.faceRegionOrientation = faceRegionOrientation;
        }

        String toJSON() throws JSONException {
            JSONObject faceInfoJSON = new JSONObject();
            faceInfoJSON.put("eyeLeftXScale", this.eyeLeftXScale);
            faceInfoJSON.put("eyeLeftYScale", this.eyeLeftYScale);
            faceInfoJSON.put("eyeRightXScale", this.eyeRightXScale);
            faceInfoJSON.put("eyeRightYScale", this.eyeRightYScale);
            faceInfoJSON.put("faceXScale", this.faceXScale);
            faceInfoJSON.put("faceYScale", this.faceYScale);
            faceInfoJSON.put("faceWScale", this.faceWScale);
            faceInfoJSON.put("faceHScale", this.faceHScale);
            faceInfoJSON.put("faceOrientation", this.faceRegionOrientation);
            return faceInfoJSON.toString();
        }

        public boolean equals(Object rhs) {
            if (this == rhs) {
                return true;
            }
            if (!(rhs instanceof FaceInfo)) {
                return false;
            }
            FaceInfo another = (FaceInfo) rhs;
            if (Utils.doubleEquals(this.eyeLeftXScale, another.eyeLeftXScale) && Utils.doubleEquals(this.eyeLeftYScale, another.eyeLeftYScale) && Utils.doubleEquals(this.eyeRightXScale, another.eyeRightXScale) && Utils.doubleEquals(this.eyeRightYScale, another.eyeRightYScale) && Utils.doubleEquals(this.faceXScale, another.faceXScale) && Utils.doubleEquals(this.faceYScale, another.faceYScale) && Utils.doubleEquals(this.faceWScale, another.faceWScale) && Utils.doubleEquals(this.faceHScale, another.faceHScale) && this.faceRegionOrientation == another.faceRegionOrientation) {
                return true;
            }
            return false;
        }

        static boolean equals(FaceInfo lhs, FaceInfo rhs) {
            if (lhs == null) {
                return rhs == null;
            } else {
                return lhs.equals(rhs);
            }
        }

        static FaceInfo from(String faceInfoStr) throws JSONException {
            if (TextUtils.isEmpty(faceInfoStr)) {
                return null;
            }
            JSONObject faceInfoJSON = new JSONObject(faceInfoStr);
            return new FaceInfo(faceInfoJSON.getDouble("eyeLeftXScale"), faceInfoJSON.getDouble("eyeLeftYScale"), faceInfoJSON.getDouble("eyeRightXScale"), faceInfoJSON.getDouble("eyeRightYScale"), faceInfoJSON.getDouble("faceXScale"), faceInfoJSON.getDouble("faceYScale"), faceInfoJSON.getDouble("faceWScale"), faceInfoJSON.getDouble("faceHScale"), faceInfoJSON.getInt("faceOrientation"));
        }
    }

    public ThumbnailInfo(int groupLocalId, boolean isSharerAlbum, String thumbnailInfoStr) {
        this.mGroupLocalId = groupLocalId;
        this.mIsSharerAlbum = isSharerAlbum;
        initBy(thumbnailInfoStr);
    }

    private void initBy(String thumbnailInfoStr) {
        int orientation = -1;
        if (!TextUtils.isEmpty(thumbnailInfoStr)) {
            try {
                JSONObject thumbnailInfoJSON = new JSONObject(thumbnailInfoStr);
                this.mCoverImageId = thumbnailInfoJSON.optString("coverImageId");
                this.mBgImageId = thumbnailInfoJSON.optString("backgroundImageId");
                this.mBgImageLocalId = thumbnailInfoJSON.optLong("backgroundImageLocalId", -1);
                this.mFaceId = thumbnailInfoJSON.optString("faceId");
                this.mCoverUrl = thumbnailInfoJSON.optString("coverUrl");
                this.mFaceUrl = thumbnailInfoJSON.optString("faceUrl");
                this.mBgUrl = thumbnailInfoJSON.optString("backgroundUrl");
                String faceInfoStr = thumbnailInfoJSON.optString("faceInfo");
                if (!TextUtils.isEmpty(faceInfoStr)) {
                    JSONObject faceInfoObject = new JSONObject(faceInfoStr);
                    JSONObject exifInfoObject = thumbnailInfoJSON.optJSONObject("faceExif");
                    if (exifInfoObject != null) {
                        orientation = exifInfoObject.optInt("orientation", -1);
                    }
                    faceInfoObject.put("faceOrientation", orientation);
                    faceInfoStr = faceInfoObject.toString();
                }
                this.mFaceInfo = FaceInfo.from(faceInfoStr);
                this.mLastTimeRequest = thumbnailInfoJSON.optLong("lastTimeRequest");
            } catch (Object e) {
                Log.e("ThumbnailInfo", "fail to parse ThumbnailInfo from " + thumbnailInfoStr, e);
            }
        }
    }

    public boolean equals(Object rhs) {
        if (this == rhs) {
            return true;
        }
        if (!(rhs instanceof ThumbnailInfo)) {
            return false;
        }
        ThumbnailInfo another = (ThumbnailInfo) rhs;
        if (TextUtils.equals(this.mCoverImageId, another.mCoverImageId) && TextUtils.equals(this.mBgImageId, another.mBgImageId) && this.mBgImageLocalId == another.mBgImageLocalId && TextUtils.equals(this.mFaceId, another.mFaceId) && TextUtils.equals(this.mCoverUrl, another.mCoverUrl) && TextUtils.equals(this.mFaceUrl, another.mFaceUrl) && TextUtils.equals(this.mBgUrl, another.mBgUrl) && FaceInfo.equals(this.mFaceInfo, another.mFaceInfo)) {
            return true;
        }
        return false;
    }

    public String toString() {
        try {
            Object obj;
            JSONObject thumbnailInfoJSON = new JSONObject();
            putString(thumbnailInfoJSON, "coverImageId", this.mCoverImageId);
            putString(thumbnailInfoJSON, "backgroundImageId", this.mBgImageId);
            putString(thumbnailInfoJSON, "faceId", this.mFaceId);
            putString(thumbnailInfoJSON, "coverUrl", this.mCoverUrl);
            putString(thumbnailInfoJSON, "faceUrl", this.mFaceUrl);
            putString(thumbnailInfoJSON, "backgroundUrl", this.mBgUrl);
            String str = "faceInfo";
            if (this.mFaceInfo == null) {
                obj = null;
            } else {
                obj = this.mFaceInfo.toJSON();
            }
            thumbnailInfoJSON.put(str, obj);
            if (this.mBgImageLocalId != -1) {
                thumbnailInfoJSON.put("backgroundImageLocalId", this.mBgImageLocalId);
            }
            if (this.mLastTimeRequest > 0) {
                thumbnailInfoJSON.put("lastTimeRequest", this.mLastTimeRequest);
            }
            return thumbnailInfoJSON.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void putString(JSONObject thumbnailInfoJSON, String key, String value) throws JSONException {
        if (!TextUtils.isEmpty(value)) {
            thumbnailInfoJSON.put(key, value);
        }
    }

    public String getFaceId() {
        return this.mFaceId;
    }

    long getBgImageLocalId() {
        return this.mBgImageLocalId;
    }
}
