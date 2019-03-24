package com.miui.gallery.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.collect.Sets;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CloudUtils.Insertable;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.data.BackgroundJobService;
import com.miui.gallery.data.LocationGenerator;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.preference.GalleryPreferences.DataBase;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.util.deprecated.Storage;
import com.miui.gallery.util.deprecated.Time;
import com.miui.os.Device;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import miui.content.ExtraIntent;
import miui.provider.ExtraContacts.ConferenceCalls;
import miui.util.PlayerActions.Out;
import miui.yellowpage.Tag.TagWebService.CommonResult;

public class GalleryDBHelper extends SQLiteOpenHelper {
    private static final String[] sCloudControlTables = new String[]{"cloudControl"};
    private static final String[] sCloudTables = new String[]{"cloud", "shareAlbum", "shareUser", "shareImage", "cloudUser", "cloudCache", "newFlagCache", "userInfo", "ownerSubUbifocus", "peopleFace", "faceToImages", "peopleRecommend", "shareSubUbifocus", CommonResult.RESULT_TYPE_EVENT, "eventPhoto", "albumCoverKey", "recent_discovered_media", "discovery_message", "cloudSetting"};
    private static GalleryDBHelper sDBHelper;
    private static final String[] sPeopleFaceTables = new String[]{"peopleFace", "faceToImages", "peopleRecommend"};
    private static HashMap<String, Integer> sViewNameVersionMap = new HashMap();
    private ArrayList<TableColumn> mAlbumColumns = new ArrayList();
    private ArrayList<TableColumn> mAlbumCoverKeyColumns = new ArrayList();
    private ArrayList<TableColumn> mCloudCacheColumns = new ArrayList();
    private ArrayList<TableColumn> mCloudColumns = new ArrayList();
    private ArrayList<TableColumn> mCloudControlColumns = new ArrayList();
    private ArrayList<TableColumn> mCloudSettingColumns = new ArrayList();
    private ArrayList<TableColumn> mCloudUserColumns = new ArrayList();
    protected Context mContext;
    private ArrayList<TableColumn> mDiscoveryMessageColumns = new ArrayList();
    private ArrayList<TableColumn> mEventColumns = new ArrayList();
    private ArrayList<TableColumn> mEventPhotoColumns = new ArrayList();
    private ArrayList<TableColumn> mFace2ImagesColumns = new ArrayList();
    private ArrayList<TableColumn> mFavoritesColumns = new ArrayList();
    private ArrayList<TableColumn> mLocalUbifocusColumns = new ArrayList();
    private ArrayList<TableColumn> mNewFlagCacheColumns = new ArrayList();
    private int mOldVersion;
    private ArrayList<TableColumn> mOwnerSubUbiImageColumns = new ArrayList();
    private ArrayList<TableColumn> mPeopleFaceColumns = new ArrayList();
    private ArrayList<TableColumn> mPeopleRecommendColumns = new ArrayList();
    private ArrayList<TableColumn> mPhotoGpsCacheColumns = new ArrayList();
    private ArrayList<TableColumn> mRecentDiscoveredMediaColumns = new ArrayList();
    private ArrayList<TableColumn> mShareAlbumColumns = new ArrayList();
    private ArrayList<TableColumn> mShareImageColumns = new ArrayList();
    private ArrayList<TableColumn> mShareSubUbiImageColumns = new ArrayList();
    private ArrayList<TableColumn> mShareUserColumns = new ArrayList();
    private ArrayList<TableColumn> mUserInfoColumns = new ArrayList();
    private ArrayList<TableColumn> mWhiteListLastModifyColumns = new ArrayList();

    public static class TableColumn {
        public boolean isUnique = false;
        public String mColumnType;
        public String mDefault;
        public String mName;

        public TableColumn(String name, String columnType) {
            this.mName = name;
            this.mColumnType = columnType;
        }

        public TableColumn(String name, String columnType, String defaultValue) {
            this.mName = name;
            this.mColumnType = columnType;
            this.mDefault = defaultValue;
        }

        public TableColumn(String name, String columnType, boolean isUnique) {
            this.mName = name;
            this.mColumnType = columnType;
            this.isUnique = isUnique;
        }
    }

    private static class UpdateLocalGroupIdQueryHandler implements QueryHandler<Void> {
        private final String mAlbumIdColumnName;
        private final SQLiteDatabase mDB;
        private final String mTable;

        public UpdateLocalGroupIdQueryHandler(SQLiteDatabase db, String table, String albumIdColumnName) {
            this.mDB = db;
            this.mTable = table;
            this.mAlbumIdColumnName = albumIdColumnName;
        }

        public Void handle(Cursor cursor) {
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    int localId = cursor.getInt(0);
                    if (!TextUtils.isEmpty(cursor.getString(1))) {
                        ContentValues values = new ContentValues();
                        values.put("localGroupId", Integer.valueOf(localId));
                        this.mDB.update(this.mTable, values, String.format(Locale.US, "%s=?", new Object[]{this.mAlbumIdColumnName}), new String[]{serverId});
                    }
                }
            }
            return null;
        }
    }

    static {
        sViewNameVersionMap.put("extended_cloud", Integer.valueOf(3));
        sViewNameVersionMap.put("extended_faceImage", Integer.valueOf(1));
    }

    public static synchronized GalleryDBHelper getInstance(Context context) {
        GalleryDBHelper galleryDBHelper;
        synchronized (GalleryDBHelper.class) {
            if (sDBHelper == null) {
                sDBHelper = new GalleryDBHelper(context);
            }
            galleryDBHelper = sDBHelper;
        }
        return galleryDBHelper;
    }

    public static synchronized GalleryDBHelper getInstance() {
        GalleryDBHelper instance;
        synchronized (GalleryDBHelper.class) {
            instance = getInstance(GalleryApp.sGetAndroidContext());
        }
        return instance;
    }

    private GalleryDBHelper(Context context) {
        super(context, "gallery.db", null, 92);
        this.mContext = context;
    }

    private void initCloudColumns() {
        if (this.mCloudColumns.isEmpty()) {
            this.mCloudColumns.add(new TableColumn("_id", "integer"));
            this.mCloudColumns.add(new TableColumn("groupId", "integer"));
            this.mCloudColumns.add(new TableColumn("size", "integer"));
            this.mCloudColumns.add(new TableColumn("dateModified", "integer"));
            this.mCloudColumns.add(new TableColumn("mimeType", "text"));
            this.mCloudColumns.add(new TableColumn("title", "text"));
            this.mCloudColumns.add(new TableColumn("description", "text"));
            this.mCloudColumns.add(new TableColumn("fileName", "text"));
            this.mCloudColumns.add(new TableColumn("dateTaken", "integer"));
            this.mCloudColumns.add(new TableColumn("duration", "integer"));
            this.mCloudColumns.add(new TableColumn("serverId", "text"));
            this.mCloudColumns.add(new TableColumn("serverType", "text"));
            this.mCloudColumns.add(new TableColumn("serverStatus", "text"));
            this.mCloudColumns.add(new TableColumn("serverTag", "integer"));
            this.mCloudColumns.add(new TableColumn("exifImageWidth", "integer"));
            this.mCloudColumns.add(new TableColumn("exifImageLength", "integer"));
            this.mCloudColumns.add(new TableColumn("exifOrientation", "integer"));
            this.mCloudColumns.add(new TableColumn("exifGPSLatitude", "text"));
            this.mCloudColumns.add(new TableColumn("exifGPSLongitude", "text"));
            this.mCloudColumns.add(new TableColumn("exifMake", "text"));
            this.mCloudColumns.add(new TableColumn("exifModel", "text"));
            this.mCloudColumns.add(new TableColumn("exifFlash", "integer"));
            this.mCloudColumns.add(new TableColumn("exifGPSLatitudeRef", "text"));
            this.mCloudColumns.add(new TableColumn("exifGPSLongitudeRef", "text"));
            this.mCloudColumns.add(new TableColumn("exifExposureTime", "text"));
            this.mCloudColumns.add(new TableColumn("exifFNumber", "text"));
            this.mCloudColumns.add(new TableColumn("exifISOSpeedRatings", "text"));
            this.mCloudColumns.add(new TableColumn("exifGPSAltitude", "text"));
            this.mCloudColumns.add(new TableColumn("exifGPSAltitudeRef", "integer"));
            this.mCloudColumns.add(new TableColumn("exifGPSTimeStamp", "text"));
            this.mCloudColumns.add(new TableColumn("exifGPSDateStamp", "text"));
            this.mCloudColumns.add(new TableColumn("exifWhiteBalance", "integer"));
            this.mCloudColumns.add(new TableColumn("exifFocalLength", "text"));
            this.mCloudColumns.add(new TableColumn("exifGPSProcessingMethod", "text"));
            this.mCloudColumns.add(new TableColumn("exifDateTime", "text"));
            this.mCloudColumns.add(new TableColumn("localFlag", "integer"));
            this.mCloudColumns.add(new TableColumn("thumbnailFile", "text"));
            this.mCloudColumns.add(new TableColumn("downloadFile", "text"));
            this.mCloudColumns.add(new TableColumn("localFile", "text"));
            this.mCloudColumns.add(new TableColumn("sha1", "text"));
            this.mCloudColumns.add(new TableColumn("sortBy", "integer"));
            this.mCloudColumns.add(new TableColumn("microthumbfile", "text"));
            this.mCloudColumns.add(new TableColumn("localGroupId", "text"));
            this.mCloudColumns.add(new TableColumn("localImageId", "text"));
            this.mCloudColumns.add(new TableColumn("albumId", "text"));
            this.mCloudColumns.add(new TableColumn("canModified", "integer"));
            this.mCloudColumns.add(new TableColumn("shareUrl", "text"));
            this.mCloudColumns.add(new TableColumn("albumUserTag", "integer"));
            this.mCloudColumns.add(new TableColumn("newImageFlag", "integer"));
            this.mCloudColumns.add(new TableColumn("newUserFlag", "integer"));
            this.mCloudColumns.add(new TableColumn("creatorId", "text"));
            this.mCloudColumns.add(new TableColumn("isPublic", "integer"));
            this.mCloudColumns.add(new TableColumn("publicUrl", "text"));
            this.mCloudColumns.add(new TableColumn("downloadFileStatus", "integer"));
            this.mCloudColumns.add(new TableColumn("downloadFileTime", "integer"));
            this.mCloudColumns.add(new TableColumn("mixedDateTime", "integer"));
            this.mCloudColumns.add(new TableColumn("ubiSubImageCount", "integer"));
            this.mCloudColumns.add(new TableColumn("ubiFocusIndex", "integer"));
            this.mCloudColumns.add(new TableColumn("ubiSubIndex", "integer"));
            this.mCloudColumns.add(new TableColumn("editedColumns", "text"));
            this.mCloudColumns.add(new TableColumn("fromLocalGroupId", "text"));
            this.mCloudColumns.add(new TableColumn("secretKey", "blob"));
            this.mCloudColumns.add(new TableColumn("appKey", "text"));
            this.mCloudColumns.add(new TableColumn("babyInfoJson", "text"));
            this.mCloudColumns.add(new TableColumn("peopleId", "text"));
            this.mCloudColumns.add(new TableColumn("lables", "integer"));
            this.mCloudColumns.add(new TableColumn("thumbnailInfo", "text"));
            this.mCloudColumns.add(new TableColumn("location", "text"));
            this.mCloudColumns.add(new TableColumn("attributes", "integer", String.valueOf(0)));
            this.mCloudColumns.add(new TableColumn("extraGPS", "text"));
            this.mCloudColumns.add(new TableColumn("address", "text"));
            this.mCloudColumns.add(new TableColumn("specialTypeFlags", "integer", String.valueOf(0)));
        }
    }

    public void onConfigure(SQLiteDatabase db) {
        super.onConfigure(db);
        initCloudColumns();
        this.mAlbumColumns.add(new TableColumn("_id", "integer"));
        this.mAlbumColumns.add(new TableColumn("bucket_id", "text"));
        this.mAlbumColumns.add(new TableColumn("bucket_path", "text"));
        this.mAlbumColumns.add(new TableColumn("recent_visit_time", "integer"));
        this.mAlbumColumns.add(new TableColumn("visit_count", "integer"));
        this.mAlbumColumns.add(new TableColumn("is_hidden_recent", "integer"));
        this.mAlbumColumns.add(new TableColumn("is_manually_recent", "integer"));
        this.mAlbumColumns.add(new TableColumn("is_hidden", "integer"));
        this.mAlbumColumns.add(new TableColumn("sort_by", "integer"));
        this.mAlbumColumns.add(new TableColumn("cover_path", "integer"));
        this.mAlbumColumns.add(new TableColumn("sdcard_sort_by", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("_id", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("accountName", "text"));
        this.mCloudSettingColumns.add(new TableColumn("accountType", "text"));
        this.mCloudSettingColumns.add(new TableColumn("syncTag", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("isSync", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("isSyncOnlyOnWifi", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("shareSyncTagAlbumList", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("shareSyncTagAlbumInfo", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("shareSyncTagImageList", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("shareSyncTagUserList", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("ownerSyncTagUserList", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("syncInfo", "text"));
        this.mCloudSettingColumns.add(new TableColumn("shareSyncInfo", "text"));
        this.mCloudSettingColumns.add(new TableColumn("cloudTabNewFlag", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("faceWatermark", "integer"));
        this.mCloudSettingColumns.add(new TableColumn("faceSyncToken", "text"));
        this.mShareAlbumColumns.add(new TableColumn("_id", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("groupId", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("dateModified", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("description", "text"));
        this.mShareAlbumColumns.add(new TableColumn("fileName", "text"));
        this.mShareAlbumColumns.add(new TableColumn("dateTaken", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("serverId", "text"));
        this.mShareAlbumColumns.add(new TableColumn("serverType", "text"));
        this.mShareAlbumColumns.add(new TableColumn("serverStatus", "text"));
        this.mShareAlbumColumns.add(new TableColumn("serverTag", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("localFlag", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("sortBy", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("canModified", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("albumId", "text"));
        this.mShareAlbumColumns.add(new TableColumn("creatorId", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("shareUrl", "text"));
        this.mShareAlbumColumns.add(new TableColumn("albumStatus", "text"));
        this.mShareAlbumColumns.add(new TableColumn("albumTag", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("albumImageTag", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("albumUserTag", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("shareUrlLong", "text"));
        this.mShareAlbumColumns.add(new TableColumn("newImageFlag", "text"));
        this.mShareAlbumColumns.add(new TableColumn("isPublic", "integer"));
        this.mShareAlbumColumns.add(new TableColumn("publicUrl", "text"));
        this.mShareAlbumColumns.add(new TableColumn("syncInfo", "text"));
        this.mShareAlbumColumns.add(new TableColumn("babyInfoJson", "text"));
        this.mShareAlbumColumns.add(new TableColumn("peopleId", "text"));
        this.mShareAlbumColumns.add(new TableColumn("sharerInfo", "text"));
        this.mShareAlbumColumns.add(new TableColumn("editedColumns", "text"));
        this.mShareAlbumColumns.add(new TableColumn("thumbnailInfo", "text"));
        this.mShareAlbumColumns.add(new TableColumn("attributes", "integer", String.valueOf(0)));
        this.mShareUserColumns.add(new TableColumn("_id", "integer"));
        this.mShareUserColumns.add(new TableColumn("userId", "integer"));
        this.mShareUserColumns.add(new TableColumn("userName", "text"));
        this.mShareUserColumns.add(new TableColumn("createTime", "integer"));
        this.mShareUserColumns.add(new TableColumn("requestType", "text"));
        this.mShareUserColumns.add(new TableColumn("requestValue", "text"));
        this.mShareUserColumns.add(new TableColumn("serverStatus", "text"));
        this.mShareUserColumns.add(new TableColumn("serverTag", "integer"));
        this.mShareUserColumns.add(new TableColumn("albumId", "text"));
        this.mShareUserColumns.add(new TableColumn("localFlag", "integer"));
        this.mShareUserColumns.add(new TableColumn("shareUrl", "text"));
        this.mShareUserColumns.add(new TableColumn("shareText", "text"));
        this.mShareUserColumns.add(new TableColumn("localAlbumId", "text"));
        this.mShareUserColumns.add(new TableColumn("relation", "text"));
        this.mShareUserColumns.add(new TableColumn("relationText", "text"));
        this.mShareImageColumns.add(new TableColumn("_id", "integer"));
        this.mShareImageColumns.add(new TableColumn("groupId", "integer"));
        this.mShareImageColumns.add(new TableColumn("size", "integer"));
        this.mShareImageColumns.add(new TableColumn("dateModified", "integer"));
        this.mShareImageColumns.add(new TableColumn("mimeType", "text"));
        this.mShareImageColumns.add(new TableColumn("title", "text"));
        this.mShareImageColumns.add(new TableColumn("description", "text"));
        this.mShareImageColumns.add(new TableColumn("fileName", "text"));
        this.mShareImageColumns.add(new TableColumn("dateTaken", "integer"));
        this.mShareImageColumns.add(new TableColumn("duration", "integer"));
        this.mShareImageColumns.add(new TableColumn("serverId", "text"));
        this.mShareImageColumns.add(new TableColumn("serverType", "text"));
        this.mShareImageColumns.add(new TableColumn("serverStatus", "text"));
        this.mShareImageColumns.add(new TableColumn("serverTag", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifImageWidth", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifImageLength", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifOrientation", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifGPSLatitude", "text"));
        this.mShareImageColumns.add(new TableColumn("exifGPSLongitude", "text"));
        this.mShareImageColumns.add(new TableColumn("exifMake", "text"));
        this.mShareImageColumns.add(new TableColumn("exifModel", "text"));
        this.mShareImageColumns.add(new TableColumn("exifFlash", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifGPSLatitudeRef", "text"));
        this.mShareImageColumns.add(new TableColumn("exifGPSLongitudeRef", "text"));
        this.mShareImageColumns.add(new TableColumn("exifExposureTime", "text"));
        this.mShareImageColumns.add(new TableColumn("exifFNumber", "text"));
        this.mShareImageColumns.add(new TableColumn("exifISOSpeedRatings", "text"));
        this.mShareImageColumns.add(new TableColumn("exifGPSAltitude", "text"));
        this.mShareImageColumns.add(new TableColumn("exifGPSAltitudeRef", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifGPSTimeStamp", "text"));
        this.mShareImageColumns.add(new TableColumn("exifGPSDateStamp", "text"));
        this.mShareImageColumns.add(new TableColumn("exifWhiteBalance", "integer"));
        this.mShareImageColumns.add(new TableColumn("exifFocalLength", "text"));
        this.mShareImageColumns.add(new TableColumn("exifGPSProcessingMethod", "text"));
        this.mShareImageColumns.add(new TableColumn("exifDateTime", "text"));
        this.mShareImageColumns.add(new TableColumn("localFlag", "integer"));
        this.mShareImageColumns.add(new TableColumn("thumbnailFile", "text"));
        this.mShareImageColumns.add(new TableColumn("downloadFile", "text"));
        this.mShareImageColumns.add(new TableColumn("localFile", "text"));
        this.mShareImageColumns.add(new TableColumn("sha1", "text"));
        this.mShareImageColumns.add(new TableColumn("sortBy", "integer"));
        this.mShareImageColumns.add(new TableColumn("microthumbfile", "text"));
        this.mShareImageColumns.add(new TableColumn("localGroupId", "text"));
        this.mShareImageColumns.add(new TableColumn("localImageId", "text"));
        this.mShareImageColumns.add(new TableColumn("albumId", "text"));
        this.mShareImageColumns.add(new TableColumn("creatorId", "text"));
        this.mShareImageColumns.add(new TableColumn("shareId", "text"));
        this.mShareImageColumns.add(new TableColumn("downloadFileStatus", "integer"));
        this.mShareImageColumns.add(new TableColumn("downloadFileTime", "integer"));
        this.mShareImageColumns.add(new TableColumn("mixedDateTime", "integer"));
        this.mShareImageColumns.add(new TableColumn("ubiSubImageCount", "integer"));
        this.mShareImageColumns.add(new TableColumn("ubiFocusIndex", "integer"));
        this.mShareImageColumns.add(new TableColumn("ubiSubIndex", "integer"));
        this.mShareImageColumns.add(new TableColumn("editedColumns", "text"));
        this.mShareImageColumns.add(new TableColumn("fromLocalGroupId", "text"));
        this.mShareImageColumns.add(new TableColumn("secretKey", "blob"));
        this.mShareImageColumns.add(new TableColumn("lables", "integer"));
        this.mShareImageColumns.add(new TableColumn("location", "text"));
        this.mShareImageColumns.add(new TableColumn("extraGPS", "text"));
        this.mShareImageColumns.add(new TableColumn("address", "text"));
        this.mShareImageColumns.add(new TableColumn("specialTypeFlags", "integer", String.valueOf(0)));
        this.mCloudUserColumns.add(new TableColumn("_id", "integer"));
        this.mCloudUserColumns.add(new TableColumn("userId", "integer"));
        this.mCloudUserColumns.add(new TableColumn("userName", "text"));
        this.mCloudUserColumns.add(new TableColumn("createTime", "integer"));
        this.mCloudUserColumns.add(new TableColumn("requestType", "text"));
        this.mCloudUserColumns.add(new TableColumn("requestValue", "text"));
        this.mCloudUserColumns.add(new TableColumn("serverStatus", "text"));
        this.mCloudUserColumns.add(new TableColumn("serverTag", "integer"));
        this.mCloudUserColumns.add(new TableColumn("albumId", "text"));
        this.mCloudUserColumns.add(new TableColumn("localFlag", "integer"));
        this.mCloudUserColumns.add(new TableColumn("shareUrl", "text"));
        this.mCloudUserColumns.add(new TableColumn("shareText", "text"));
        this.mCloudUserColumns.add(new TableColumn("localAlbumId", "text"));
        this.mCloudUserColumns.add(new TableColumn("relation", "text"));
        this.mCloudUserColumns.add(new TableColumn("relationText", "text"));
        this.mCloudUserColumns.add(new TableColumn("phone", "text"));
        this.mCloudCacheColumns.add(new TableColumn("_id", "integer"));
        this.mCloudCacheColumns.add(new TableColumn("serverId", "text"));
        this.mCloudCacheColumns.add(new TableColumn("barcodeData", "text"));
        this.mCloudCacheColumns.add(new TableColumn("barcodeDataDeadline", "integer"));
        this.mCloudCacheColumns.add(new TableColumn("smsShareData", "text"));
        this.mCloudCacheColumns.add(new TableColumn("smsShareDataDeadline", "integer"));
        this.mNewFlagCacheColumns.add(new TableColumn("_id", "integer"));
        this.mNewFlagCacheColumns.add(new TableColumn("albumId", "text"));
        this.mNewFlagCacheColumns.add(new TableColumn("newImageFlag", "integer"));
        this.mNewFlagCacheColumns.add(new TableColumn("newUserFlag", "integer"));
        this.mUserInfoColumns.add(new TableColumn("_id", "integer"));
        this.mUserInfoColumns.add(new TableColumn("date_modified", "integer"));
        this.mUserInfoColumns.add(new TableColumn(ExtraIntent.EXTRA_XIAOMI_ACCOUNT_USER_ID, "text"));
        this.mUserInfoColumns.add(new TableColumn("alias_nick", "text"));
        this.mUserInfoColumns.add(new TableColumn("miliao_nick", "text"));
        this.mUserInfoColumns.add(new TableColumn("miliao_icon_url", "text"));
        this.mWhiteListLastModifyColumns.add(new TableColumn(nexExportFormat.TAG_FORMAT_PATH, "text"));
        this.mWhiteListLastModifyColumns.add(new TableColumn("stamp", "integer"));
        this.mPhotoGpsCacheColumns.add(new TableColumn("gpsData", "text"));
        this.mPhotoGpsCacheColumns.add(new TableColumn("cityId", "text"));
        this.mLocalUbifocusColumns.add(new TableColumn("data", "text"));
        this.mLocalUbifocusColumns.add(new TableColumn("focusIndex", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("_id", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("groupId", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("size", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("dateModified", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("mimeType", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("title", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("description", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("fileName", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("dateTaken", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("duration", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("serverId", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("serverType", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("serverStatus", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("serverTag", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifImageWidth", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifImageLength", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifOrientation", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSLatitude", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSLongitude", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifMake", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifModel", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifFlash", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSLatitudeRef", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSLongitudeRef", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifExposureTime", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifFNumber", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifISOSpeedRatings", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSAltitude", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSAltitudeRef", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSTimeStamp", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSDateStamp", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifWhiteBalance", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifFocalLength", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifGPSProcessingMethod", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("exifDateTime", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("localFlag", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("thumbnailFile", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("downloadFile", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("localFile", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("sha1", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("sortBy", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("microthumbfile", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("localGroupId", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("localImageId", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("albumId", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("downloadFileStatus", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("downloadFileTime", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("mixedDateTime", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("ubiServerId", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("ubiLocalId", "text"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("ubiSubIndex", "integer"));
        this.mOwnerSubUbiImageColumns.add(new TableColumn("secretKey", "blob"));
        this.mShareSubUbiImageColumns.add(new TableColumn("_id", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("groupId", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("size", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("dateModified", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("mimeType", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("title", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("description", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("fileName", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("dateTaken", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("duration", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("serverId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("serverType", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("serverStatus", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("serverTag", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifImageWidth", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifImageLength", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifOrientation", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSLatitude", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSLongitude", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifMake", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifModel", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifFlash", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSLatitudeRef", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSLongitudeRef", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifExposureTime", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifFNumber", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifISOSpeedRatings", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSAltitude", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSAltitudeRef", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSTimeStamp", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSDateStamp", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifWhiteBalance", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifFocalLength", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifGPSProcessingMethod", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("exifDateTime", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("localFlag", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("thumbnailFile", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("downloadFile", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("localFile", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("sha1", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("sortBy", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("microthumbfile", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("localGroupId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("localImageId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("albumId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("creatorId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("shareId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("downloadFileStatus", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("downloadFileTime", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("mixedDateTime", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("ubiServerId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("ubiLocalId", "text"));
        this.mShareSubUbiImageColumns.add(new TableColumn("ubiSubIndex", "integer"));
        this.mShareSubUbiImageColumns.add(new TableColumn("secretKey", "blob"));
        this.mPeopleFaceColumns.add(new TableColumn("_id", "integer"));
        this.mPeopleFaceColumns.add(new TableColumn("serverId", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("type", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("groupId", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("localGroupId", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("localFlag", "integer"));
        this.mPeopleFaceColumns.add(new TableColumn("faceXScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("faceYScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("faceWScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("faceHScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("leftEyeXScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("leftEyeYScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("RightEyeXScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("RightEyeYScale", "real"));
        this.mPeopleFaceColumns.add(new TableColumn("serverStatus", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("peopleName", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("visibilityType", "integer"));
        this.mPeopleFaceColumns.add(new TableColumn("peopleType", "integer"));
        this.mPeopleFaceColumns.add(new TableColumn("peopleContactJsonInfo", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("relationType", "integer", "0"));
        this.mPeopleFaceColumns.add(new TableColumn("eTag", "integer", "0"));
        this.mPeopleFaceColumns.add(new TableColumn("relationText", "text"));
        this.mPeopleFaceColumns.add(new TableColumn("faceCoverScore", "real", String.valueOf(-1.0d)));
        this.mFace2ImagesColumns.add(new TableColumn("_id", "integer"));
        this.mFace2ImagesColumns.add(new TableColumn("faceId", "text"));
        this.mFace2ImagesColumns.add(new TableColumn("imageServerId", "text"));
        this.mPeopleRecommendColumns.add(new TableColumn("_id", "integer"));
        this.mPeopleRecommendColumns.add(new TableColumn("peopleServerId", "text"));
        this.mPeopleRecommendColumns.add(new TableColumn("recommendPeoplesJson", "text"));
        this.mPeopleRecommendColumns.add(new TableColumn("recommendHistoryJson", "text"));
        this.mPeopleRecommendColumns.add(new TableColumn("lastUpdateFromServerTime", "integer"));
        this.mEventColumns.add(new TableColumn("_id", "integer"));
        this.mEventColumns.add(new TableColumn("name", "text"));
        this.mEventPhotoColumns.add(new TableColumn("_id", "integer"));
        this.mEventPhotoColumns.add(new TableColumn("localEventId", "integer"));
        this.mEventPhotoColumns.add(new TableColumn("key", "integer"));
        this.mEventPhotoColumns.add(new TableColumn("dateTaken", "integer"));
        this.mAlbumCoverKeyColumns.add(new TableColumn(nexExportFormat.TAG_FORMAT_PATH, "text"));
        this.mAlbumCoverKeyColumns.add(new TableColumn("userKey", "text"));
        this.mAlbumCoverKeyColumns.add(new TableColumn("lastModified", "integer"));
        this.mAlbumCoverKeyColumns.add(new TableColumn("key", "blob"));
        this.mDiscoveryMessageColumns.add(new TableColumn("_id", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("message", "text"));
        this.mDiscoveryMessageColumns.add(new TableColumn("title", "text"));
        this.mDiscoveryMessageColumns.add(new TableColumn("subTitle", "text"));
        this.mDiscoveryMessageColumns.add(new TableColumn("type", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("priority", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("receiveTime", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("updateTime", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("triggerTime", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("expireTime", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("actionUri", "text"));
        this.mDiscoveryMessageColumns.add(new TableColumn("messageSource", "text"));
        this.mDiscoveryMessageColumns.add(new TableColumn("isConsumed", "integer"));
        this.mDiscoveryMessageColumns.add(new TableColumn("extraData", "text"));
        this.mRecentDiscoveredMediaColumns.add(new TableColumn("_id", "integer"));
        this.mRecentDiscoveredMediaColumns.add(new TableColumn("mediaId", "integer", true));
        this.mRecentDiscoveredMediaColumns.add(new TableColumn("dateAdded", "integer"));
        this.mRecentDiscoveredMediaColumns.add(new TableColumn("source", "integer"));
        this.mCloudControlColumns.add(new TableColumn("_id", "integer"));
        this.mCloudControlColumns.add(new TableColumn("featureName", "text", true));
        this.mCloudControlColumns.add(new TableColumn("status", "text"));
        this.mCloudControlColumns.add(new TableColumn("strategy", "text"));
        this.mFavoritesColumns.add(new TableColumn("_id", "integer"));
        this.mFavoritesColumns.add(new TableColumn("isFavorite", "integer"));
        this.mFavoritesColumns.add(new TableColumn("dateFavorite", "integer"));
        this.mFavoritesColumns.add(new TableColumn("source", "integer"));
        this.mFavoritesColumns.add(new TableColumn("sha1", "text", true));
    }

    private void clearColumnList() {
        this.mAlbumColumns.clear();
        this.mAlbumColumns = null;
        this.mCloudSettingColumns.clear();
        this.mCloudSettingColumns = null;
        this.mShareAlbumColumns.clear();
        this.mShareAlbumColumns = null;
        this.mShareImageColumns.clear();
        this.mShareImageColumns = null;
        this.mShareUserColumns.clear();
        this.mShareUserColumns = null;
        this.mCloudUserColumns.clear();
        this.mCloudUserColumns = null;
        this.mCloudCacheColumns.clear();
        this.mCloudCacheColumns = null;
        this.mNewFlagCacheColumns.clear();
        this.mNewFlagCacheColumns = null;
        this.mUserInfoColumns.clear();
        this.mUserInfoColumns = null;
        this.mWhiteListLastModifyColumns.clear();
        this.mWhiteListLastModifyColumns = null;
        this.mPhotoGpsCacheColumns.clear();
        this.mPhotoGpsCacheColumns = null;
        this.mLocalUbifocusColumns.clear();
        this.mLocalUbifocusColumns = null;
        this.mOwnerSubUbiImageColumns.clear();
        this.mOwnerSubUbiImageColumns = null;
        this.mShareSubUbiImageColumns.clear();
        this.mShareSubUbiImageColumns = null;
        this.mPeopleFaceColumns.clear();
        this.mPeopleFaceColumns = null;
        this.mFace2ImagesColumns.clear();
        this.mFace2ImagesColumns = null;
        this.mPeopleRecommendColumns.clear();
        this.mPeopleRecommendColumns = null;
        this.mEventColumns.clear();
        this.mEventColumns = null;
        this.mEventPhotoColumns.clear();
        this.mEventPhotoColumns = null;
        this.mAlbumCoverKeyColumns.clear();
        this.mAlbumCoverKeyColumns = null;
        this.mDiscoveryMessageColumns.clear();
        this.mDiscoveryMessageColumns = null;
        this.mRecentDiscoveredMediaColumns.clear();
        this.mRecentDiscoveredMediaColumns = null;
        this.mCloudControlColumns.clear();
        this.mCloudControlColumns = null;
        this.mFavoritesColumns.clear();
        this.mFavoritesColumns = null;
    }

    public void onCreate(SQLiteDatabase db) {
        createTable(db, Out.KEY_ALBUM, this.mAlbumColumns);
        createTable(db, "cloud", this.mCloudColumns);
        createTable(db, "cloudSetting", this.mCloudSettingColumns);
        createTable(db, "shareAlbum", this.mShareAlbumColumns);
        createTable(db, "shareImage", this.mShareImageColumns);
        createTable(db, "shareUser", this.mShareUserColumns);
        createTable(db, "cloudUser", this.mCloudUserColumns);
        createTable(db, "cloudCache", this.mCloudCacheColumns);
        createTable(db, "newFlagCache", this.mNewFlagCacheColumns);
        createTable(db, "userInfo", this.mUserInfoColumns);
        createTable(db, "whiteListLastModify", this.mWhiteListLastModifyColumns);
        createTable(db, "photoGpsCache", this.mPhotoGpsCacheColumns);
        createTable(db, "localUbifocus", this.mLocalUbifocusColumns);
        createTable(db, "ownerSubUbifocus", this.mOwnerSubUbiImageColumns);
        createTable(db, "shareSubUbifocus", this.mShareSubUbiImageColumns);
        createTable(db, "peopleFace", this.mPeopleFaceColumns);
        createTable(db, "faceToImages", this.mFace2ImagesColumns);
        createTable(db, "peopleRecommend", this.mPeopleRecommendColumns);
        createTable(db, CommonResult.RESULT_TYPE_EVENT, this.mEventColumns);
        createTable(db, "eventPhoto", this.mEventPhotoColumns);
        createTable(db, "albumCoverKey", this.mAlbumCoverKeyColumns);
        createTable(db, "discoveryMessage", this.mDiscoveryMessageColumns);
        createTable(db, "recentDiscoveredMedia", this.mRecentDiscoveredMediaColumns);
        createTable(db, "cloudControl", this.mCloudControlColumns);
        createTable(db, "favorites", this.mFavoritesColumns);
        createViewIfNeeded(db, true);
        addUniqueIndexs(db);
        clearColumnList();
        addRecordsForCameraAndScreenshots(db);
    }

    private static boolean safeExecSQL(SQLiteDatabase db, String sql) {
        try {
            db.execSQL(sql);
            return true;
        } catch (Exception e) {
            Log.w("GalleryDBHelper", "fail to execSQL: %s , detail: %s", sql, e.toString());
            return false;
        }
    }

    private void createIndexOnCloudTable_20(SQLiteDatabase db) {
    }

    private void createIndexOnCloudTable_19(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_fileName on cloud (fileName)");
        safeExecSQL(db, "create index index_sort on cloud (dateModified DESC ,_id DESC)");
    }

    private void createIndexOnCloudTable_21(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_localFlag on cloud (localFlag)");
        safeExecSQL(db, "create index index_fileName_NOCASE on cloud (fileName COLLATE NOCASE)");
        safeExecSQL(db, "create index index_cloud_albumId on cloud (albumId)");
    }

    private void createIndexOnCloudTable_43(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_mixed_datetime on cloud (mixedDateTime)");
    }

    private void createIndexOnCloudTable_51(SQLiteDatabase db) {
        safeExecSQL(db, "drop index index_mixed_datetime");
        safeExecSQL(db, "create index if not exists index_cloud_mixed_exif_datetime on cloud (mixedDateTime, exifDateTime)");
    }

    private void createIndexOnCloudTable_53(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_cloud_size on cloud (size)");
    }

    private void createIndexOnCloudTable_70(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_microthumbnail on cloud (groupId DESC, dateModified DESC)");
    }

    private void createIndexOnCloudTable_75(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_cloud_sha1 on cloud (sha1)");
    }

    private void createIndexOnShareAlbumTable_21(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_shareAlbum_albumId on shareAlbum (albumId)");
        safeExecSQL(db, "create index index_shareAlbum_creatorId on shareAlbum (creatorId)");
    }

    private void createIndexOnShareUserTable_21(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_shareUser_albumId on shareUser (albumId)");
        safeExecSQL(db, "create index index_shareUser_userId on shareUser (userId)");
    }

    private void createIndexOnShareImageTable_21(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_shareImage_albumId on shareImage (albumId)");
        safeExecSQL(db, "create index index_shareImage_creatorId on shareImage (creatorId)");
    }

    private void createIndexOnShareImageTable_43(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_mixed_datetime on shareImage (mixedDateTime)");
    }

    private void createIndexOnShareImageTable_51(SQLiteDatabase db) {
        safeExecSQL(db, "drop index index_mixed_datetime");
        safeExecSQL(db, "create index if not exists index_shareimage_mixed_exif_datetime on shareimage (mixedDateTime, exifDateTime)");
    }

    private void createIndexOnShareImageTable_53(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_shareimage_size on shareimage (size)");
    }

    private void createIndexOnShareUserTable_22(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_shareUser_localAlbumId on shareUser (localAlbumId)");
    }

    private void createIndexOnShareImageTable_70(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_shareimage_microthumbnail on shareImage (groupId DESC, dateModified DESC)");
    }

    private void createIndexOnCloudUserTable_22(SQLiteDatabase db) {
        safeExecSQL(db, "create index index_cloudUser_albumId on cloudUser (albumId)");
        safeExecSQL(db, "create index index_cloudUser_userId on cloudUser (userId)");
        safeExecSQL(db, "create index index_cloudUser_localAlbumId on cloudUser (localAlbumId)");
    }

    private void createIndexOnCloudTable(SQLiteDatabase db) {
        createIndexOnCloudTable_19(db);
        createIndexOnCloudTable_20(db);
        createIndexOnCloudTable_21(db);
        createIndexOnCloudTable_43(db);
        createIndexOnCloudTable_51(db);
        createIndexOnCloudTable_53(db);
        createIndexOnCloudTable_70(db);
        createIndexOnCloudTable_75(db);
    }

    private void createIndexOnShareAlbumTable(SQLiteDatabase db) {
        createIndexOnShareAlbumTable_21(db);
    }

    private void createIndexOnShareUserTable(SQLiteDatabase db) {
        createIndexOnShareUserTable_21(db);
        createIndexOnShareUserTable_22(db);
    }

    private void createIndexOnShareImageTable(SQLiteDatabase db) {
        createIndexOnShareImageTable_21(db);
        createIndexOnShareImageTable_43(db);
        createIndexOnShareImageTable_51(db);
        createIndexOnShareImageTable_53(db);
        createIndexOnShareImageTable_70(db);
    }

    private void createIndexOnCloudUserTable(SQLiteDatabase db) {
        createIndexOnCloudUserTable_22(db);
    }

    private void createIndexOnCloudCacheTable(SQLiteDatabase db) {
        safeExecSQL(db, String.format("create index index_cloudCache_serverId on %s (%s)", new Object[]{"cloudCache", "serverId"}));
    }

    private void createIndexOnNewFlagCacheTable(SQLiteDatabase db) {
        safeExecSQL(db, String.format("create index index_newFlagCache_albumId on %s (%s)", new Object[]{"newFlagCache", "albumId"}));
        upgradeTo32(db);
    }

    private void createIndexOnWhiteListLastModifyTable(SQLiteDatabase db) {
        safeExecSQL(db, "CREATE UNIQUE INDEX IF NOT EXISTS index_path ON whiteListLastModify (path)");
    }

    private void addUniqueIndexs(SQLiteDatabase db) {
        upgradeTo35(db);
    }

    private void createTable(SQLiteDatabase db, String tableName, ArrayList<TableColumn> tableColumns) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < tableColumns.size(); i++) {
            TableColumn column = (TableColumn) tableColumns.get(i);
            if (TextUtils.isEmpty(column.mDefault)) {
                builder.append(String.format(" %s %s", new Object[]{column.mName, column.mColumnType}));
            } else {
                builder.append(String.format(" %s %s DEFAULT %s", new Object[]{column.mName, column.mColumnType, column.mDefault}));
            }
            if (column.isUnique) {
                builder.append(" UNIQUE");
            }
            if (i == 0) {
                builder.append(" PRIMARY KEY ");
            }
            if ("_id".equals(column.mName)) {
                builder.append(" AUTOINCREMENT");
            }
            if (i < tableColumns.size() - 1) {
                builder.append(" , ");
            }
        }
        db.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (%s)", new Object[]{tableName, builder.toString()}));
        if (tableName.equals("cloud")) {
            createIndexOnCloudTable(db);
        } else if (tableName.equals("shareAlbum")) {
            createIndexOnShareAlbumTable(db);
        } else if (tableName.equals("shareUser")) {
            createIndexOnShareUserTable(db);
        } else if (tableName.equals("shareImage")) {
            createIndexOnShareImageTable(db);
        } else if (tableName.equals("cloudUser")) {
            createIndexOnCloudUserTable(db);
        } else if (tableName.equals("cloudCache")) {
            createIndexOnCloudCacheTable(db);
        } else if (tableName.equals("newFlagCache")) {
            createIndexOnNewFlagCacheTable(db);
        } else if (tableName.equalsIgnoreCase("whiteListLastModify")) {
            createIndexOnWhiteListLastModifyTable(db);
        } else if (tableName.equalsIgnoreCase("faceToImages")) {
            createIndexOnFaceTable(db);
        } else if (tableName.equalsIgnoreCase("peopleRecommend")) {
            createIndexOnPeopleRecommendTable(db);
        }
    }

    private static void createViewByName(SQLiteDatabase db, String viewName) {
        if ("extended_cloud".equalsIgnoreCase(viewName)) {
            createViewExtendedCloud(db);
        } else if ("extended_faceImage".equalsIgnoreCase(viewName)) {
            createViewExtendedFaceImage(db);
        }
    }

    private static void createViewExtendedCloud(SQLiteDatabase db) {
        db.execSQL("DROP VIEW IF EXISTS extended_cloud;");
        db.execSQL("CREATE VIEW extended_cloud AS " + ("SELECT " + "cloud._id AS _id,cloud.sha1 AS sha1,microthumbfile AS microthumbfile,thumbnailFile AS thumbnailFile,localFile AS localFile,serverType AS serverType,title AS title,duration AS duration,description AS description,location AS location,size AS size,localGroupId AS localGroupId,mimeType AS mimeType,exifGPSLatitude AS exifGPSLatitude,exifGPSLatitudeRef AS exifGPSLatitudeRef,exifGPSLongitude AS exifGPSLongitude,exifGPSLongitudeRef AS exifGPSLongitudeRef,exifOrientation AS exifOrientation,secretKey AS secretKey,localFlag AS localFlag,mixedDateTime AS mixedDateTime,dateTaken AS dateTaken,exifImageWidth AS exifImageWidth,exifImageLength AS exifImageLength,serverStatus AS serverStatus,dateModified AS dateModified,creatorId AS creatorId,serverTag AS serverTag,serverId AS serverId,fileName AS fileName,groupId AS groupId,ubiSubImageCount AS ubiSubImageCount,ubiSubIndex AS ubiSubIndex,ubiFocusIndex AS ubiFocusIndex,babyInfoJson AS babyInfoJson,isFavorite AS isFavorite,specialTypeFlags AS specialTypeFlags" + " FROM " + "(SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud" + " LEFT OUTER JOIN " + "favorites" + " ON " + "cloud" + "." + "sha1" + " = " + "favorites" + "." + "sha1") + ConferenceCalls.SPLIT_EXPRESSION);
    }

    public static void createViewExtendedFaceImage(SQLiteDatabase db) {
        db.execSQL("DROP VIEW IF EXISTS extended_faceImage;");
        db.execSQL("CREATE VIEW extended_faceImage AS " + ("SELECT " + "peopleFace._id AS _id,peopleFace.serverId AS serverId,peopleFace.groupId AS groupId,peopleFace.localGroupId AS localGroupId,microthumbfile AS microthumbfile,thumbnailFile AS thumbnailFile,dateTaken AS dateTaken,mixedDateTime AS mixedDateTime,mimeType AS mimeType,duration AS duration,location AS location,size AS size,exifImageWidth AS exifImageWidth,exifImageLength AS exifImageLength,exifOrientation AS exifOrientation,exifGPSLatitude AS exifGPSLatitude,exifGPSLatitudeRef AS exifGPSLatitudeRef,exifGPSLongitude AS exifGPSLongitude,exifGPSLongitudeRef AS exifGPSLongitudeRef,serverType AS serverType,localFile AS localFile,specialTypeFlags AS specialTypeFlags,fileName AS fileName,sha1 AS sha1,title AS title,dateModified AS dateModified,ubiSubImageCount AS ubiSubImageCount,ubiSubIndex AS ubiSubIndex,ubiFocusIndex AS ubiFocusIndex,secretKey AS secretKey,faceXScale AS faceXScale,faceYScale AS faceYScale,faceWScale AS faceWScale,faceHScale AS faceHScale,leftEyeXScale AS leftEyeXScale,leftEyeYScale AS leftEyeYScale,RightEyeXScale AS RightEyeXScale,RightEyeYScale AS RightEyeYScale,peopleFace.localFlag AS localFlag,peopleFace.serverStatus AS serverStatus,cloud._id AS photo_id,cloud.serverId AS photo_server_id,faceCoverScore AS faceCoverScore" + " FROM " + "peopleFace" + " JOIN " + "faceToImages" + " JOIN " + "cloud" + " ON " + "peopleFace" + "." + "serverId" + " = " + "faceId" + " AND " + "imageServerId" + " = " + "cloud" + "." + "serverId" + " WHERE " + "type" + " = '" + "FACE" + "'" + " AND (" + "cloud" + "." + "localFlag" + " not in (" + 11 + ", " + 0 + ", " + -1 + ", " + 2 + ")" + " OR ( " + "cloud" + "." + "localFlag" + " = " + 0 + " AND " + "cloud" + "." + "serverStatus" + " = '" + "custom" + "'))" + " AND " + "cloud" + "." + "groupId" + " != " + 1000 + " AND " + "cloud" + "." + "localGroupId" + " != " + -1000 + " ORDER BY " + "cloud" + "." + "_id" + " desc ") + ConferenceCalls.SPLIT_EXPRESSION);
    }

    private static void addColumn(SQLiteDatabase db, String tableName, TableColumn tableColumn) {
        String sqlAddColumnString;
        if (TextUtils.isEmpty(tableColumn.mDefault)) {
            sqlAddColumnString = String.format("ALTER TABLE %s ADD COLUMN %s %s", new Object[]{tableName, tableColumn.mName, tableColumn.mColumnType});
        } else {
            sqlAddColumnString = String.format("ALTER TABLE %s ADD COLUMN %s %s DEFAULT %s", new Object[]{tableName, tableColumn.mName, tableColumn.mColumnType, tableColumn.mDefault});
        }
        try {
            db.execSQL(sqlAddColumnString);
        } catch (Exception e) {
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            params.put("sql", sqlAddColumnString);
            params.put("dbversion", String.valueOf(db.getVersion()));
            params.put("exception", e.getMessage() + " : " + e.getCause());
            BaseSamplingStatHelper.recordErrorEvent("db_helper", "db_add_columns", params);
            throw new SQLException(e.getMessage(), e);
        }
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        this.mOldVersion = oldVersion;
        if (this.mOldVersion >= newVersion) {
            throw new IllegalStateException("database cannot be downgraded");
        }
        Log.i("GalleryDBHelper", "onUpgrade oldVersion[%d], newVersion[%d]", Integer.valueOf(oldVersion), Integer.valueOf(newVersion));
        boolean isReCreateAlbumTable = false;
        boolean isReCreateCloudTable = false;
        boolean isReCreateCloudSettingsTable = false;
        boolean isReCreateShareUserTable = false;
        boolean isReCreateShareAlbumTable = false;
        boolean isReCreateShareImageTable = false;
        boolean isReCreateCloudUserTable = false;
        boolean isReCreateOwnerSubUbi = false;
        boolean isReCreateSharerSubUbi = false;
        boolean isReCreatePeopleFaceTable = false;
        boolean upgradeViewsAndTriggers = false;
        if (this.mOldVersion < 92) {
            if (this.mOldVersion < 9) {
                db.execSQL("DROP TABLE IF EXISTS album");
                db.execSQL("DROP TABLE IF EXISTS cloud");
                onCreate(db);
                isReCreateAlbumTable = true;
                isReCreateCloudTable = true;
                isReCreateCloudSettingsTable = true;
            }
            if (this.mOldVersion < 14) {
                if (!isReCreateCloudTable) {
                    db.execSQL("DROP TABLE IF EXISTS cloud");
                    createTable(db, "cloud", this.mCloudColumns);
                    isReCreateCloudTable = true;
                }
                if (!isReCreateCloudSettingsTable) {
                    db.execSQL("DROP TABLE IF EXISTS cloudSetting");
                    createTable(db, "cloudSetting", this.mCloudSettingColumns);
                    isReCreateCloudSettingsTable = true;
                }
            }
            if (this.mOldVersion < 15 && !isReCreateAlbumTable) {
                addColumn(db, Out.KEY_ALBUM, (TableColumn) this.mAlbumColumns.get(10));
                db.execSQL(String.format(Locale.US, "UPDATE %s SET %s=%d", new Object[]{Out.KEY_ALBUM, ((TableColumn) this.mAlbumColumns.get(10)).mName, Integer.valueOf(1)}));
            }
            if (this.mOldVersion < 18) {
                Log.d("GalleryDBHelper", "upgrade to 18");
                if (this.mOldVersion > 15) {
                }
                if (!isReCreateCloudTable) {
                    db.execSQL("DROP TABLE IF EXISTS cloud");
                    createTable(db, "cloud", this.mCloudColumns);
                    isReCreateCloudTable = true;
                }
                if (!isReCreateCloudSettingsTable) {
                    db.execSQL("DROP TABLE IF EXISTS cloudSetting");
                    createTable(db, "cloudSetting", this.mCloudSettingColumns);
                    isReCreateCloudSettingsTable = true;
                }
            }
            if (this.mOldVersion < 19) {
                Log.d("GalleryDBHelper", "upgrade to 19");
                if (!isReCreateCloudTable) {
                    createIndexOnCloudTable_19(db);
                }
            }
            if (this.mOldVersion < 20) {
                Log.d("GalleryDBHelper", "upgrade to 20");
                if (!isReCreateCloudTable) {
                    createIndexOnCloudTable_20(db);
                }
            }
            if (this.mOldVersion < 21) {
                Log.d("GalleryDBHelper", "upgrade to 21");
                upgradeTo21(db, isReCreateCloudTable, isReCreateCloudSettingsTable);
                isReCreateShareUserTable = true;
                isReCreateShareAlbumTable = true;
                isReCreateShareImageTable = true;
            }
            if (this.mOldVersion < 22) {
                Log.d("GalleryDBHelper", "upgrade to 22");
                upgradeTo22(db, isReCreateShareUserTable, isReCreateCloudSettingsTable);
                isReCreateCloudUserTable = true;
            }
            if (this.mOldVersion < 23) {
                Log.d("GalleryDBHelper", "upgrade to 23");
                upgradeTo23(db, isReCreateShareAlbumTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 24) {
                Log.d("GalleryDBHelper", "upgrade to 24");
                upgradeTo24(db, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 25) {
                Log.d("GalleryDBHelper", "upgrade to 25");
                upgradeTo25(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 26) {
                Log.d("GalleryDBHelper", "upgrade to 26");
                upgradeTo26(db, isReCreateCloudTable, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 27) {
                Log.d("GalleryDBHelper", "upgrade to 27");
                upgradeTo27(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 28) {
                Log.d("GalleryDBHelper", "upgrade to 28");
                upgradeTo28(db);
            }
            if (this.mOldVersion < 29) {
                Log.d("GalleryDBHelper", "upgrade to 29");
                upgradeTo29(db);
            }
            if (this.mOldVersion < 31) {
                Log.d("GalleryDBHelper", "upgrade to 31");
                upgradeTo31(db, isReCreateCloudTable, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 32) {
                Log.d("GalleryDBHelper", "upgrade to 32");
                upgradeTo32(db);
            }
            if (this.mOldVersion < 33) {
                Log.d("GalleryDBHelper", "upgrade to 33");
                upgradeTo33(db);
            }
            if (this.mOldVersion < 34) {
                Log.d("GalleryDBHelper", "upgrade to 34");
                upgradeTo34(db);
            }
            if (this.mOldVersion < 35) {
                Log.d("GalleryDBHelper", "upgrade to 35");
                upgradeTo35(db);
            }
            if (this.mOldVersion < 36) {
                Log.d("GalleryDBHelper", "upgrade to 36");
                upgradeTo36(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 37) {
                Log.d("GalleryDBHelper", "upgrade to 37");
                upgradeTo37(db);
            }
            if (this.mOldVersion < 38) {
                Log.d("GalleryDBHelper", "upgrade to 38");
                upgradeTo38(db, isReCreateCloudSettingsTable);
            }
            if (this.mOldVersion < 39) {
                Log.d("GalleryDBHelper", "upgrade to 39");
                upgradeTo39(db);
            }
            if (this.mOldVersion < 40) {
                Log.d("GalleryDBHelper", "upgrade to 40");
                upgradeTo40(db);
            }
            if (this.mOldVersion < 41) {
                Log.d("GalleryDBHelper", "upgrade to 41");
                upgradeTo41(db);
            }
            if (this.mOldVersion < 42) {
                Log.d("GalleryDBHelper", "upgrade to 42");
                upgradeTo42(db);
            }
            if (this.mOldVersion < 43) {
                Log.d("GalleryDBHelper", "upgrade to 43");
                upgradeTo43(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 44) {
                Log.d("GalleryDBHelper", "upgrade to 44");
                upgradeTo44(db);
            }
            if (this.mOldVersion < 45) {
                Log.d("GalleryDBHelper", "upgrade to 45");
                upgradeTo45(db);
            }
            if (this.mOldVersion < 46) {
                Log.d("GalleryDBHelper", "upgrade to 46");
                upgradeTo46(db, isReCreateCloudSettingsTable, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 47) {
                Log.d("GalleryDBHelper", "upgrade to 47");
                upgradeTo47(db, isReCreateCloudTable, isReCreateShareImageTable);
                isReCreateOwnerSubUbi = true;
                isReCreateSharerSubUbi = true;
            }
            if (this.mOldVersion < 48) {
                Log.d("GalleryDBHelper", "upgrade to 48");
                upgradeTo48(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 49) {
                Log.d("GalleryDBHelper", "upgrade to 49");
                upgradeTo49(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 50) {
                Log.d("GalleryDBHelper", "upgrade to 50");
                upgradeTo50(db, isReCreateCloudSettingsTable);
            }
            if (this.mOldVersion < 51) {
                Log.d("GalleryDBHelper", "upgrade to 51");
                upgradeTo51(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 52) {
                Log.d("GalleryDBHelper", "upgrade to 52");
                upgradeTo52(db, isReCreateCloudTable, isReCreateShareImageTable, isReCreateOwnerSubUbi, isReCreateSharerSubUbi);
            }
            if (this.mOldVersion < 53) {
                Log.d("GalleryDBHelper", "upgrade to 53");
                upgradeTo53(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 54) {
                Log.d("GalleryDBHelper", "upgrade to 53");
                upgradeTo54(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 55) {
                Log.d("GalleryDBHelper", "upgrade to 55");
                upgradeTo55(db);
                isReCreatePeopleFaceTable = true;
            }
            if (this.mOldVersion < 56) {
                Log.d("GalleryDBHelper", "upgrade to 56");
                upgradeTo56(db, isReCreateCloudSettingsTable);
            }
            if (this.mOldVersion < 57) {
                Log.d("GalleryDBHelper", "upgrade to 57");
                createIndexOnFaceTable(db);
            }
            if (this.mOldVersion < 58) {
                upgradeTo58(db, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 59) {
                upgradeTo59(db);
            }
            boolean hasFaceTables = false;
            if (this.mOldVersion >= 55 && this.mOldVersion <= 60) {
                hasFaceTables = true;
            }
            if (this.mOldVersion < 61) {
                upgradeTo61(hasFaceTables);
            }
            if (this.mOldVersion < 62) {
                upgradeTo62(db);
            }
            if (this.mOldVersion < 63) {
                Log.d("GalleryDBHelper", "upgrade to 63");
                upgradeTo63(db, isReCreateCloudTable, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 64) {
                upgradeTo64(db, isReCreateCloudUserTable, isReCreateShareUserTable);
            }
            if (this.mOldVersion < 65) {
                upgradeTo65(db, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 66) {
                upgradeTo66(db, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 67) {
                upgradeTo67(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 68) {
                upgradeTo68(db, isReCreateCloudUserTable);
            }
            if (this.mOldVersion < 69) {
                upgradeTo69(db, isReCreateCloudTable, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 70) {
                upgradeTo70(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 71) {
                upgradeTo71(db);
            }
            if (this.mOldVersion < 72) {
                upgradeTo72(db, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 73) {
                Log.d("GalleryDBHelper", "upgrade to 73");
                upgradeTo73(db, isReCreateCloudTable, isReCreateShareImageTable, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 74) {
                Log.d("GalleryDBHelper", "upgrade to 74");
                upgradeTo74(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 75) {
                Log.d("GalleryDBHelper", "upgrade to 75");
                upgradeTo75(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 76) {
                Log.d("GalleryDBHelper", "upgrade to 76");
                upgradeTo76(db, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 77) {
                Log.d("GalleryDBHelper", "upgrade to 77");
                upgradeTo77(db, isReCreateCloudTable, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 78) {
                Log.d("GalleryDBHelper", "upgrade to 78");
                upgradeTo78(db, isReCreateCloudTable, this.mOldVersion < 73);
            }
            if (this.mOldVersion < 79) {
                Log.d("GalleryDBHelper", "upgrade to 79");
                upgradeTo79(db, isReCreateCloudTable, this.mOldVersion > 72);
            }
            if (this.mOldVersion < 80) {
                Log.d("GalleryDBHelper", "upgrade to 80");
                upgradeTo80(db, this.mOldVersion < 73);
            }
            if (this.mOldVersion < 81) {
                Log.d("GalleryDBHelper", "upgrade to 81");
                upgradeTo81(db, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 82) {
                Log.d("GalleryDBHelper", "upgrade to 82");
                upgradeTo82(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 83) {
                Log.d("GalleryDBHelper", "upgrade to 83");
                upgradeTo83(db, this.mOldVersion > 73);
            }
            if (this.mOldVersion < 84 && this.mOldVersion > 72) {
                Log.d("GalleryDBHelper", "upgrade to 84");
                upgradeTo84(db, isReCreateCloudTable, isReCreateShareAlbumTable);
            }
            if (this.mOldVersion < 85) {
                Log.d("GalleryDBHelper", "upgrade to 85");
                upgradeTo85(db);
            }
            if (this.mOldVersion < 86) {
                Log.d("GalleryDBHelper", "upgrade to 86");
                upgradeTo86(db, isReCreateCloudTable, isReCreateShareImageTable);
            }
            if (this.mOldVersion < 87) {
                Log.d("GalleryDBHelper", "upgrade to 87");
                upgradeTo87(db);
            }
            if (this.mOldVersion < 88) {
                Log.d("GalleryDBHelper", "upgrade to 88");
                upgradeTo88(db, isReCreatePeopleFaceTable);
            }
            if (this.mOldVersion < 89 && this.mOldVersion > 72) {
                Log.d("GalleryDBHelper", "upgrade to 89");
                upgradeTo89(db, isReCreateCloudTable);
            }
            if (this.mOldVersion < 90) {
                Log.d("GalleryDBHelper", "upgrade to 90");
                upgradeTo90(db, isReCreateCloudTable);
                upgradeViewsAndTriggers = true;
            }
            if (this.mOldVersion < 91) {
                Log.d("GalleryDBHelper", "upgrade to 91");
                upgradeTo91(db, isReCreateCloudTable, isReCreateShareImageTable);
                upgradeViewsAndTriggers = true;
            }
            if (this.mOldVersion < 92) {
                Log.d("GalleryDBHelper", "upgrade to 92");
                upgradeTo92(db, isReCreatePeopleFaceTable);
                upgradeViewsAndTriggers = true;
            }
            if (upgradeViewsAndTriggers) {
                createViewIfNeeded(db, true);
            }
        }
        clearColumnList();
    }

    private int fixCameraAlbumAttributes(SQLiteDatabase db) {
        ContentValues values = new ContentValues();
        values.put("attributes", Long.valueOf(5));
        return db.update("cloud", values, String.format(Locale.US, "%s=%d and (%s & %d)=%d", new Object[]{"serverId", Long.valueOf(1), "attributes", Long.valueOf(16), Long.valueOf(16)}), null);
    }

    public void onOpen(SQLiteDatabase db) {
        super.onOpen(db);
        if (!DataBase.getEverFixedCameraAlbumAttributes()) {
            try {
                fixCameraAlbumAttributes(db);
                DataBase.setEverFixedCameraAlbumAttributes();
            } catch (Exception e) {
                Map<String, String> params = new HashMap();
                params.put("version", this.mOldVersion + "_" + db.getVersion());
                params.put("exception", android.util.Log.getStackTraceString(e));
                BaseSamplingStatHelper.recordErrorEvent("db_helper", "db_fix_camera_attributes", params);
                Log.e("GalleryDBHelper", "version old[%d], new[%d], exception[%s]", Integer.valueOf(this.mOldVersion), Integer.valueOf(db.getVersion()), android.util.Log.getStackTraceString(e));
            }
        }
        createViewIfNeeded(db, false);
    }

    private void createViewIfNeeded(SQLiteDatabase db, boolean forceCreate) {
        for (Entry<String, Integer> entry : sViewNameVersionMap.entrySet()) {
            int oldVersion = DataBase.getViewVerison((String) entry.getKey());
            if (forceCreate || oldVersion != ((Integer) entry.getValue()).intValue()) {
                Log.d("GalleryDBHelper", "recreate view: [%s], oldVersion: [%d], newVersion: [%d]", entry.getKey(), Integer.valueOf(oldVersion), entry.getValue());
                createViewByName(db, (String) entry.getKey());
                DataBase.setViewVersion((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
            }
        }
        sViewNameVersionMap.clear();
    }

    private void upgradeTo21(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateCloudSettingsTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(44));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(45));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(46));
            createIndexOnCloudTable_21(db);
        }
        if (!isReCreateCloudSettingsTable) {
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(6));
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(7));
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(8));
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(9));
        }
        createTable(db, "shareAlbum", this.mShareAlbumColumns);
        createTable(db, "shareImage", this.mShareImageColumns);
        createTable(db, "shareUser", this.mShareUserColumns);
    }

    private void upgradeTo22(SQLiteDatabase db, boolean isReCreateShareUserTable, boolean isReCreateCloudSettingsTable) {
        if (!isReCreateShareUserTable) {
            addColumn(db, "shareUser", (TableColumn) this.mShareUserColumns.get(12));
            addColumn(db, "shareUser", (TableColumn) this.mShareUserColumns.get(11));
            createIndexOnShareUserTable_22(db);
        }
        if (!isReCreateCloudSettingsTable) {
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(10));
        }
        createTable(db, "cloudUser", this.mCloudUserColumns);
    }

    private void upgradeTo23(SQLiteDatabase db, boolean isReCreateShareAlbumTable, boolean isReCreateShareImageTable) {
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(16));
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(17));
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(18));
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(19));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(46));
        }
    }

    private void upgradeTo24(SQLiteDatabase db, boolean isReCreateShareAlbumTable) {
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(20));
        }
    }

    private void upgradeTo25(SQLiteDatabase db, boolean isReCreateCloud) {
        if (!isReCreateCloud) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(47));
        }
    }

    private void upgradeTo26(SQLiteDatabase db, boolean isReCreateCloud, boolean isReCreateShareAlbum) {
        if (!isReCreateCloud) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(48));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(49));
        }
        if (!isReCreateShareAlbum) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(21));
        }
    }

    private void upgradeTo27(SQLiteDatabase db, boolean isReCreateCloud) {
        if (!isReCreateCloud) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(50));
        }
    }

    private void upgradeTo28(SQLiteDatabase db) {
        createTable(db, "cloudCache", this.mCloudCacheColumns);
    }

    private void upgradeTo29(SQLiteDatabase db) {
        createTable(db, "newFlagCache", this.mNewFlagCacheColumns);
    }

    private void upgradeTo32(SQLiteDatabase db) {
        safeExecSQL(db, "CREATE INDEX index_cloud_server_type on cloud (serverType)");
    }

    private void upgradeTo33(SQLiteDatabase db) {
        createTable(db, "userInfo", this.mUserInfoColumns);
    }

    private void upgradeTo34(SQLiteDatabase db) {
        createTable(db, "whiteListLastModify", this.mWhiteListLastModifyColumns);
    }

    private void upgradeTo31(SQLiteDatabase db, boolean isReCreateCloud, boolean isReCreateShareAlbum) {
        if (!isReCreateCloud) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(51));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(52));
        }
        if (!isReCreateShareAlbum) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(22));
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(23));
        }
        if (this.mOldVersion >= 21) {
            cleanCloudData(db);
        }
    }

    private void upgradeTo35(SQLiteDatabase db) {
        safeExecSQL(db, String.format("CREATE UNIQUE INDEX IF NOT EXISTS index_serverId ON %s (%s)", new Object[]{"cloud", "serverId"}));
        safeExecSQL(db, String.format("CREATE UNIQUE INDEX IF NOT EXISTS index_albumId ON %s (%s)", new Object[]{"shareAlbum", "albumId"}));
        safeExecSQL(db, String.format("CREATE UNIQUE INDEX IF NOT EXISTS index_shareId ON %s (%s)", new Object[]{"shareImage", "shareId"}));
        safeExecSQL(db, String.format("CREATE UNIQUE INDEX IF NOT EXISTS index_path ON %s (%s)", new Object[]{"whiteListLastModify", nexExportFormat.TAG_FORMAT_PATH}));
    }

    private void upgradeTo36(SQLiteDatabase db, boolean isReCreateCloud, boolean isReCreateShareImage) {
        if (!isReCreateCloud) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(53));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(54));
        }
        if (!isReCreateShareImage) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(47));
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(48));
        }
    }

    private void upgradeTo37(SQLiteDatabase db) {
        replaceHongMiFilePath(db);
    }

    private void replaceHongMiFilePath(SQLiteDatabase db) {
        if (Device.IS_HONGMI) {
            String sqlFormatString = "update %s set %s = substr(%s, 0, 16) || (substr(%s, 10, 7) = 'sdcard0') ||  substr(%s, 17) where substr(%s, 10, 7) = 'sdcard1' OR substr(%s, 10, 7) = 'sdcard0' ";
            for (String filePathColumnName : new String[]{"localFile", "thumbnailFile", "microthumbfile"}) {
                db.execSQL(String.format(sqlFormatString, new Object[]{"cloud", filePathColumnName, filePathColumnName, filePathColumnName, filePathColumnName, filePathColumnName, filePathColumnName}));
                db.execSQL(String.format(sqlFormatString, new Object[]{"shareImage", filePathColumnName, filePathColumnName, filePathColumnName, filePathColumnName, filePathColumnName, filePathColumnName}));
            }
        }
    }

    private void upgradeTo38(SQLiteDatabase db, boolean isReCreateCloudSettingsTable) {
        if (!isReCreateCloudSettingsTable) {
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(11));
        }
        setAllSyncTagAsDefault(this.mContext, db);
    }

    private void upgradeTo39(SQLiteDatabase db) {
        createTable(db, "photoGpsCache", this.mPhotoGpsCacheColumns);
    }

    private void upgradeTo40(SQLiteDatabase db) {
        db.execSQL("DROP TABLE IF EXISTS photoGpsCache");
        createTable(db, "photoGpsCache", this.mPhotoGpsCacheColumns);
    }

    private void upgradeTo41(SQLiteDatabase db) {
        String whereCauseString = String.format(Locale.US, " %s = %d AND ( %s != %d OR %s != %d OR %s != %d )", new Object[]{"serverType", Integer.valueOf(2), "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(4), "localFlag", Integer.valueOf(8)});
        ArrayList<String> cloudVideos = getVideosExceptCreated(db, "cloud", whereCauseString);
        ArrayList<String> shareImageVideos = getVideosExceptCreated(db, "shareImage", whereCauseString);
        if ((cloudVideos == null || cloudVideos.isEmpty()) && (shareImageVideos == null || shareImageVideos.isEmpty())) {
            Log.d("GalleryDBHelper", "none video in database, skip delete and resync.");
            return;
        }
        String deleteSql = "DELETE FROM %s WHERE " + whereCauseString;
        if (!(cloudVideos == null || cloudVideos.isEmpty())) {
            db.execSQL(String.format(deleteSql, new Object[]{"cloud"}));
            deleteVideoThumbnailFile(cloudVideos);
        }
        if (!(shareImageVideos == null || shareImageVideos.isEmpty())) {
            db.execSQL(String.format(deleteSql, new Object[]{"shareImage"}));
            deleteVideoThumbnailFile(shareImageVideos);
        }
        Preference.sSetLastSlowScanTime(0);
        setAllSyncTagAsDefault(this.mContext, db);
    }

    private void upgradeTo42(SQLiteDatabase db) {
        if (this.mOldVersion < 29 || this.mOldVersion > 37) {
            Log.d("GalleryDBHelper", "upgrade to 42, should clean data, oldVesion:" + this.mOldVersion);
            cleanCloudData(db);
            Preference.setDBUpgradeTo42();
            SyncUtil.requestSync(this.mContext);
        }
    }

    private void upgradeTo43(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        String sqlConvertDateTime = String.format(Locale.US, "CASE WHEN %1$s IS NULL THEN %2$s ELSE strftime('%%s000', substr(%1$s, 0, 5)||'-'||substr(%1$s, 6, 2)||'-'||substr(%1$s,9,2)||' '||substr(%1$s, 11, 9)||'.000')%3$+d END", new Object[]{"exifDateTime", "dateModified", Integer.valueOf(TimeZone.getDefault().getRawOffset())});
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(55));
            safeExecSQL(db, String.format("UPDATE %s SET %s = %s", new Object[]{"cloud", "mixedDateTime", sqlConvertDateTime}));
            createIndexOnCloudTable_43(db);
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(49));
            safeExecSQL(db, String.format("UPDATE %s SET %s = %s", new Object[]{"shareImage", "mixedDateTime", sqlConvertDateTime}));
            createIndexOnShareImageTable_43(db);
        }
    }

    private void upgradeTo44(SQLiteDatabase db) {
        createTable(db, "localUbifocus", this.mLocalUbifocusColumns);
    }

    private void upgradeTo45(SQLiteDatabase db) {
        safeExecSQL(db, Time.getUpgradeMixedDateTimeSqlString("cloud"));
        safeExecSQL(db, Time.getUpgradeMixedDateTimeSqlString("shareImage"));
    }

    private void upgradeTo46(SQLiteDatabase db, boolean isReCreateCloudSettingsTable, boolean isReCreateShareAlbumTable) {
        if (!isReCreateCloudSettingsTable) {
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(12));
        }
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(24));
        }
        ContentValues values = new ContentValues();
        values.put("syncInfo", "");
        db.update("cloudSetting", values, null, null);
        Preference.setSyncFetchSyncExtraInfoFromV2ToV3(true);
    }

    private void upgradeTo47(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        createTable(db, "ownerSubUbifocus", this.mOwnerSubUbiImageColumns);
        createTable(db, "shareSubUbifocus", this.mShareSubUbiImageColumns);
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(56));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(57));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(58));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(50));
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(51));
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(52));
        }
    }

    private void upgradeTo48(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(59));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(53));
        }
    }

    private void upgradeTo49(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(60));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(54));
        }
    }

    private void upgradeTo50(SQLiteDatabase db, boolean isReCreateCloudSettingsTable) {
        if (!isReCreateCloudSettingsTable) {
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(13));
        }
    }

    private void upgradeTo51(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            createIndexOnCloudTable_51(db);
        }
        if (!isReCreateShareImageTable) {
            createIndexOnShareImageTable_51(db);
        }
    }

    private void upgradeTo52(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable, boolean isReCreateOwnerSubUbi, boolean isReCreateSharerSubUbi) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(61));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(55));
        }
        if (!isReCreateOwnerSubUbi) {
            addColumn(db, "ownerSubUbifocus", (TableColumn) this.mOwnerSubUbiImageColumns.get(51));
        }
        if (!isReCreateSharerSubUbi) {
            addColumn(db, "shareSubUbifocus", (TableColumn) this.mShareSubUbiImageColumns.get(53));
        }
    }

    private void upgradeTo53(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            createIndexOnCloudTable_53(db);
        }
        if (!isReCreateShareImageTable) {
            createIndexOnShareImageTable_53(db);
        }
    }

    private void upgradeTo54(SQLiteDatabase db, boolean isReCreateCloudTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(62));
        }
    }

    private void upgradeTo55(SQLiteDatabase db) {
        createTable(db, "peopleFace", this.mPeopleFaceColumns);
        createTable(db, "faceToImages", this.mFace2ImagesColumns);
    }

    private void upgradeTo56(SQLiteDatabase db, boolean isReCreateCloudSettingsTable) {
        if (!isReCreateCloudSettingsTable) {
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(14));
            addColumn(db, "cloudSetting", (TableColumn) this.mCloudSettingColumns.get(15));
        }
    }

    private void upgradeTo63(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreatePeopleFaceTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(63));
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(64));
        }
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", (TableColumn) this.mPeopleFaceColumns.get(17));
        }
    }

    private void createIndexOnFaceTable(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_serverId_peopleFace on peopleFace (serverId)");
        safeExecSQL(db, "create index if not exists index_groupId_peopleFace on peopleFace (groupId)");
        safeExecSQL(db, "create index if not exists index_faceId_faceToImages on faceToImages (faceId)");
        safeExecSQL(db, "create index if not exists index_imageServerId_faceToImages on faceToImages (imageServerId)");
    }

    private void createIndexOnPeopleRecommendTable(SQLiteDatabase db) {
        safeExecSQL(db, "create index if not exists index_peopleServerID_peopleRecommend on peopleRecommend (peopleServerId)");
    }

    private void upgradeTo58(SQLiteDatabase db, boolean isReCreatePeopleFaceTable) {
        createTable(db, "peopleRecommend", this.mPeopleRecommendColumns);
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", (TableColumn) this.mPeopleFaceColumns.get(16));
        }
    }

    private void upgradeTo59(SQLiteDatabase db) {
        createTable(db, CommonResult.RESULT_TYPE_EVENT, this.mEventColumns);
        createTable(db, "eventPhoto", this.mEventPhotoColumns);
    }

    private void upgradeTo61(boolean isFaceTablesExist) {
        if (isFaceTablesExist) {
        }
    }

    private void upgradeTo62(SQLiteDatabase db) {
        createTable(db, "albumCoverKey", this.mAlbumCoverKeyColumns);
    }

    private void upgradeTo64(SQLiteDatabase db, boolean isReCreateCloudUserTable, boolean isReCreateShareUserTable) {
        if (!isReCreateCloudUserTable) {
            addColumn(db, "cloudUser", (TableColumn) this.mCloudUserColumns.get(13));
            addColumn(db, "cloudUser", (TableColumn) this.mCloudUserColumns.get(14));
        }
        if (!isReCreateShareUserTable) {
            addColumn(db, "shareUser", (TableColumn) this.mShareUserColumns.get(13));
            addColumn(db, "shareUser", (TableColumn) this.mShareUserColumns.get(14));
        }
    }

    private void upgradeTo65(SQLiteDatabase db, boolean isReCreateShareAlbumTable) {
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(25));
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(26));
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(27));
        }
    }

    private void upgradeTo66(SQLiteDatabase db, boolean isReCreateShareAlbumTable) {
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(28));
        }
    }

    private void upgradeTo67(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", (TableColumn) this.mShareImageColumns.get(56));
        }
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(65));
        }
    }

    private void upgradeTo68(SQLiteDatabase db, boolean isReCreateCloudUserTable) {
        if (!isReCreateCloudUserTable) {
            addColumn(db, "cloudUser", (TableColumn) this.mCloudUserColumns.get(15));
        }
    }

    private void upgradeTo69(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareAlbumTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", (TableColumn) this.mCloudColumns.get(66));
        }
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", (TableColumn) this.mShareAlbumColumns.get(29));
        }
    }

    private void upgradeTo70(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            createIndexOnCloudTable_70(db);
        }
        if (!isReCreateShareImageTable) {
            createIndexOnShareImageTable_70(db);
        }
    }

    private void upgradeTo71(SQLiteDatabase db) {
        createTable(db, "eventPhoto", this.mEventPhotoColumns);
    }

    private void upgradeTo72(SQLiteDatabase db, boolean isReCreatePeopleFaceTable) {
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", (TableColumn) this.mPeopleFaceColumns.get(18));
        }
    }

    private void upgradeTo73(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable, boolean isReCreateShareAlbumTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", new TableColumn("location", "text"));
            addColumn(db, "cloud", new TableColumn("attributes", "integer", String.valueOf(0)));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", new TableColumn("location", "text"));
        }
        if (!isReCreateShareAlbumTable) {
            addColumn(db, "shareAlbum", new TableColumn("attributes", "integer", String.valueOf(0)));
        }
        LocationGenerator.getInstance().generate(this.mContext);
        addRecordsForCameraAndScreenshots(db);
        refillLocalGroupId(db, isReCreateCloudTable, isReCreateShareImageTable, isReCreateShareAlbumTable);
    }

    private void upgradeTo74(final SQLiteDatabase db, boolean isReCreateCloudTable) {
        if (!isReCreateCloudTable) {
            SQLiteDatabase sQLiteDatabase = db;
            SafeDBUtil.safeQuery(sQLiteDatabase, "cloud", new String[]{"_id", "description", "fileName", "appKey", "serverId"}, String.format(Locale.US, "%s=%s AND (%s=%d OR %s=%d OR (%s=%d AND %s='%s')) AND %s IS NULL AND %s != %d", new Object[]{"serverType", Integer.valueOf(0), "localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(10), "localFlag", Integer.valueOf(0), "serverStatus", "custom", "localFile", "serverId", Long.valueOf(1)}), null, null, new QueryHandler<Void>() {
                public Void handle(Cursor cursor) {
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            int id = cursor.getInt(0);
                            String description = cursor.getString(1);
                            String albumName = cursor.getString(2);
                            String appKey = cursor.getString(3);
                            String serverId = cursor.getString(4);
                            String localFile = CloudUtils.getLocalFileFromDescription(description);
                            if (TextUtils.isEmpty(localFile)) {
                                localFile = CloudUtils.getOwnerAlbumLocalFile(albumName, appKey);
                            }
                            boolean showInPhotosTab = false;
                            Boolean autoUpload = CloudUtils.getAutoUploadAttributeFromDescription(description);
                            if (String.valueOf(2).equals(serverId)) {
                                localFile = CloudUtils.getScreenshotsLocalFile();
                                if (autoUpload == null) {
                                    autoUpload = Boolean.valueOf(Preference.sGetIsScreenShotAutoUploadOpen());
                                }
                                showInPhotosTab = true;
                            } else if (TextUtils.isEmpty(appKey)) {
                                boolean pureCloudAlbum = ExtraTextUtils.startsWithIgnoreCase(localFile, "MIUI/Gallery/cloud");
                                if (autoUpload == null) {
                                    autoUpload = Boolean.valueOf(pureCloudAlbum);
                                }
                            } else if (autoUpload == null) {
                                autoUpload = Boolean.valueOf(Preference.sGetIsAlbumAutoUploadOpen(appKey));
                            }
                            GalleryDBHelper.this.refillLocalFileAndAttributes(db, id, localFile, autoUpload.booleanValue(), showInPhotosTab);
                        }
                    }
                    return null;
                }
            });
        }
    }

    private void upgradeTo75(SQLiteDatabase db, boolean isReCreateCloudTable) {
        if (!isReCreateCloudTable) {
            createIndexOnCloudTable_75(db);
        }
    }

    private void addRecordsForCameraAndScreenshots(final SQLiteDatabase db) {
        CloudUtils.addRecordsForCameraAndScreenshots(new Insertable() {
            public long insert(Uri uri, String table, String nullColumnHack, ContentValues values) {
                return db.insert(table, nullColumnHack, values);
            }
        });
    }

    private void refillLocalGroupId(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable, boolean isReCreateShareAlbumTable) {
        boolean z;
        boolean z2 = true;
        if (isReCreateCloudTable) {
            z = false;
        } else {
            z = true;
        }
        if (isReCreateShareImageTable || isReCreateShareAlbumTable) {
            z2 = false;
        }
        refillLocalGroupId(db, z, z2);
    }

    public static void refillLocalGroupId(SQLiteDatabase db, boolean fillOwner, boolean fillSharer) {
        SQLiteDatabase sQLiteDatabase;
        if (fillOwner) {
            sQLiteDatabase = db;
            SafeDBUtil.safeQuery(sQLiteDatabase, "cloud", new String[]{"_id", "serverId"}, String.format(Locale.US, "%s=%s AND %s='%s'", new Object[]{"serverType", Integer.valueOf(0), "serverStatus", "custom"}), null, null, new UpdateLocalGroupIdQueryHandler(db, "cloud", "groupId"));
        }
        if (fillSharer) {
            sQLiteDatabase = db;
            SafeDBUtil.safeQuery(sQLiteDatabase, "shareAlbum", new String[]{"_id", "albumId"}, String.format(Locale.US, "%s='%s'", new Object[]{"serverStatus", "custom"}), null, null, new UpdateLocalGroupIdQueryHandler(db, "shareImage", "albumId"));
        }
    }

    private void refillLocalFileAndAttributes(SQLiteDatabase db, int id, String localFile, boolean autoUpload, boolean showInPhotosTab) {
        String transformed = GalleryCloudUtils.transformToEditedColumnsElement(6);
        Locale locale = Locale.US;
        String str = "update %s set %s='%s', %s=((%s & ~%d) | %d | %d), %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s=%d";
        Object[] objArr = new Object[15];
        objArr[0] = "cloud";
        objArr[1] = "localFile";
        objArr[2] = localFile;
        objArr[3] = "attributes";
        objArr[4] = "attributes";
        objArr[5] = Long.valueOf(5);
        objArr[6] = Long.valueOf(autoUpload ? 1 : 0);
        objArr[7] = Long.valueOf(showInPhotosTab ? 4 : 0);
        objArr[8] = "editedColumns";
        objArr[9] = "editedColumns";
        objArr[10] = transformed;
        objArr[11] = transformed;
        objArr[12] = transformed;
        objArr[13] = "_id";
        objArr[14] = Integer.valueOf(id);
        safeExecSQL(db, String.format(locale, str, objArr));
    }

    private void upgradeTo76(SQLiteDatabase db, boolean isReCreatePeopleFaceTable) {
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", new TableColumn("relationType", "integer", "0"));
        }
    }

    private void upgradeTo77(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreatePeopleFaceTable) {
        if (!isReCreateCloudTable) {
            refillBabyAlbumDataTaken(db);
        }
        if (!isReCreatePeopleFaceTable) {
            refillRelationTypeOfPeople(db);
        }
    }

    private void refillBabyAlbumDataTaken(final SQLiteDatabase db) {
        SQLiteDatabase sQLiteDatabase = db;
        String str = null;
        SafeDBUtil.safeQuery(sQLiteDatabase, "cloud", new String[]{"_id"}, String.format(Locale.US, " NOT ( %s is null )", new Object[]{"peopleId"}), null, str, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        int id = cursor.getInt(0);
                        GalleryDBHelper.safeExecSQL(db, String.format(Locale.US, "update %s set %s = %d where %s = %d", new Object[]{"cloud", "dateTaken", Long.valueOf(-996), "_id", Integer.valueOf(id)}));
                    }
                }
                return null;
            }
        });
    }

    private void refillRelationTypeOfPeople(final SQLiteDatabase db) {
        SQLiteDatabase sQLiteDatabase = db;
        String str = null;
        SafeDBUtil.safeQuery(sQLiteDatabase, "peopleFace", new String[]{"_id", "peopleContactJsonInfo"}, String.format(Locale.US, " NOT ( %s is null )", new Object[]{"peopleContactJsonInfo"}), null, str, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        int id = cursor.getInt(0);
                        PeopleContactInfo info = PeopleContactInfo.fromJson(cursor.getString(1));
                        if (!(info == null || TextUtils.isEmpty(info.relationWithMe))) {
                            int relationType = info.getRelationType();
                            GalleryDBHelper.safeExecSQL(db, String.format(Locale.US, "update %s set %s = %d where %s = %d", new Object[]{"peopleFace", "relationType", Integer.valueOf(relationType), "_id", Integer.valueOf(id)}));
                        }
                    }
                }
                return null;
            }
        });
    }

    private void upgradeTo78(SQLiteDatabase db, boolean isReCreateCloudTable, boolean upgradeFromOldGallery) {
        if (!isReCreateCloudTable && !upgradeFromOldGallery) {
            String selection = String.format(Locale.US, "%s=%s AND (%s = %d OR %s=%d OR %s=%d OR (%s=%d AND %s='%s')) AND %s NOT NULL AND %s & %d = 0", new Object[]{"serverType", Integer.valueOf(0), "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(10), "localFlag", Integer.valueOf(0), "serverStatus", "custom", "babyInfoJson", "attributes", Long.valueOf(1)});
            String transformed = GalleryCloudUtils.transformToEditedColumnsElement(6);
            safeExecSQL(db, String.format(Locale.US, "update %s set %s=(%s | %d), %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s", new Object[]{"cloud", "attributes", "attributes", Long.valueOf(1), "editedColumns", "editedColumns", transformed, transformed, transformed, selection}));
        }
    }

    private void upgradeTo79(SQLiteDatabase db, boolean isReCreateCloudTable, boolean needDeleteSecretThumb) {
        if (!isReCreateCloudTable) {
            ContentValues values = new ContentValues();
            values.put("localGroupId", Long.valueOf(-1000));
            values.putNull("thumbnailFile");
            SafeDBUtil.safeUpdate(db, "cloud", values, "groupId=?", new String[]{String.valueOf(1000)});
        }
        if (needDeleteSecretThumb) {
            Log.i("GalleryDBHelper", "delete secret thumbnail, because it has no sha1");
            BackgroundJobService.startJobDeleteSecretThumbnail(this.mContext.getApplicationContext());
        }
    }

    private void upgradeTo80(SQLiteDatabase db, boolean upgradeFromOldGallery) {
        if (!upgradeFromOldGallery) {
            safeExecSQL(db, String.format(Locale.US, "update %s set %s=(%s & ~%d)  where %s=%s and (%s is null or %s!='%s')", new Object[]{"cloud", "attributes", "attributes", Long.valueOf(4), "serverType", Integer.valueOf(0), "serverId", "serverId", Long.valueOf(1)}));
        }
    }

    private void upgradeTo81(SQLiteDatabase db, boolean isReCreatePeopleFaceTable) {
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", new TableColumn("eTag", "integer", "0"));
        }
    }

    private void upgradeTo82(SQLiteDatabase db, boolean isReCreateCloudTable) {
        if (!isReCreateCloudTable) {
            ContentValues values = new ContentValues();
            values.put("localGroupId", Long.valueOf(-1000));
            SafeDBUtil.safeUpdate(db, "cloud", values, "groupId=?", new String[]{String.valueOf(1000)});
        }
    }

    private void upgradeTo83(SQLiteDatabase db, boolean upgradeFromLocationIdentityDB) {
        if (upgradeFromLocationIdentityDB) {
            ContentValues values = new ContentValues();
            values.putNull("location");
            SafeDBUtil.safeUpdate(db, "cloud", values, null, null);
            LocationGenerator.getInstance().generate(this.mContext);
            Log.d("GalleryDBHelper", "upgradeTo83 success");
        }
    }

    private void upgradeTo84(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareAlbumTable) {
        String sql = "update %s set attributes=( ((attributes & 1) * 1) | ((attributes & 2) * 2) | ((attributes & 4) * 4) ) where attributes > 0";
        if (!isReCreateCloudTable) {
            db.execSQL(String.format(Locale.US, sql, new Object[]{"cloud"}));
        }
        if (!isReCreateShareAlbumTable) {
            db.execSQL(String.format(Locale.US, sql, new Object[]{"shareAlbum"}));
        }
    }

    private void upgradeTo85(SQLiteDatabase db) {
        createTable(db, "discoveryMessage", this.mDiscoveryMessageColumns);
        createTable(db, "recentDiscoveredMedia", this.mRecentDiscoveredMediaColumns);
    }

    private void upgradeTo86(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", new TableColumn("extraGPS", "text"));
            addColumn(db, "cloud", new TableColumn("address", "text"));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", new TableColumn("extraGPS", "text"));
            addColumn(db, "shareImage", new TableColumn("address", "text"));
        }
    }

    private void upgradeTo87(SQLiteDatabase db) {
        createTable(db, "cloudControl", this.mCloudControlColumns);
    }

    private void upgradeTo88(SQLiteDatabase db, boolean isReCreatePeopleFaceTable) {
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", new TableColumn("relationText", "text"));
        }
    }

    private void upgradeTo89(SQLiteDatabase db, boolean isReCreateCloudTable) {
        if (!isReCreateCloudTable) {
            String sql = "UPDATE %s SET attributes=(attributes | (((attributes & 2) | (NOT (attributes & 1))) << 6))  WHERE (serverType=0) AND " + Cloud.ALIAS_NON_SYSTEM_ALBUM;
            db.execSQL(String.format(Locale.US, sql, new Object[]{"cloud"}));
        }
    }

    private void upgradeTo90(SQLiteDatabase db, boolean isReCreateCloudTable) {
        createTable(db, "favorites", this.mFavoritesColumns);
        if (!isReCreateCloudTable) {
            updateCameraAlbumValues(db);
            refillIsFavorite(db);
        }
    }

    private void updateCameraAlbumValues(SQLiteDatabase db) {
        safeExecSQL(db, String.format(Locale.US, "UPDATE %s SET %s=%d, %s=%d, %s=(CASE WHEN %s=null THEN null WHEN %s>%d THEN %d ELSE %s END) WHERE %s=%d", new Object[]{"cloud", "dateTaken", Long.valueOf(-999), "mixedDateTime", Long.valueOf(-999), "sortBy", "sortBy", "sortBy", Long.valueOf(-1002), Long.valueOf(-999), "sortBy", "serverId", Long.valueOf(1)}));
    }

    private void refillIsFavorite(final SQLiteDatabase db) {
        String[] strArr = new String[]{"description", "sha1"};
        SQLiteDatabase sQLiteDatabase = db;
        SafeDBUtil.safeQuery(sQLiteDatabase, "cloud", strArr, "serverType IN (1,2) AND description NOT NULL AND description != '' AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", null, null, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null) {
                    Set<String> sha1Set = Sets.newHashSet();
                    while (cursor.moveToNext()) {
                        String description = cursor.getString(0);
                        String sha1 = cursor.getString(1);
                        if (!(TextUtils.isEmpty(sha1) || sha1Set.contains(sha1))) {
                            Boolean isFavorite = CloudUtils.getIsFavoriteFromDescription(description);
                            if (isFavorite != null && isFavorite.booleanValue()) {
                                ContentValues values = new ContentValues();
                                values.put("isFavorite", Integer.valueOf(1));
                                values.put("sha1", sha1);
                                values.put("dateFavorite", Long.valueOf(System.currentTimeMillis()));
                                values.put("source", Integer.valueOf(1));
                                if (SafeDBUtil.safeInsert(db, "favorites", values) > 0) {
                                    sha1Set.add(sha1);
                                }
                            }
                        }
                    }
                }
                return null;
            }
        });
    }

    private void upgradeTo91(SQLiteDatabase db, boolean isReCreateCloudTable, boolean isReCreateShareImageTable) {
        if (!isReCreateCloudTable) {
            addColumn(db, "cloud", new TableColumn("specialTypeFlags", "integer", String.valueOf(0)));
        }
        if (!isReCreateShareImageTable) {
            addColumn(db, "shareImage", new TableColumn("specialTypeFlags", "integer", String.valueOf(0)));
        }
    }

    private void upgradeTo92(SQLiteDatabase db, boolean isReCreatePeopleFaceTable) {
        if (!isReCreatePeopleFaceTable) {
            addColumn(db, "peopleFace", new TableColumn("faceCoverScore", "real", String.valueOf(-1.0d)));
        }
    }

    private void deleteVideoThumbnailFile(final ArrayList<String> videos) {
        new Runnable() {
            public void run() {
                Iterator it = videos.iterator();
                while (it.hasNext()) {
                    String sha1 = (String) it.next();
                    if (new File(StorageUtils.getPriorMicroThumbnailDirectory(), CloudUtils.getThumbnailNameBySha1(sha1)).exists()) {
                        MediaFileUtils.deleteFileType(FileType.MICRO_THUMBNAIL, file);
                    }
                    if (new File(Storage.getMainSDCardCloudThumbnailFilePath(), CloudUtils.getThumbnailNameBySha1(sha1)).exists()) {
                        MediaFileUtils.deleteFileType(FileType.THUMBNAIL, file);
                    }
                }
            }
        }.run();
    }

    private ArrayList<String> getVideosExceptCreated(SQLiteDatabase db, String tableName, String whereCause) {
        Cursor cursor = db.query(tableName, new String[]{"sha1"}, whereCause, null, null, null, null);
        if (cursor == null) {
            return null;
        }
        try {
            ArrayList<String> sha1List = new ArrayList();
            while (cursor.moveToNext()) {
                sha1List.add(cursor.getString(0));
            }
            return sha1List;
        } finally {
            cursor.close();
        }
    }

    private static void setAllSyncTagAsDefault(Context context, SQLiteDatabase db) {
        Log.d("GalleryDBHelperConvertOldData", "setAllSyncTagAsDefault, url != 2.1");
        ContentValues values = new ContentValues();
        values.put("syncTag", Integer.valueOf(0));
        values.put("shareSyncTagAlbumList", Integer.valueOf(0));
        values.put("shareSyncTagAlbumInfo", Integer.valueOf(0));
        values.put("shareSyncTagImageList", Integer.valueOf(0));
        db.update("cloudSetting", values, null, null);
        values = new ContentValues();
        values.put("albumImageTag", Integer.valueOf(0));
        db.update("shareAlbum", values, null, null);
        SyncUtil.requestSync(context);
    }

    public static String[] getPeopleFaceTables() {
        return (String[]) Arrays.copyOf(sPeopleFaceTables, sPeopleFaceTables.length);
    }

    public static String[] getCloudTables() {
        return (String[]) Arrays.copyOf(sCloudTables, sCloudTables.length);
    }

    public static String[] getCloudControlTables() {
        return (String[]) Arrays.copyOf(sCloudControlTables, sCloudControlTables.length);
    }

    private void cleanCloudData(SQLiteDatabase db) {
        for (String tableName : sCloudTables) {
            try {
                db.delete(tableName, null, null);
            } catch (Throwable e) {
                Log.w("GalleryDBHelper", e);
            }
        }
    }

    public Cursor query(String tableName, String[] projection, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        return getReadableDatabase().query(tableName, projection, selection, selectionArgs, groupBy, having, orderBy, limit);
    }

    public Cursor query(boolean distinct, String tableName, String[] projection, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        return getReadableDatabase().query(distinct, tableName, projection, selection, selectionArgs, groupBy, having, orderBy, limit);
    }

    public long insert(String tableName, ContentValues values) {
        return getWritableDatabase().insert(tableName, null, values);
    }

    public int update(String tableName, ContentValues values, String selection, String[] selectionArgs) {
        return getWritableDatabase().update(tableName, values, selection, selectionArgs);
    }

    public int delete(String tableName, String selection, String[] selectionArgs) {
        return getWritableDatabase().delete(tableName, selection, selectionArgs);
    }

    public boolean execSQL(String sql) {
        try {
            getWritableDatabase().execSQL(sql);
            return true;
        } catch (Object e) {
            Log.d("GalleryDBHelper", "exec sql", e);
            return false;
        }
    }

    public void analyze() {
        execSQL("analyze;");
    }

    public ArrayList<TableColumn> getCloudColumns() {
        initCloudColumns();
        return this.mCloudColumns;
    }

    public static String getCursorString(Cursor cursor, int columnIndex) {
        String result = cursor.getString(columnIndex);
        return result == null ? "" : result;
    }

    public boolean deleteDatabase() {
        return this.mContext.deleteDatabase("gallery.db");
    }
}
