package com.miui.gallery.provider.deprecated;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.cloud.CheckResult;
import com.miui.gallery.cloud.CloudGroupUrlProvider;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Utils;
import com.miui.gallery.util.face.FaceRegionRectF;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
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
    private RectF mFaceRegion;
    private String mFaceUrl;
    private final long mGroupLocalId;
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

        RectF getFacePosition() {
            return new FaceRegionRectF((float) this.faceXScale, (float) this.faceYScale, (float) (this.faceXScale + this.faceWScale), (float) (this.faceYScale + this.faceHScale), this.faceRegionOrientation);
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

    public ThumbnailInfo(long groupLocalId, boolean isSharerAlbum, String thumbnailInfoStr) {
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
            } catch (JSONException e) {
                Log.e("ThumbnailInfo", "fail to parse ThumbnailInfo from " + thumbnailInfoStr, e);
            }
        }
    }

    public boolean setFaceId(String faceId) {
        if (TextUtils.equals(this.mFaceId, faceId)) {
            return false;
        }
        this.mFaceId = faceId;
        this.mFaceUrl = null;
        this.mFaceInfo = null;
        return true;
    }

    public String getBgPath() {
        long bgImageLocalId = this.mBgImageLocalId;
        if (bgImageLocalId == -1 && !TextUtils.isEmpty(this.mBgImageId)) {
            bgImageLocalId = CloudUtils.getItemId(GalleryCloudUtils.CLOUD_URI, "serverId", this.mBgImageId);
        }
        Cursor cursor = null;
        try {
            cursor = getItemCursor(GalleryCloudUtils.CLOUD_URI, "_id", String.valueOf(bgImageLocalId));
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return "";
            }
            String itemPath = getItemPath(cursor);
            return itemPath;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public String setBgImage(long photoId) {
        String hiddenGroupLocalId = String.valueOf(-1001);
        Cursor mediaCursor = getItemCursor(GalleryCloudUtils.CLOUD_URI, "_id", String.valueOf(photoId));
        if (mediaCursor == null || mediaCursor.getCount() == 0) {
            if (mediaCursor != null) {
                mediaCursor.close();
            }
            return "";
        }
        mediaCursor.moveToNext();
        ContentValues values = new ContentValues();
        int originFlag = mediaCursor.getInt(mediaCursor.getColumnIndex("localFlag"));
        if (originFlag == 0 || originFlag == 5 || originFlag == 6) {
            Log.d("ThumbnailInfo", "server id found, insert as copy from cloud");
            values.put("localFlag", Integer.valueOf(6));
        } else {
            Log.d("ThumbnailInfo", "no server id, just insert as manual create");
            values.put("localFlag", Integer.valueOf(-2));
        }
        values.put("microthumbfile", mediaCursor.getString(mediaCursor.getColumnIndex("microthumbfile")));
        values.put("thumbnailFile", mediaCursor.getString(mediaCursor.getColumnIndex("thumbnailFile")));
        values.put("localFile", mediaCursor.getString(mediaCursor.getColumnIndex("localFile")));
        values.put("localGroupId", hiddenGroupLocalId);
        values.put("localImageId", Integer.valueOf(mediaCursor.getInt(mediaCursor.getColumnIndex("_id"))));
        String photoPath = getItemPath(mediaCursor);
        if (mediaCursor != null) {
            mediaCursor.close();
        }
        long id = GalleryDBHelper.getInstance().insert("cloud", values);
        long newBgLocalId = id;
        Log.w("ThumbnailInfo", "mediaId1 : " + id);
        if (newBgLocalId <= 0) {
            return photoPath;
        }
        if (!(this.mBgImageLocalId == -1 || CloudUtils.deleteItemInHiddenAlbum(this.mBgImageLocalId))) {
            Log.w("ThumbnailInfo", "failed to delete old bg, old local id: " + this.mBgImageLocalId);
        }
        this.mBgImageLocalId = newBgLocalId;
        this.mBgImageId = null;
        this.mBgUrl = null;
        saveToDB();
        return photoPath;
    }

    public String getItemPath(Cursor cursor) {
        String localPath = cursor.getString(cursor.getColumnIndex("localFile"));
        if (!TextUtils.isEmpty(localPath)) {
            return localPath;
        }
        String filePath = cursor.getString(cursor.getColumnIndex("thumbnailFile"));
        if (TextUtils.isEmpty(filePath)) {
            return cursor.getString(cursor.getColumnIndex("microthumbfile"));
        }
        return filePath;
    }

    private boolean userChanged() {
        return (TextUtils.isEmpty(this.mCoverImageId) && TextUtils.isEmpty(this.mFaceId) && TextUtils.isEmpty(this.mBgImageId) && this.mBgImageLocalId == -1) ? false : true;
    }

    private void saveToDB() {
        String thumbnailInfoColumnName = this.mIsSharerAlbum ? "thumbnailInfo" : "thumbnailInfo";
        String idColumnName = this.mIsSharerAlbum ? "_id" : "_id";
        if (userChanged()) {
            String table = this.mIsSharerAlbum ? "shareAlbum" : "cloud";
            String editColumnElement = GalleryCloudUtils.transformToEditedColumnsElement(this.mIsSharerAlbum ? 29 : 66);
            String editedColumnName = this.mIsSharerAlbum ? "editedColumns" : "editedColumns";
            GalleryUtils.safeExec(String.format("update %s set %s=%s, %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s=%d", new Object[]{table, thumbnailInfoColumnName, DatabaseUtils.sqlEscapeString(toString()), editedColumnName, editedColumnName, editColumnElement, editColumnElement, editColumnElement, idColumnName, Long.valueOf(this.mGroupLocalId)}));
        } else {
            ContentValues values = new ContentValues();
            values.put(thumbnailInfoColumnName, toString());
            GalleryUtils.safeUpdate(this.mIsSharerAlbum ? GalleryCloudUtils.SHARE_ALBUM_URI : GalleryCloudUtils.CLOUD_URI, values, String.format(Locale.US, "%s=?", new Object[]{idColumnName}), new String[]{String.valueOf(this.mGroupLocalId)});
        }
        GalleryApp.sGetAndroidContext().getContentResolver().notifyChange(Album.URI, null, true);
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

    public static String getFaceByFaceId(String faceId, RectF[] faceRegions) {
        return FaceManager.queryCoverImageOfOneFace(faceId, faceRegions);
    }

    public String getFaceInfo(boolean isOtherShared) {
        boolean needRefreshThumbnailInfo = false;
        String face = null;
        if (!(isOtherShared || TextUtils.isEmpty(this.mFaceId))) {
            RectF[] faceRegions = new RectF[1];
            face = getFaceByFaceId(this.mFaceId, faceRegions);
            this.mFaceRegion = faceRegions[0];
        }
        if (face != null) {
            return face;
        }
        boolean isEmptyFaceUrl = TextUtils.isEmpty(this.mFaceUrl);
        if (isOtherShared) {
            if (isEmptyFaceUrl || thumbnailInfoTimeout()) {
                needRefreshThumbnailInfo = true;
            }
        } else if (isEmptyFaceUrl && thumbnailInfoTimeout()) {
            needRefreshThumbnailInfo = true;
        }
        if (needRefreshThumbnailInfo) {
            getThumbnailInfoFromServer();
        }
        if (TextUtils.isEmpty(this.mFaceUrl)) {
            return null;
        }
        return this.mFaceUrl;
    }

    public RectF getFaceRegion() {
        return this.mFaceRegion;
    }

    public RectF getFaceRegionFromFaceInfo() {
        if (this.mFaceInfo == null) {
            return null;
        }
        return this.mFaceInfo.getFacePosition();
    }

    private boolean thumbnailInfoTimeout() {
        return System.currentTimeMillis() - this.mLastTimeRequest > 86400000;
    }

    private void getThumbnailInfoFromServer() {
        String albumId;
        String groupLocalIdStr = String.valueOf(this.mGroupLocalId);
        if (this.mIsSharerAlbum) {
            DBShareAlbum groupItem = CloudUtils.getDBShareAlbumByLocalId(groupLocalIdStr);
            albumId = groupItem == null ? null : groupItem.getAlbumId();
        } else {
            DBImage groupItem2 = CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, GalleryApp.sGetAndroidContext(), "_id", groupLocalIdStr);
            albumId = groupItem2 == null ? null : groupItem2.getServerId();
        }
        if (!TextUtils.isEmpty(albumId)) {
            if (CTA.canConnectNetwork()) {
                AccountInfo accountInfo = AccountCache.getAccountInfo();
                if (accountInfo == null) {
                    Log.e("ThumbnailInfo", "accountInfo is null");
                    return;
                }
                String url = CloudGroupUrlProvider.getUrlProvider(this.mIsSharerAlbum).getThumbnailInfoUrl(GalleryCloudUtils.getAccountName(), albumId);
                try {
                    ArrayList<NameValuePair> params = new ArrayList();
                    params.add(new BasicNameValuePair("sharedAlbumId", albumId));
                    JSONObject getResult = CloudUtils.getFromXiaomi(url, params, accountInfo.mAccount, accountInfo.mToken, 0, false);
                    Log.d("ThumbnailInfo", "get thumbnail info from server: " + getResult);
                    if (CheckResult.parseErrorCode(getResult) == 0) {
                        ThumbnailInfo thumbnailInfo = new ThumbnailInfo(this.mGroupLocalId, this.mIsSharerAlbum, getResult.getJSONObject("data").toString());
                        if (TextUtils.isEmpty(this.mCoverImageId)) {
                            this.mCoverUrl = thumbnailInfo.mCoverUrl;
                        }
                        if (TextUtils.isEmpty(this.mFaceId)) {
                            this.mFaceUrl = thumbnailInfo.mFaceUrl;
                            this.mFaceInfo = thumbnailInfo.mFaceInfo;
                        }
                        if (this.mBgImageLocalId == -1) {
                            this.mBgUrl = thumbnailInfo.mBgUrl;
                            this.mBgImageId = null;
                        }
                        this.mLastTimeRequest = System.currentTimeMillis();
                        saveToDB();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            Log.e("ThumbnailInfo", "cta not allowed");
        }
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

    public static Cursor getItemCursor(Uri uri, String column, String value) {
        return GalleryApp.sGetAndroidContext().getContentResolver().query(CloudUtils.getLimitUri(uri, 1), new String[]{"*"}, column + "=?", new String[]{value}, null);
    }
}
