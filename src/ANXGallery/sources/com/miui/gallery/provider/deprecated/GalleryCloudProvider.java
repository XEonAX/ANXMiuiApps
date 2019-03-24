package com.miui.gallery.provider.deprecated;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.AlbumManager;
import com.miui.gallery.provider.GalleryContentResolver;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.CloudUser;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.GalleryContract.ShareUser;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.util.UriUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import miui.yellowpage.Tag.TagWebService.CommonResult;

public class GalleryCloudProvider extends ContentProvider {
    private static final String[] SAFE_INSERT_PROJECTION = new String[]{"_id", "fileName"};
    public static final Uri SYNC_SETTINGS_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("syncSettings").build();
    public static final Uri UPLOAD_STATE_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("uploadState").build();
    protected static GalleryDBHelper sDBHelper;
    protected static final UriMatcher sUriMatcher = new UriMatcher(-1);
    private ContentResolver mContentResolver;
    private int mHasPendingItem = 0;
    private int mIsUploading = 0;
    protected MediaManager mMediaManager = null;

    protected static class AlbumInfo {
        protected static final String[] PROJECTION = new String[]{"_id", "attributes"};
        public final long mAlbumId;
        public final long mAttributes;

        public AlbumInfo(long albumId, long attributes) {
            this.mAlbumId = albumId;
            this.mAttributes = attributes;
        }
    }

    private class ContentResolver extends GalleryContentResolver {
        private ContentResolver() {
        }

        protected Object matchUri(Uri uri) {
            return GalleryCloudProvider.matchTableName(uri);
        }

        protected void notifyInternal(Uri uri, ContentObserver observer, boolean sync, int syncReason) {
            switch (GalleryCloudProvider.sUriMatcher.match(uri)) {
                case 1:
                case 2:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Media.URI, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Media.URI_OWNER_ALBUM_MEDIA, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Media.URI_ALL, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.ONE_PERSON_URI, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.PERSONS_URI, observer, false);
                    break;
                case 5:
                case 6:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    break;
                case 7:
                case 8:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Album.URI_SHARE_ALL, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(ShareUser.SHARE_USER_URI, observer, false);
                    break;
                case 9:
                case 10:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Album.URI, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Media.URI_OTHER_ALBUM_MEDIA, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Media.URI_ALL, observer, false);
                    break;
                case 11:
                case 12:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Album.URI_SHARE_ALL, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(CloudUser.CLOUD_USER_URI, observer, false);
                    break;
                case 17:
                case 18:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(Album.URI_SHARE_ALL, observer, false);
                    break;
                case 24:
                case 25:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.ONE_PERSON_URI, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.PERSONS_URI, observer, false);
                    break;
                case 26:
                case 27:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.ONE_PERSON_URI, observer, false);
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.PERSONS_URI, observer, false);
                    break;
                case 30:
                case 31:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(PeopleFace.RECOMMEND_FACES_OF_ONE_PERSON_URI, observer, false);
                    break;
                default:
                    GalleryCloudProvider.this.getContext().getContentResolver().notifyChange(uri, observer, false);
                    break;
            }
            if (sync) {
                SyncUtil.requestSync(GalleryCloudProvider.this.getContext(), new Builder().setSyncType(SyncType.NORMAL).setSyncReason(syncReason).setDelayUpload(true).build());
            }
        }
    }

    static {
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud", 1);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloud/#", 2);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudSetting", 3);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudSetting/#", 4);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareAlbum", 5);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareAlbum/#", 6);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareUser", 7);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareUser/#", 8);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareImage", 9);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareImage/#", 10);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudUser", 11);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudUser/#", 12);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudCache", 13);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "cloudCache/#", 14);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "newFlagCache", 15);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "newFlagCache/#", 16);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "userInfo", 17);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "userInfo/#", 18);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "ownerSubUbifocus", 19);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "ownerSubUbifocus/#", 20);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareSubUbifocus", 21);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "shareSubUbifocus/#", 22);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFace", 24);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFace/#", 25);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "faceToImages", 26);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "faceToImages/#", 27);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFaceJoinFaceToImagesJoinCloud", 28);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFaceJoinFaceToImagesJoinCloud/#", 29);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFaceJoinFaceToImages", 38);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleFaceJoinFaceToImages/#", 39);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "uploadState", 23);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleRecommend", 30);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "peopleRecommend/#", 31);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", CommonResult.RESULT_TYPE_EVENT, 32);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "event/#", 33);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "eventPhoto", 34);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "eventPhoto/#", 35);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "albumCoverKey", 36);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "albumCoverKey/#", 37);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "syncInfo", 40);
        sUriMatcher.addURI("com.miui.gallery.cloud.provider", "syncSettings", 41);
    }

    public boolean onCreate() {
        sDBHelper = GalleryDBHelper.getInstance(getContext());
        this.mContentResolver = new ContentResolver();
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String orderBy) {
        Cursor c = queryNonDBData(uri, projection, selection, selectionArgs, orderBy);
        if (c != null) {
            return c;
        }
        c = querySyncInfo(uri, projection, selection, selectionArgs, orderBy);
        if (c != null) {
            return c;
        }
        long id = getIdFromString(uri.getLastPathSegment());
        String limit = UriUtil.getLimit(uri);
        String groupBy = UriUtil.getGroupBy(uri);
        String having = UriUtil.getHaving(uri);
        String tables = matchTableName(uri);
        if (!tables.equalsIgnoreCase("peopleFace join FaceToImages join cloud")) {
            tables = tables + " as master";
        }
        return sDBHelper.query(UriUtil.getDistinct(uri), tables, projection, appendIdSelection(selection, id), selectionArgs, groupBy, having, orderBy, limit);
    }

    private String appendIdSelection(String selection, long id) {
        String idSelection = null;
        if (id > 0) {
            idSelection = "_id = " + id;
        }
        if (TextUtils.isEmpty(selection) && TextUtils.isEmpty(idSelection)) {
            return null;
        }
        if (TextUtils.isEmpty(selection) && !TextUtils.isEmpty(idSelection)) {
            return idSelection;
        }
        if (TextUtils.isEmpty(selection) || !TextUtils.isEmpty(idSelection)) {
            return (TextUtils.isEmpty(selection) || TextUtils.isEmpty(idSelection)) ? null : "(" + selection + " ) AND " + idSelection;
        } else {
            return selection;
        }
    }

    public static long getIdFromString(String id) {
        if (id != null) {
            try {
                return Long.valueOf(id).longValue();
            } catch (NumberFormatException e) {
            }
        }
        return -1;
    }

    protected long onPreInsert(SQLiteDatabase db, String table, ContentValues values) {
        long id = -1;
        Cursor queryCursor = null;
        try {
            if ("cloud".equals(table)) {
                Integer type = values.getAsInteger("serverType");
                if (type != null) {
                    SQLiteDatabase sQLiteDatabase;
                    if (type.intValue() == 1 || type.intValue() == 2) {
                        String sha1 = values.getAsString("sha1");
                        String localGroupId = values.getAsString("localGroupId");
                        String thumbnail = values.getAsString("thumbnailFile");
                        String fileName = values.getAsString("fileName");
                        if (!(TextUtils.isEmpty(sha1) || TextUtils.isEmpty(localGroupId))) {
                            if (!TextUtils.isEmpty(thumbnail) || TextUtils.isEmpty(fileName)) {
                                sQLiteDatabase = db;
                                queryCursor = sQLiteDatabase.query("cloud", SAFE_INSERT_PROJECTION, "sha1=? AND localGroupId=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{sha1, localGroupId}, null, null, null);
                            } else {
                                sQLiteDatabase = db;
                                queryCursor = sQLiteDatabase.query("cloud", SAFE_INSERT_PROJECTION, "sha1=? AND localGroupId=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND fileName=?", new String[]{sha1, localGroupId, fileName}, null, null, null);
                            }
                        }
                    } else if (type.intValue() == 0) {
                        if (!TextUtils.isEmpty(values.getAsString("localFile"))) {
                            sQLiteDatabase = db;
                            queryCursor = sQLiteDatabase.query("cloud", SAFE_INSERT_PROJECTION, "localFile like ? AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{values.getAsString("localFile")}, null, null, null);
                        }
                    }
                }
                if (queryCursor != null && queryCursor.moveToFirst()) {
                    id = queryCursor.getLong(0);
                    String name = queryCursor.getString(1);
                    Log.w("GalleryCloudProvider", "item conflict in onPreInsert %s", name);
                    Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
                    Map<String, String> map = params;
                    map.put("name", values.getAsString("fileName") + "_" + name);
                    BaseSamplingStatHelper.recordCountEvent("Sync", "sync_insert_transaction", params);
                }
            }
            BaseMiscUtil.closeSilently(queryCursor);
            return id;
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
        }
    }

    public Uri insert(Uri uri, ContentValues values) {
        if (sDBHelper == null) {
            return null;
        }
        if (insertNonDBData(uri, values) || insertSyncInfo(uri, values)) {
            return null;
        }
        String table = matchTableName(uri);
        SQLiteDatabase db = sDBHelper.getWritableDatabase();
        db.beginTransactionNonExclusive();
        try {
            long rowId = onPreInsert(db, table, values);
            if (rowId == -1) {
                validateInsertValues(table, values);
                if ("cloud".equals(table) || "shareImage".equals(table)) {
                    appendValuesForCloud(values, true);
                }
                rowId = db.insert(table, null, values);
                if (rowId == -1) {
                    return null;
                }
                if ("cloud".equals(table)) {
                    this.mMediaManager.insert(rowId, values);
                    if (values.containsKey("serverType") && Numbers.equals(values.getAsInteger("serverType"), 0)) {
                        Long attr = values.getAsLong("attributes");
                        this.mMediaManager.insertAttributes(rowId, attr == null ? 0 : attr.longValue());
                    }
                }
            } else {
                update(uri, values, "_id=?", new String[]{String.valueOf(rowId)});
            }
            db.setTransactionSuccessful();
            db.endTransaction();
            if (rowId == -1) {
                return null;
            }
            Uri result = uri.buildUpon().appendPath(String.valueOf(rowId)).build();
            if (shouldRequestSync(uri, values)) {
                this.mContentResolver.notifyChangeDelay(result, null, true);
                return result;
            }
            this.mContentResolver.notifyChangeDelay(result, null, false);
            return result;
        } finally {
            db.endTransaction();
        }
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        if (sDBHelper == null) {
            return 0;
        }
        if (deleteNonDBData(uri, selection, selectionArgs) || deleteSyncInfo(uri, selection, selectionArgs)) {
            return 0;
        }
        String table = matchTableName(uri);
        String selectById = null;
        if ("cloud".equals(table)) {
            selectById = genIDSelection(selection, selectionArgs);
        }
        int result = sDBHelper.delete(table, selection, selectionArgs);
        if (!TextUtils.isEmpty(selectById)) {
            this.mMediaManager.delete(selectById, null);
            deleteAttributes(selectById);
        }
        if (result <= 0) {
            return result;
        }
        this.mContentResolver.notifyChange(uri, null, false);
        return result;
    }

    protected boolean isMediaItem(ContentValues values) {
        if (values == null) {
            return false;
        }
        Number type = values.getAsInteger("serverType");
        if (type == null || (!Numbers.equals(type, 1) && !Numbers.equals(type, 2))) {
            return false;
        }
        return true;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        int result = 0;
        if (!(sDBHelper == null || updateNonDBData(uri, values, selection, selectionArgs) || updateSyncInfo(uri, values, selection, selectionArgs))) {
            String table = matchTableName(uri);
            String selectById = null;
            if ("cloud".equals(table)) {
                selectById = genIDSelection(selection, selectionArgs);
                if (values.containsKey("attributes")) {
                    updateAttributes(sDBHelper.getWritableDatabase(), table, selectById, values);
                }
            }
            validateUpdateValues(table, values);
            if ("cloud".equals(table) || "shareImage".equals(table)) {
                appendValuesForCloud(values, false);
            }
            result = sDBHelper.update(table, values, selection, selectionArgs);
            if (!(TextUtils.isEmpty(selectById) || this.mMediaManager.update(selectById, null, values) == result || !isMediaItem(values) || this.mMediaManager.isItemDeleted(values))) {
                this.mMediaManager.insert(sDBHelper.getWritableDatabase(), selection, selectionArgs);
            }
            if (result > 0 && needNotifyUpdate(values)) {
                this.mContentResolver.notifyChangeDelay(uri, null, shouldRequestSync(uri, values));
            }
        }
        return result;
    }

    protected boolean needNotifyUpdate(ContentValues values) {
        if (values == null || (!values.containsKey("localFlag") && !values.containsKey("serverStatus") && !values.containsKey("specialTypeFlags"))) {
            return false;
        }
        return true;
    }

    protected ContentValues appendValuesForCloud(ContentValues values, boolean isInsert) {
        String appName = FileUtils.getPackageNameFromScreenshotFileName(getContext(), values.getAsString("fileName"));
        if (!TextUtils.isEmpty(appName)) {
            values.put("location", appName);
        } else if (isInsert && TextUtils.isEmpty(values.getAsString("location"))) {
            LocationManager.getInstance().appendDefaultLocationValues(values);
        }
        return values;
    }

    private static void validateInsertValues(String tableName, ContentValues values) {
        if (TextUtils.equals("userInfo", tableName) && !values.containsKey("date_modified")) {
            values.put("date_modified", Long.valueOf(System.currentTimeMillis()));
        }
    }

    private static void validateUpdateValues(String tableName, ContentValues values) {
        if (TextUtils.equals("userInfo", tableName) && !values.containsKey("date_modified")) {
            values.put("date_modified", Long.valueOf(System.currentTimeMillis()));
        }
    }

    private static boolean shouldRequestSync(Uri uri, ContentValues values) {
        if (uri.getQueryParameter("URI_PARAM_REQUEST_SYNC") != null) {
            return uri.getBooleanQueryParameter("URI_PARAM_REQUEST_SYNC", false);
        }
        if (!values.containsKey("localFlag") || values.getAsInteger("localFlag").intValue() == 0) {
            return false;
        }
        return true;
    }

    public static Cursor rawQuery(String sql, String[] selectionArgs) {
        if (sDBHelper == null) {
            return null;
        }
        return sDBHelper.getWritableDatabase().rawQuery(sql, null);
    }

    public String getType(Uri uri) {
        return null;
    }

    public static boolean isCloudUri(Uri uri) {
        return uri.toString().startsWith(GalleryContract.AUTHORITY_URI.toString());
    }

    private static String matchTableName(Uri uri) {
        switch (sUriMatcher.match(uri)) {
            case 1:
            case 2:
                return "cloud";
            case 3:
            case 4:
                return "cloudSetting";
            case 5:
            case 6:
                return "shareAlbum";
            case 7:
            case 8:
                return "shareUser";
            case 9:
            case 10:
                return "shareImage";
            case 11:
            case 12:
                return "cloudUser";
            case 13:
            case 14:
                return "cloudCache";
            case 15:
            case 16:
                return "newFlagCache";
            case 17:
            case 18:
                return "userInfo";
            case 19:
            case 20:
                return "ownerSubUbifocus";
            case 21:
            case 22:
                return "shareSubUbifocus";
            case 23:
                return "uploadState";
            case 24:
            case 25:
                return "peopleFace";
            case 26:
            case 27:
                return "faceToImages";
            case 28:
            case 29:
                return "peopleFace join FaceToImages join cloud";
            case 30:
            case 31:
                return "peopleRecommend";
            case 32:
            case 33:
                return CommonResult.RESULT_TYPE_EVENT;
            case 34:
            case 35:
                return "eventPhoto";
            case 36:
            case 37:
                return "albumCoverKey";
            case 38:
            case 39:
                return "peopleFace join faceToImages";
            default:
                Log.d("GalleryCloudProvider", "match table name, uri is not cloud");
                return null;
        }
    }

    private Cursor queryNonDBData(Uri uri, String[] projection, String selection, String[] selectionArgs, String orderBy) {
        int i = 1;
        int matchResult = sUriMatcher.match(uri);
        MatrixCursor c;
        if (matchResult == 23) {
            c = new MatrixCursor(new String[]{"is_upload", "has_pending_item"}, 1);
            SyncLog.d("GalleryCloudProvider", "query upload state isUploading[%d], hasPendingItem[%d]", Integer.valueOf(this.mIsUploading), Integer.valueOf(this.mHasPendingItem));
            c.addRow(new Object[]{Integer.valueOf(this.mIsUploading), Integer.valueOf(this.mHasPendingItem)});
            return c;
        } else if (matchResult != 41) {
            return null;
        } else {
            c = new MatrixCursor(new String[]{"backupOnlyInWifi"}, 1);
            boolean backupOnlyWifi = Sync.getBackupOnlyInWifi();
            SyncLog.d("GalleryCloudProvider", "query backup only wifi [%s]", Boolean.valueOf(backupOnlyWifi));
            Object[] objArr = new Object[1];
            if (!backupOnlyWifi) {
                i = 0;
            }
            objArr[0] = Integer.valueOf(i);
            c.addRow(objArr);
            return c;
        }
    }

    private boolean updateNonDBData(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        if (sUriMatcher.match(uri) != 23) {
            return false;
        }
        Boolean isUploading = values.getAsBoolean("is_upload");
        Boolean hasPendingItem = values.getAsBoolean("has_pending_item");
        if (isUploading != null) {
            if (isUploading.booleanValue()) {
                this.mIsUploading = 1;
            } else {
                this.mIsUploading = 0;
            }
        }
        if (hasPendingItem != null) {
            if (hasPendingItem.booleanValue()) {
                this.mHasPendingItem = 1;
            } else {
                this.mHasPendingItem = 0;
            }
        }
        this.mContentResolver.notifyChange(uri, null, false);
        return true;
    }

    private boolean deleteNonDBData(Uri uri, String selection, String[] selectionArgs) {
        if (sUriMatcher.match(uri) == 23) {
            return true;
        }
        return false;
    }

    private Cursor querySyncInfo(Uri uri, String[] projection, String selection, String[] selectionArgs, String orderBy) {
        if (sUriMatcher.match(uri) != 40) {
            return null;
        }
        String OWNER_DIRTY_SELECTION = String.format(Locale.US, "(%s) AND (%s = %s OR %s = %s) AND (%s = %s OR %s = %s) AND ((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))", new Object[]{CloudUtils.SELECTION_OWNER_NEED_SYNC, "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), Long.valueOf(CloudUtils.getMaxImageSizeLimit()), Long.valueOf(CloudUtils.getMaxVideoSizeLimit())});
        String SHARER_DIRTY_SELECTION = String.format(Locale.US, "(%s = %d OR %s = %d) AND (%s = %s OR %s = %s) AND ((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))", new Object[]{"localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), Long.valueOf(CloudUtils.getMaxImageSizeLimit()), Long.valueOf(CloudUtils.getMaxVideoSizeLimit())});
        String SYNCED_SELECTION = String.format(Locale.US, "%s = '%s' AND %s = %d AND (%s = %s OR %s = %s) ", new Object[]{"serverStatus", "custom", "localFlag", Integer.valueOf(0), "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2)});
        int syncableCount = -1;
        int syncedCount = -1;
        if (projection == null) {
            projection = new String[]{"syncableCount"};
        }
        Integer[] columnValues = new Integer[projection.length];
        for (int i = 0; i < projection.length; i++) {
            if (TextUtils.equals(projection[i], "syncableCount")) {
                if (syncableCount == -1) {
                    syncableCount = getMediaCount("cloud", OWNER_DIRTY_SELECTION) + getMediaCount("shareImage", SHARER_DIRTY_SELECTION);
                }
                columnValues[i] = Integer.valueOf(syncableCount);
            } else if (TextUtils.equals(projection[i], "syncedCount")) {
                if (syncedCount == -1) {
                    syncedCount = getMediaCount("cloud", SYNCED_SELECTION) + getMediaCount("shareImage", SYNCED_SELECTION);
                }
                columnValues[i] = Integer.valueOf(syncedCount);
            } else {
                throw new IllegalArgumentException("unsupported argument: " + projection[i]);
            }
        }
        SyncLog.d("GalleryCloudProvider", "query syncInfo syncableCount[%d], syncedCount[%d]", Integer.valueOf(syncableCount), Integer.valueOf(syncedCount));
        MatrixCursor c = new MatrixCursor(projection, 1);
        c.addRow(columnValues);
        return c;
    }

    private int getMediaCount(String table, String selection) {
        Cursor cursor = null;
        try {
            cursor = sDBHelper.query(table, new String[]{"count(_id)"}, selection, null, null, null, null, null);
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return 0;
            }
            int i = cursor.getInt(0);
            return i;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private boolean updateSyncInfo(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        if (sUriMatcher.match(uri) != 40) {
            return false;
        }
        Log.w("GalleryCloudProvider", "operation is not supported!");
        return true;
    }

    private boolean deleteSyncInfo(Uri uri, String selection, String[] selectionArgs) {
        if (sUriMatcher.match(uri) != 40) {
            return false;
        }
        Log.w("GalleryCloudProvider", "operation is not supported!");
        return true;
    }

    private boolean insertSyncInfo(Uri uri, ContentValues values) {
        if (sUriMatcher.match(uri) != 40) {
            return false;
        }
        Log.w("GalleryCloudProvider", "operation is not supported!");
        return true;
    }

    protected final String genIDSelection(String selection, String[] args) {
        StringBuilder builder = new StringBuilder();
        builder.append("_id");
        builder.append(" IN (");
        builder.append(TextUtils.join(",", getIdsSelection(selection, args)));
        builder.append(')');
        return builder.toString();
    }

    private final List<Long> getIdsSelection(String selection, String[] args) {
        Cursor cursor = sDBHelper.query("cloud", new String[]{"_id"}, selection, args, null, null, null, null);
        if (cursor == null) {
            return null;
        }
        try {
            List<Long> ids = new ArrayList();
            while (cursor.moveToNext()) {
                ids.add(Long.valueOf(cursor.getLong(0)));
            }
            return ids;
        } finally {
            cursor.close();
        }
    }

    protected final AlbumInfo[] genSelectedAlbums(String selectById) {
        Cursor cursor = sDBHelper.query("cloud", AlbumInfo.PROJECTION, selectById + " AND " + "serverType" + " = ?", new String[]{String.valueOf(0)}, null, null, null, null);
        AlbumInfo[] infos = new AlbumInfo[(cursor == null ? 0 : cursor.getCount())];
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    infos[cursor.getPosition()] = new AlbumInfo(cursor.getLong(0), cursor.getLong(1));
                } finally {
                    cursor.close();
                }
            }
        }
        return infos;
    }

    protected final void updateAttributes(SQLiteDatabase db, String table, String selectById, ContentValues values) {
        AlbumInfo[] infos = genSelectedAlbums(selectById);
        if (infos != null && infos.length > 0) {
            Long attr = values.getAsLong("attributes");
            List<Long> needUpdateEditedColumns = new ArrayList();
            for (AlbumInfo info : infos) {
                this.mMediaManager.updateAttributes(info.mAlbumId, attr == null ? 0 : attr.longValue());
                if (!values.containsKey("editedColumns")) {
                    for (Long syncAttr : AlbumManager.getAlbumSyncAttributes()) {
                        if ((attr.longValue() & syncAttr.longValue()) != (info.mAttributes & syncAttr.longValue())) {
                            needUpdateEditedColumns.add(Long.valueOf(info.mAlbumId));
                            break;
                        }
                    }
                }
            }
            if (needUpdateEditedColumns.size() > 0) {
                String editedColumnsElement = GalleryCloudUtils.transformToEditedColumnsElement(6);
                db.execSQL(String.format(Locale.US, "UPDATE %s SET %s=coalesce(replace(%s, '%s', '') || '%s', '%s') WHERE %s IN (%s)", new Object[]{table, "editedColumns", "editedColumns", editedColumnsElement, editedColumnsElement, editedColumnsElement, "_id", TextUtils.join(",", needUpdateEditedColumns)}));
            }
        }
    }

    protected final void deleteAttributes(String selectById) {
        AlbumInfo[] infos = genSelectedAlbums(selectById);
        if (infos != null && infos.length > 0) {
            for (AlbumInfo info : infos) {
                this.mMediaManager.deleteAttributes(info.mAlbumId);
            }
        }
    }

    private boolean insertNonDBData(Uri uri, ContentValues values) {
        if (sUriMatcher.match(uri) == 23) {
            return true;
        }
        return false;
    }
}
