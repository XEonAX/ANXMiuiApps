package com.miui.gallery.provider.cloudmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CloudUtils.SecretAlbumUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.SpaceFullHandler;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.photosapi.PhotosOemApi;
import com.miui.gallery.preference.GalleryPreferences.Album;
import com.miui.gallery.provider.AlbumManager;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.scanner.SaveToCloudUtil;
import com.miui.gallery.scanner.SaveToCloudUtil.SaveParams;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import miui.provider.ExtraTelephony.DeletableSyncColumns;
import miui.provider.Weather.AQIInfo;
import miui.provider.Weather.AlertInfo;
import miui.yellowpage.YellowPageContract.MipubPhoneEvent;
import org.json.JSONException;
import org.json.JSONObject;

public class CloudManager {
    private static final Set<String> METHODS = new HashSet();
    private static final String[] PRIVATE_COPYABLE_PROJECTION = new String[]{"thumbnailFile", "downloadFile", "localFile", "microthumbfile"};
    static final String[] PROJECTION = new String[]{"_id", "groupId", "localFlag", "localGroupId", "serverId", "serverType", "fileName", "localFile", "thumbnailFile", "sha1", "ubiSubImageCount", "secretKey", "microthumbfile", "albumId", "description", "size", "dateModified", "mimeType", "title", "description", "dateTaken", "duration", "serverTag", "serverStatus", "downloadFile", "sortBy", "localImageId", "downloadFileStatus", "downloadFileTime", "mixedDateTime", "exifImageWidth", "exifImageLength", "exifOrientation", "exifGPSLatitude", "exifGPSLongitude", "exifMake", "exifModel", "exifFlash", "exifGPSLatitudeRef", "exifGPSLongitudeRef", "exifExposureTime", "exifFNumber", "exifISOSpeedRatings", "exifGPSAltitude", "exifGPSAltitudeRef", "exifGPSTimeStamp", "exifGPSDateStamp", "exifWhiteBalance", "exifFocalLength", "exifGPSProcessingMethod", "exifDateTime", "creatorId", "ubiFocusIndex", "ubiSubIndex", "editedColumns", "fromLocalGroupId", "location", "extraGPS", "address", "specialTypeFlags"};
    private static final String[] PUBLIC_COPYABLE_PROJECTION = new String[]{"fileName", "dateTaken", "dateModified", "description", "serverType", "size", "mimeType", "title", "sha1", "duration", "appKey", "babyInfoJson", "mixedDateTime", "location", "extraGPS", "address", "exifImageWidth", "exifImageLength", "exifOrientation", "exifGPSLatitude", "exifGPSLongitude", "exifMake", "exifModel", "exifFlash", "exifGPSLatitudeRef", "exifGPSLongitudeRef", "exifExposureTime", "exifFNumber", "exifISOSpeedRatings", "exifGPSAltitude", "exifGPSAltitudeRef", "exifGPSTimeStamp", "exifGPSDateStamp", "exifWhiteBalance", "exifFocalLength", "exifGPSProcessingMethod", "exifDateTime", "ubiSubImageCount", "ubiFocusIndex", "ubiSubIndex", "specialTypeFlags"};
    private static final String[] QUERY_BY_PATH_PROJECTION = new String[]{"_id", "sha1", "size"};

    private static abstract class CursorTask {
        protected Context mContext;
        protected Cursor mCursor;
        private ArrayList<Long> mDirtyBulk;

        protected abstract long execute(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager);

        protected abstract Cursor prepare(SQLiteDatabase sQLiteDatabase);

        public abstract String toString();

        public CursorTask(Context context, ArrayList<Long> dirtyBulk) {
            this.mContext = context;
            this.mDirtyBulk = dirtyBulk;
        }

        protected long verify(SQLiteDatabase db) {
            if (this.mCursor == null) {
                Log.d("CloudManager", "cursor for %s is null, abort", toString());
                return -101;
            } else if (this.mCursor.moveToFirst()) {
                return -1;
            } else {
                Log.d("CloudManager", "cursor for %s has nothing, abort", toString());
                return -102;
            }
        }

        public final long run(SQLiteDatabase db, MediaManager manager) {
            Log.d("CloudManager", "%s is running", toString());
            this.mCursor = prepare(db);
            try {
                long validation = verify(db);
                if (validation != -1) {
                    return validation;
                }
                long result = execute(db, manager);
                Log.d("CloudManager", "%s finish", toString());
                release();
                return result;
            } finally {
                Log.d("CloudManager", "%s finish", toString());
                release();
            }
        }

        private void release() {
            this.mContext = null;
            if (this.mCursor != null) {
                this.mCursor.close();
            }
            this.mCursor = null;
        }

        public ArrayList<Long> getDirtyBulk() {
            return this.mDirtyBulk;
        }

        protected final void markAsDirty(long id) {
            this.mDirtyBulk.add(Long.valueOf(id));
        }
    }

    private static class AddRemoveFavoritesBySha1 extends CursorTask {
        protected int mOperationType;
        protected String mSha1;

        public AddRemoveFavoritesBySha1(Context context, ArrayList<Long> dirtyBulk, int operationType, String sha1) {
            super(context, dirtyBulk);
            this.mOperationType = operationType;
            this.mSha1 = sha1;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "sha1 = ? AND serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId!=-1000)", new String[]{this.mSha1}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            long result = super.verify(db);
            if (result != -1) {
                return result;
            }
            if (this.mCursor.isNull(4) && new CheckPostProcessing(this.mContext, this.mCursor.getString(7)).run(db, null) == -111) {
                return -111;
            }
            return -1;
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long dateFavorite = System.currentTimeMillis();
            ContentValues values = new ContentValues();
            values.put("dateFavorite", Long.valueOf(dateFavorite));
            values.put("isFavorite", Integer.valueOf(this.mOperationType == 1 ? 1 : 0));
            Cursor cursor = null;
            try {
                long count;
                cursor = db.query("favorites", new String[]{"_id"}, "sha1 = ?", new String[]{this.mSha1}, null, null, null);
                if (cursor == null || cursor.getCount() <= 0) {
                    values.put("sha1", this.mSha1);
                    values.put("source", Integer.valueOf(1));
                    count = db.insert("favorites", null, values);
                } else {
                    count = (long) db.update("favorites", values, "sha1 = ?", new String[]{this.mSha1});
                }
                if (count > 0) {
                    if (this.mOperationType == 1) {
                        manager.insertToFavorites(this.mSha1);
                    } else {
                        manager.removeFromFavorites(this.mSha1);
                    }
                    String editedColumnsElement = GalleryCloudUtils.transformToEditedColumnsElement(-1);
                    db.execSQL(String.format("update %s set %s=coalesce(replace(%s, '%s', '') || '%s', '%s') where %s='%s'", new Object[]{"cloud", "editedColumns", "editedColumns", editedColumnsElement, editedColumnsElement, editedColumnsElement, "sha1", this.mSha1}));
                }
                BaseMiscUtil.closeSilently(cursor);
                return count;
            } catch (Throwable th) {
                BaseMiscUtil.closeSilently(cursor);
            }
        }

        public String toString() {
            Locale locale = Locale.US;
            String str = "%s favorites by sha1: %s";
            Object[] objArr = new Object[2];
            objArr[0] = this.mOperationType == 1 ? "Add to" : "Remove from";
            objArr[1] = this.mSha1;
            return String.format(locale, str, objArr);
        }
    }

    private static class AddRemoveFavoritesById extends AddRemoveFavoritesBySha1 {
        private long mId;

        public AddRemoveFavoritesById(Context context, ArrayList<Long> dirtyBulk, int operationType, long id) {
            super(context, dirtyBulk, operationType, null);
            this.mId = id;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            Cursor cursor = null;
            try {
                SQLiteDatabase sQLiteDatabase = db;
                cursor = sQLiteDatabase.query("cloud", CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(this.mId)}, null, null, null);
                if (cursor == null || !cursor.moveToFirst()) {
                    BaseMiscUtil.closeSilently(cursor);
                    return null;
                }
                this.mSha1 = cursor.getString(9);
                return super.prepare(db);
            } catch (Exception e) {
                return null;
            } finally {
                BaseMiscUtil.closeSilently(cursor);
            }
        }

        public String toString() {
            Locale locale = Locale.US;
            String str = "%s favorites by id: [%d]";
            Object[] objArr = new Object[2];
            objArr[0] = this.mOperationType == 1 ? "Add to" : "Remove from";
            objArr[1] = Long.valueOf(this.mId);
            return String.format(locale, str, objArr);
        }
    }

    private static class AddRemoveFavoritesByPath extends AddRemoveFavoritesBySha1 {
        private String mPath;

        public AddRemoveFavoritesByPath(Context context, ArrayList<Long> dirtyBulk, int operationType, String path) {
            super(context, dirtyBulk, operationType, null);
            this.mPath = path;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            boolean isThumbnail = true;
            Cursor cursor = null;
            try {
                cursor = CloudManager.queryCloudItemByFilePath(this.mContext, db, this.mPath);
                if (cursor == null || !cursor.moveToFirst()) {
                    BaseMiscUtil.closeSilently(cursor);
                    return null;
                }
                if (cursor.getExtras() == null || !cursor.getExtras().getBoolean("is_thumbnail", false)) {
                    isThumbnail = false;
                }
                if (isThumbnail || cursor.getLong(2) == FileUtils.getFileSize(this.mPath)) {
                    this.mSha1 = cursor.getString(1);
                    BaseMiscUtil.closeSilently(cursor);
                    return super.prepare(db);
                }
                Log.e("CloudManager", "file size not equals, can not favorite: %s", this.mPath);
                return null;
            } catch (Throwable ex) {
                Log.e("CloudManager", ex);
            } finally {
                BaseMiscUtil.closeSilently(cursor);
            }
        }

        public String toString() {
            Locale locale = Locale.US;
            String str = "%s favorites by path: %s";
            Object[] objArr = new Object[2];
            objArr[0] = this.mOperationType == 1 ? "Add to" : "Remove from";
            objArr[1] = this.mPath;
            return String.format(locale, str, objArr);
        }
    }

    private static class AddToSecret extends CursorTask {
        private long mMediaId;

        public AddToSecret(Context context, ArrayList<Long> dirtyBulk, long mediaId) {
            super(context, dirtyBulk);
            this.mMediaId = mediaId;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            if (this.mMediaId <= 0) {
                return null;
            }
            return db.query("cloud", CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(this.mMediaId)}, null, null, null);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            int result = canAddSecret(this.mContext, this.mCursor);
            if (result < 0) {
                return (long) result;
            }
            this.mMediaId = this.mCursor.getLong(0);
            int check = checkConflict(db);
            if (check == -104) {
                deleteAllWithSameSha1(db, manager, true);
                return this.mMediaId;
            }
            long id;
            int localFlag = this.mCursor.getInt(2);
            ContentValues srcUpdates;
            if (localFlag == 7 || localFlag == 8) {
                ContentValues targetInserts = new ContentValues();
                targetInserts.putAll(CloudManager.copyOf(CloudManager.PUBLIC_COPYABLE_PROJECTION, this.mCursor));
                targetInserts.put("localFlag", Integer.valueOf(8));
                id = addFilePath(targetInserts, check == -105);
                if (id == -1) {
                    targetInserts.put("localGroupId", Long.valueOf(-1000));
                    id = db.insert("cloud", null, targetInserts);
                    if (id > 0) {
                        manager.insert(id, targetInserts);
                        if (db.delete("cloud", "_id=?", new String[]{String.valueOf(this.mMediaId)}) > 0) {
                            manager.delete("_id=?", new String[]{String.valueOf(this.mMediaId)});
                        }
                    }
                }
            } else if (localFlag != 0) {
                srcUpdates = new ContentValues();
                srcUpdates.put("localGroupId", Long.valueOf(-1000));
                id = addFilePath(srcUpdates, check == -105);
                if (id == -1) {
                    if (db.update("cloud", srcUpdates, "_id=?", new String[]{String.valueOf(this.mMediaId)}) > 0) {
                        if (manager != null) {
                            manager.update("_id=?", new String[]{String.valueOf(this.mMediaId)}, srcUpdates);
                        }
                        id = this.mMediaId;
                    }
                }
            } else {
                srcUpdates = new ContentValues();
                srcUpdates.put("localFlag", Integer.valueOf(11));
                ContentValues targInserts = new ContentValues();
                targInserts.put("localFlag", Integer.valueOf(5));
                targInserts.putAll(CloudManager.copyOf(CloudManager.PUBLIC_COPYABLE_PROJECTION, this.mCursor));
                id = addFilePath(targInserts, check == -105);
                if (id == -1) {
                    targInserts.put("fromLocalGroupId", Integer.valueOf(this.mCursor.getInt(3)));
                    targInserts.put("localGroupId", Long.valueOf(-1000));
                    targInserts.put("localImageId", Long.valueOf(this.mMediaId));
                    id = db.insert("cloud", null, targInserts);
                    if (id > 0) {
                        manager.insert(id, targInserts);
                        if (db.update("cloud", srcUpdates, "_id=?", new String[]{String.valueOf(this.mMediaId)}) > 0) {
                            manager.delete("_id=?", new String[]{String.valueOf(this.mMediaId)});
                        }
                    }
                }
            }
            if (id > 0) {
                postCheck(db, id, true);
                deleteAllWithSameSha1(db, manager, false);
                return id;
            }
            postCheck(db, this.mMediaId, false);
            return id;
        }

        private void deleteAllWithSameSha1(SQLiteDatabase db, MediaManager manager, boolean deleteTarget) {
            if (!TextUtils.isEmpty(this.mCursor.getString(9))) {
                String subNotDeleteTar = " AND _id!=" + this.mMediaId;
                String where = "sha1=? AND localGroupId!=-1000";
                if (!deleteTarget) {
                    where = where + subNotDeleteTar;
                }
                try {
                    SQLiteDatabase sQLiteDatabase = db;
                    Cursor cursor = sQLiteDatabase.query("cloud", new String[]{"_id"}, where, new String[]{sha1}, null, null, null);
                    if (cursor != null && cursor.getCount() > 0) {
                        long[] ids = new long[cursor.getCount()];
                        for (int i = 0; i < cursor.getCount(); i++) {
                            cursor.moveToPosition(i);
                            ids[i] = cursor.getLong(0);
                        }
                        CloudManager.delete(this.mContext, db, manager, getDirtyBulk(), ids, 36);
                    }
                    BaseMiscUtil.closeSilently(cursor);
                } catch (Throwable e) {
                    Log.e("CloudManager", e);
                    BaseMiscUtil.closeSilently(null);
                } catch (Throwable th) {
                    BaseMiscUtil.closeSilently(null);
                    throw th;
                }
            }
        }

        private int checkConflict(SQLiteDatabase db) {
            String sha1 = this.mCursor.getString(9);
            String fileName = this.mCursor.getString(6);
            if (!TextUtils.isEmpty(sha1)) {
                Cursor cursor = null;
                try {
                    SQLiteDatabase sQLiteDatabase = db;
                    cursor = sQLiteDatabase.query("cloud", new String[]{"sha1", "fileName", "localFlag", "localFile"}, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (sha1 = ? OR fileName = ?) AND localGroupId=? AND (serverId IS NOT NULL OR localFile IS NOT NULL)", new String[]{sha1, fileName, String.valueOf(-1000)}, null, null, null);
                    if (cursor != null) {
                        boolean fileConflict = false;
                        while (cursor.moveToNext()) {
                            if (TextUtils.equals(sha1, cursor.getString(0))) {
                                int localFlag = cursor.getInt(2);
                                String localFile = cursor.getString(3);
                                if ((localFlag == 7 || localFlag == 8) && !FileUtils.isFileExist(localFile)) {
                                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_sha1_conflict_with_unsynced_file_unexist_item");
                                } else {
                                    BaseMiscUtil.closeSilently(cursor);
                                    return -104;
                                }
                            }
                            if (!fileConflict && fileName.equalsIgnoreCase(cursor.getString(1))) {
                                fileConflict = true;
                            }
                        }
                        if (fileConflict) {
                            BaseMiscUtil.closeSilently(cursor);
                            return -105;
                        }
                    }
                    BaseMiscUtil.closeSilently(cursor);
                } catch (Throwable th) {
                    BaseMiscUtil.closeSilently(cursor);
                }
            }
            return 0;
        }

        private long addFilePath(ContentValues values, boolean nameConflict) {
            String tarName;
            File rename;
            HashMap<String, String> params;
            values.put("microthumbfile", this.mCursor.getString(12));
            if (nameConflict) {
                tarName = DownloadPathHelper.addPostfixToFileName(this.mCursor.getString(6), String.valueOf(System.currentTimeMillis()));
            } else {
                tarName = this.mCursor.getString(6);
            }
            values.put("fileName", tarName);
            Object localPath = this.mCursor.getString(7);
            String secretAlbumPath = StorageUtils.getSafePathInPriorStorage("MIUI/Gallery/cloud/.secretAlbum");
            boolean localFileMoved = false;
            if (FileUtils.isFileExist(localPath)) {
                String localPath2;
                if (nameConflict) {
                    rename = new File(FileUtils.getParentFolderPath(localPath), tarName);
                    if (FileUtils.move(new File(localPath), rename)) {
                        localPath2 = rename.getAbsolutePath();
                    } else {
                        Log.e("CloudManager", "Failed to move name conflict item %s to %s", localPath, tarName);
                        params = new HashMap();
                        params.put(AlertInfo.DETAIL, "local file rename conflict file");
                        params.put(AQIInfo.SRC, localPath);
                        params.put("des", rename.getAbsolutePath());
                        BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_failed_bc_file_operation_failed", params);
                        return -113;
                    }
                }
                if (BaseFileUtils.contains(secretAlbumPath, localPath2)) {
                    params = new HashMap();
                    params.put(AlertInfo.DETAIL, "local file already exist in secret folder");
                    params.put(AQIInfo.SRC, localPath2);
                    params.put("des", secretAlbumPath);
                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                } else {
                    String movedPath = CloudUtils.moveImageToFolder(localPath2, secretAlbumPath, true);
                    if (BaseFileUtils.contains(secretAlbumPath, movedPath)) {
                        localPath2 = movedPath;
                    } else {
                        Log.e("CloudManager", "Failed to move item %s to secret folder", (Object) localPath2);
                        params = new HashMap();
                        params.put(AlertInfo.DETAIL, "local file move failed to secret folder");
                        params.put(AQIInfo.SRC, localPath2);
                        params.put("des", secretAlbumPath);
                        BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_failed_bc_file_operation_failed", params);
                        return -113;
                    }
                }
                values.put("localFile", localPath2);
                localPath = this.mCursor.getString(7);
                if (FileUtils.isFileExist(localPath)) {
                    params = new HashMap();
                    params.put(AlertInfo.DETAIL, "local file still exist after move to secret");
                    params.put(AQIInfo.SRC, localPath);
                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                } else {
                    MediaFileUtils.deleteFileType(FileType.NORMAL, localPath);
                }
                localFileMoved = true;
            }
            String thumbPath = this.mCursor.getString(8);
            if (FileUtils.isFileExist(thumbPath)) {
                if (localFileMoved) {
                    params = new HashMap();
                    params.put(AlertInfo.DETAIL, "local & thumbnail both exist");
                    params.put("localFile", localPath);
                    params.put("thumbnailFile", thumbPath);
                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                    values.putNull("thumbnailFile");
                    MediaFileUtils.deleteFileType(FileType.NORMAL, thumbPath);
                } else {
                    if (nameConflict) {
                        rename = new File(FileUtils.getParentFolderPath(thumbPath), tarName);
                        if (FileUtils.move(new File(thumbPath), rename)) {
                            thumbPath = rename.getAbsolutePath();
                        } else {
                            Log.e("CloudManager", "Failed to move name conflict item %s to %s", thumbPath, tarName);
                            params = new HashMap();
                            params.put(AlertInfo.DETAIL, "thumbnail rename conflict file");
                            params.put(AQIInfo.SRC, thumbPath);
                            params.put("des", rename.getAbsolutePath());
                            BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_failed_bc_file_operation_failed", params);
                            return -113;
                        }
                    }
                    if (BaseFileUtils.contains(secretAlbumPath, thumbPath)) {
                        params = new HashMap();
                        params.put(AlertInfo.DETAIL, "thumbnail file already exist in secret folder");
                        params.put(AQIInfo.SRC, thumbPath);
                        params.put("des", secretAlbumPath);
                        BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                    } else {
                        thumbPath = CloudUtils.moveImageToFolder(thumbPath, secretAlbumPath, true);
                        if (!BaseFileUtils.contains(secretAlbumPath, thumbPath)) {
                            Log.e("CloudManager", "Failed to move item %s to secret folder", localPath);
                            params = new HashMap();
                            params.put(AlertInfo.DETAIL, "thumbnail file move failed to secret folder");
                            params.put(AQIInfo.SRC, thumbPath);
                            params.put("des", secretAlbumPath);
                            BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_failed_bc_file_operation_failed", params);
                            return -113;
                        }
                    }
                    values.put("thumbnailFile", thumbPath);
                    thumbPath = this.mCursor.getString(8);
                    if (FileUtils.isFileExist(thumbPath)) {
                        params = new HashMap();
                        params.put(AlertInfo.DETAIL, "thumbnail file still exist after move to secret");
                        params.put(AQIInfo.SRC, thumbPath);
                        BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                    } else {
                        MediaFileUtils.deleteFileType(FileType.NORMAL, thumbPath);
                    }
                }
            }
            return -1;
        }

        static int canAddSecret(Context context, Cursor cursor) {
            if (SpaceFullHandler.isOwnerSpaceFull()) {
                return -106;
            }
            if (cursor.getInt(5) != 1) {
                return -107;
            }
            if (cursor.isNull(4)) {
                String path = cursor.getString(7);
                if (FileUtils.isFileExist(path)) {
                    int result = CloudUtils.canUpload(path);
                    if (result == 4) {
                        return -108;
                    }
                    if (result != 0) {
                        return -107;
                    }
                }
            }
            if (cursor.isNull(4) && new CheckPostProcessing(context, cursor.getString(7)).run(null, null) == -111) {
                return -111;
            }
            return 0;
        }

        private void postCheck(SQLiteDatabase db, long id, boolean succeed) {
            try {
                SQLiteDatabase sQLiteDatabase = db;
                Cursor cursor = sQLiteDatabase.query("cloud", new String[]{"localFlag", "localFile", "serverStatus"}, "_id=?", new String[]{String.valueOf(id)}, null, null, null);
                HashMap<String, String> params;
                if (cursor == null || !cursor.moveToFirst()) {
                    params = new HashMap();
                    params.put("result", String.valueOf(succeed));
                    params.put(AlertInfo.DETAIL, "failed to retrieve record again");
                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                    return;
                }
                int localFlag = cursor.getInt(0);
                String localFile = cursor.getString(1);
                String serverStatus = cursor.getString(2);
                if (localFlag == 8 || localFlag == 7) {
                    if (!FileUtils.isFileExist(localFile)) {
                        params = new HashMap();
                        params.put("result", String.valueOf(succeed));
                        params.put(AlertInfo.DETAIL, "local file not exist with unsynced item");
                        params.put("localFile", localFile);
                        BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                    } else if (succeed && !localFile.contains("MIUI/Gallery/cloud/.secretAlbum")) {
                        params = new HashMap();
                        params.put("result", "true");
                        params.put(AlertInfo.DETAIL, "local file not in secret folder");
                        params.put("localFile", localFile);
                        BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                    }
                } else if (localFlag == 2 || localFlag == -1 || localFlag == 11) {
                    params = new HashMap();
                    params.put("result", String.valueOf(succeed));
                    params.put(AlertInfo.DETAIL, "record in invalid local state " + localFlag);
                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                } else if (TextUtils.equals(DeletableSyncColumns.DELETED, serverStatus) || TextUtils.equals("purged", serverStatus)) {
                    params = new HashMap();
                    params.put("result", String.valueOf(succeed));
                    params.put(AlertInfo.DETAIL, "record in invalid server state " + serverStatus);
                    BaseSamplingStatHelper.recordErrorEvent("operation_abnormal", "add_secret_abnormal", params);
                }
            } catch (Throwable e) {
                Log.e("CloudManager", e);
            }
        }

        public String toString() {
            return String.format("AddToSecret{%d}", new Object[]{Long.valueOf(this.mMediaId)});
        }
    }

    private static class AddToSecretByUri extends CursorTask {
        private String mTarPath;
        private Uri mUri;

        public AddToSecretByUri(Context context, ArrayList<Long> diryBulk, Uri uri) {
            super(context, diryBulk);
            this.mUri = uri;
        }

        protected long verify(SQLiteDatabase db) {
            return FileUtils.isFileExist(this.mTarPath) ? -1 : -100;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            if (this.mUri == null) {
                return null;
            }
            if ("content".equals(this.mUri.getScheme())) {
                this.mTarPath = (String) GalleryUtils.safeQuery(this.mUri, new String[]{"_data"}, null, null, null, new QueryHandler<String>() {
                    public String handle(Cursor cursor) {
                        if (cursor == null || !cursor.moveToFirst()) {
                            return null;
                        }
                        return cursor.getString(0);
                    }
                });
            } else if ("file".equals(this.mUri.getScheme())) {
                this.mTarPath = this.mUri.getPath();
            }
            if (TextUtils.isEmpty(this.mTarPath)) {
                return null;
            }
            return CloudManager.queryCloudItemByFilePath(this.mContext, db, this.mTarPath);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long id;
            if (this.mCursor == null || !this.mCursor.moveToFirst()) {
                int result = canAddSecret(this.mContext, this.mTarPath);
                if (result < 0) {
                    return (long) result;
                }
                String secretAlbumPath = StorageUtils.getSafePathInPriorStorage("MIUI/Gallery/cloud/.secretAlbum");
                String fileName = FileUtils.getFileName(this.mTarPath);
                File file = new File(secretAlbumPath, fileName);
                String tarPath = this.mTarPath;
                if (file.exists()) {
                    File rename = new File(FileUtils.getParentFolderPath(this.mTarPath), DownloadPathHelper.addPostfixToFileName(fileName, String.valueOf(System.currentTimeMillis())));
                    FileUtils.move(new File(this.mTarPath), rename);
                    tarPath = rename.getAbsolutePath();
                }
                if (!ExtraTextUtils.startsWithIgnoreCase(this.mTarPath, secretAlbumPath)) {
                    tarPath = CloudUtils.moveImageToFolder(this.mTarPath, secretAlbumPath, true);
                }
                id = SaveToCloudUtil.saveToCloudDB(this.mContext, new SaveParams(new File(tarPath), -1000, 8, true));
                if (id == -2) {
                    if (MediaFileUtils.deleteFileType(FileType.NORMAL, this.mTarPath) > 0) {
                        DeleteRecorder.record(new DeleteRecord(35, this.mTarPath, "AddToSecretByUri"));
                    }
                    return -103;
                } else if (id == -1) {
                    return -101;
                } else {
                    if (MediaFileUtils.deleteFileType(FileType.NORMAL, this.mTarPath) > 0) {
                        DeleteRecorder.record(new DeleteRecord(35, this.mTarPath, "AddToSecretByUri"));
                    }
                    return id;
                }
            }
            id = this.mCursor.getLong(0);
            if (id <= 0) {
                return 0;
            }
            long ret = new AddToSecret(this.mContext, getDirtyBulk(), id).run(db, manager);
            if (ret <= 0) {
                return ret;
            }
            if (MediaFileUtils.deleteFileType(FileType.NORMAL, this.mTarPath) <= 0) {
                return ret;
            }
            DeleteRecorder.record(new DeleteRecord(35, this.mTarPath, "AddToSecretByUri"));
            return ret;
        }

        private static int canAddSecret(Context context, String path) {
            if (SpaceFullHandler.isOwnerSpaceFull()) {
                return -106;
            }
            int result = CloudUtils.canUpload(path);
            if (result == 4) {
                return -108;
            }
            if (result != 0) {
                return -107;
            }
            if (new CheckPostProcessing(context, path).run(null, null) == -111) {
                return -111;
            }
            return 0;
        }

        public String toString() {
            return String.format("%s{%s}", new Object[]{"AddToSecretByUri", this.mUri});
        }
    }

    private static abstract class BaseCopyOrMoveByUri extends CursorTask {
        protected long mAlbumId;
        protected String mTarPath;
        protected Uri mUri;

        public BaseCopyOrMoveByUri(Context context, ArrayList<Long> diryBulk, Uri uri, long albumId) {
            super(context, diryBulk);
            this.mUri = uri;
            this.mAlbumId = albumId;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            if ("content".equals(this.mUri.getScheme())) {
                this.mTarPath = (String) GalleryUtils.safeQuery(this.mUri, new String[]{"_data"}, null, null, null, new QueryHandler<String>() {
                    public String handle(Cursor cursor) {
                        if (cursor == null || !cursor.moveToFirst()) {
                            return null;
                        }
                        return cursor.getString(0);
                    }
                });
            } else if ("file".equals(this.mUri.getScheme())) {
                this.mTarPath = this.mUri.getPath();
            }
            if (TextUtils.isEmpty(this.mTarPath)) {
                return null;
            }
            return CloudManager.queryCloudItemByFilePath(this.mContext, db, this.mTarPath);
        }

        protected long verify(SQLiteDatabase db) {
            if (TextUtils.isEmpty(this.mTarPath)) {
                return -100;
            }
            if (new CheckPostProcessing(this.mContext, this.mTarPath).run(db, null) != -111) {
                return -1;
            }
            return -111;
        }
    }

    private static class CheckPostProcessing extends CursorTask {
        private String mFilePath;

        public CheckPostProcessing(Context context, String filePath) {
            super(context, null);
            this.mFilePath = filePath;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            if (TextUtils.isEmpty(this.mFilePath)) {
                return null;
            }
            if (!"DCIM/Camera".equalsIgnoreCase(StorageUtils.getRelativePath(this.mContext, FileUtils.getParentFolderPath(this.mFilePath)))) {
                return null;
            }
            long mediaStoreId = MediaStoreUtils.getMediaStoreId(this.mFilePath);
            if (mediaStoreId <= 0) {
                return null;
            }
            return this.mContext.getContentResolver().query(PhotosOemApi.getQueryProcessingUri(this.mContext, mediaStoreId), null, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            if (this.mCursor == null || this.mCursor.getCount() == 0) {
                return -1;
            }
            return -111;
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            return -102;
        }

        public String toString() {
            return ".CheckPostProcessing{" + this.mFilePath + "}";
        }
    }

    private static abstract class Media extends CursorTask {
        protected long mAlbumId;
        protected long mMediaId;

        public Media(Context context, ArrayList<Long> dirtyBulk, long mediaId, long albumId) {
            super(context, dirtyBulk);
            this.mMediaId = mediaId;
            this.mAlbumId = albumId;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            Log.d("CloudManager", "%s prepare", toString());
            if (ShareMediaManager.isOtherShareMediaId(this.mMediaId)) {
                long orginId = ShareMediaManager.getOriginalMediaId(this.mMediaId);
                return db.query("shareImage", CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(orginId)}, null, null, null);
            }
            return db.query("cloud", CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(this.mMediaId)}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            Log.d("CloudManager", "%s verify", toString());
            long result = super.verify(db);
            if (result != -1) {
                return result;
            }
            if (this.mCursor.isNull(4)) {
                result = new CheckPostProcessing(this.mContext, this.mCursor.getString(7)).run(db, null);
                if (result == -111) {
                    return result;
                }
            }
            result = new MediaConflict(this.mContext, this.mCursor.getString(6), this.mAlbumId, this.mMediaId, this.mCursor.getString(9)).run(db, null);
            if (result == -102) {
                return -1;
            }
            return result;
        }
    }

    private static class Copy extends Media {
        public Copy(Context context, ArrayList<Long> dirtyBulk, long mediaId, long albumId) {
            super(context, dirtyBulk, mediaId, albumId);
            Log.d("CloudManager", "Copy albumId %d mediaId %d", Long.valueOf(albumId), Long.valueOf(mediaId));
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long id;
            Log.d("CloudManager", "%s execute", toString());
            ContentValues values = CloudManager.copyOf(CloudManager.PUBLIC_COPYABLE_PROJECTION, this.mCursor);
            int originFlag = this.mCursor.getInt(2);
            if (originFlag == 0 || originFlag == 5 || originFlag == 6 || originFlag == 9) {
                Log.d("CloudManager", "has server id, just insert as copy");
                if (originFlag != 0) {
                    String localImageId = this.mCursor.getString(26);
                    if (TextUtils.isEmpty(localImageId)) {
                        Log.d("CloudManager", "not synced but localImageId is null");
                        return -101;
                    }
                    this.mMediaId = Long.parseLong(localImageId);
                    if (originFlag == 9) {
                        this.mMediaId = ShareMediaManager.convertToMediaId(this.mMediaId);
                    }
                    BaseMiscUtil.closeSilently(this.mCursor);
                    this.mCursor = prepare(db);
                    long verify = verify(db);
                    if (verify != -1) {
                        return verify;
                    }
                    if (this.mCursor.getInt(2) != 0) {
                        Log.d("CloudManager", "backtrack not synced");
                        return -101;
                    } else if (ShareMediaManager.isOtherShareMediaId(this.mMediaId)) {
                        values.put("localFlag", Integer.valueOf(9));
                    } else {
                        values.put("localFlag", Integer.valueOf(6));
                    }
                } else if (ShareMediaManager.isOtherShareMediaId(this.mMediaId)) {
                    values.put("localFlag", Integer.valueOf(9));
                } else {
                    values.put("localFlag", Integer.valueOf(6));
                }
            } else {
                Log.d("CloudManager", "no server id, just insert as manual create");
                values.put("localFlag", Integer.valueOf(-2));
            }
            values.putAll(CloudManager.copyOf(CloudManager.PRIVATE_COPYABLE_PROJECTION, this.mCursor));
            if (ShareMediaManager.isOtherShareMediaId(this.mMediaId)) {
                long originMediaId = ShareMediaManager.getOriginalMediaId(this.mMediaId);
                if (ShareAlbumManager.isOtherShareAlbumId(this.mAlbumId)) {
                    values.put("localGroupId", Long.valueOf(ShareAlbumManager.getOriginalAlbumId(this.mAlbumId)));
                    values.put("localImageId", Long.valueOf(originMediaId));
                    id = db.insert("shareImage", null, values);
                    Log.d("CloudManager", "Copy other share to other share id %d", Long.valueOf(id));
                } else {
                    values.put("localGroupId", Long.valueOf(this.mAlbumId));
                    values.put("localImageId", Long.valueOf(originMediaId));
                    id = db.insert("cloud", null, values);
                    manager.insert(id, values);
                    Log.d("CloudManager", "Copy other share to owner id %d", Long.valueOf(id));
                }
            } else if (ShareAlbumManager.isOtherShareAlbumId(this.mAlbumId)) {
                values.put("localGroupId", Long.valueOf(ShareAlbumManager.getOriginalAlbumId(this.mAlbumId)));
                values.put("localImageId", Long.valueOf(this.mMediaId));
                id = db.insert("shareImage", null, values);
                Log.d("CloudManager", "Copy owner to other share id %d", Long.valueOf(id));
            } else {
                values.put("localGroupId", Long.valueOf(this.mAlbumId));
                values.put("localImageId", Long.valueOf(this.mMediaId));
                id = db.insert("cloud", null, values);
                manager.insert(id, values);
                Log.d("CloudManager", "Copy owner to owner id %d", Long.valueOf(id));
            }
            Log.d("CloudManager", "inserts: %s COPY RESULT: %d", CloudManager.desensitization(values), Long.valueOf(id));
            if (id > 0) {
                if (ShareAlbumManager.isOtherShareAlbumId(this.mAlbumId)) {
                    id = ShareMediaManager.convertToMediaId(id);
                }
                markAsDirty(id);
            } else {
                id = -101;
            }
            return id;
        }

        public String toString() {
            return String.format("Copy{%d, %d}", new Object[]{Long.valueOf(this.mMediaId), Long.valueOf(this.mAlbumId)});
        }
    }

    private static class CopyByUri extends BaseCopyOrMoveByUri {
        public CopyByUri(Context context, ArrayList<Long> diryBulk, Uri uri, long albumId) {
            super(context, diryBulk, uri, albumId);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long id = 0;
            if (this.mCursor != null && this.mCursor.moveToFirst()) {
                id = this.mCursor.getLong(0);
            }
            if (id > 0) {
                return new Copy(this.mContext, getDirtyBulk(), id, this.mAlbumId).run(db, manager);
            }
            id = SaveToCloudUtil.saveToCloudDB(this.mContext.getApplicationContext(), new SaveParams(new File(this.mTarPath), this.mAlbumId, -2, true));
            if (id > 0) {
                markAsDirty(id);
                return id;
            } else if (id == -2) {
                return -103;
            } else {
                return -101;
            }
        }

        public String toString() {
            return String.format("CopyByUri{%s, %d}", new Object[]{this.mUri.toString(), Long.valueOf(this.mAlbumId)});
        }
    }

    private static class CreateAlbum extends CursorTask {
        private String mAlbumPath = CloudManager.genRelativePath(this.mName, false);
        private String mName;

        public CreateAlbum(Context context, ArrayList<Long> dirtyBulk, String name) {
            super(context, dirtyBulk);
            this.mName = name;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "fileName=? COLLATE NOCASE  AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{this.mName}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            long result = super.verify(db);
            if (result == -1) {
                Log.d("CloudManager", "album with name(%s) found, exist %d", this.mName, Integer.valueOf(this.mCursor.getCount()));
                return -103;
            } else if (result != -102) {
                return result;
            } else {
                long albumPathVerifyResult = verifyAlbumPath(this.mContext, this.mAlbumPath);
                if (albumPathVerifyResult <= 0) {
                    return albumPathVerifyResult;
                }
                this.mAlbumPath = regenerateAlbumPath(this.mContext, this.mAlbumPath);
                return -1;
            }
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            ContentValues values = new ContentValues();
            values.put("serverType", Integer.valueOf(0));
            values.put("fileName", this.mName);
            values.put("dateModified", Long.valueOf(System.currentTimeMillis()));
            values.put("dateTaken", Long.valueOf(System.currentTimeMillis()));
            values.put("localFlag", Integer.valueOf(8));
            values.put("localFile", this.mAlbumPath);
            values.put("attributes", Long.valueOf(0 | 1));
            long id = db.insert("cloud", null, values);
            Log.d("CloudManager", "album(%s) creation finish with a id(%s) and albumPath(%s)", this.mName, Long.valueOf(id), this.mAlbumPath);
            if (id <= 0) {
                return -101;
            }
            manager.insertAttributes(id, values.getAsLong("attributes").longValue());
            markAsDirty(id);
            return id;
        }

        public String toString() {
            return String.format("CreateAlbum{%s}", new Object[]{this.mName});
        }

        private static String regenerateAlbumPath(Context context, String originPath) {
            String finalPath;
            int tryCount = 0;
            while (true) {
                String time = String.valueOf(System.currentTimeMillis());
                finalPath = originPath + "_" + time.substring(time.length() - 2);
                if (verifyAlbumPath(context, finalPath) == -1) {
                    break;
                }
                int tryCount2 = tryCount + 1;
                if (tryCount >= 3) {
                    tryCount = tryCount2;
                    break;
                }
                tryCount = tryCount2;
            }
            if (tryCount >= 3) {
                return originPath + "_" + System.currentTimeMillis();
            }
            return finalPath;
        }

        private static long verifyAlbumPath(Context context, String albumPath) {
            if (TextUtils.isEmpty(albumPath)) {
                return -100;
            }
            Cursor cursor = null;
            try {
                cursor = context.getContentResolver().query(Cloud.CLOUD_URI, new String[]{"_id"}, "localFile like ?  AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{albumPath}, null);
                if (cursor == null) {
                    Log.d("CloudManager", "cursor for albumPath(%s) is null, verify failed", (Object) albumPath);
                    return -101;
                } else if (cursor.moveToFirst()) {
                    long j = cursor.getLong(0);
                    BaseMiscUtil.closeSilently(cursor);
                    return j;
                } else {
                    BaseMiscUtil.closeSilently(cursor);
                    return -1;
                }
            } finally {
                BaseMiscUtil.closeSilently(cursor);
            }
        }

        long getConflictAlbumId(SQLiteDatabase db) {
            Cursor cursor = null;
            try {
                cursor = prepare(db);
                long albumPathVerifyResult;
                if (cursor == null || !cursor.moveToFirst()) {
                    albumPathVerifyResult = verifyAlbumPath(this.mContext, this.mAlbumPath);
                    if (albumPathVerifyResult < 0) {
                        albumPathVerifyResult = -102;
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else if (cursor != null) {
                        cursor.close();
                    }
                    return albumPathVerifyResult;
                }
                albumPathVerifyResult = cursor.getLong(0);
                return albumPathVerifyResult;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    private static class DeleteAlbum extends CursorTask {
        private long mAlbumId;
        private int mDeleteReason;

        public DeleteAlbum(Context context, ArrayList<Long> dirtyBulk, long albumId, int deleteReason) {
            super(context, dirtyBulk);
            this.mAlbumId = albumId;
            this.mDeleteReason = deleteReason;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "_id = ?", new String[]{String.valueOf(this.mAlbumId)}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            long result = super.verify(db);
            if (result != -1) {
                return result;
            }
            if (this.mCursor.getInt(5) != 0) {
                Log.w("DeleteAlbum", "Image or video can't be deleted here");
                return -100;
            } else if (!CloudManager.isSystemAlbum(this.mCursor.getLong(4))) {
                return -1;
            } else {
                Log.w("DeleteAlbum", "system album can't be deleted");
                return -100;
            }
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            Log.d("DeleteAlbum", "DELETING ALBUM:");
            long count = (long) deleteMediaInAlbum(db, manager, this.mAlbumId);
            long resultCode = (long) deleteItem(this.mContext, db, manager, this.mAlbumId, this.mCursor);
            manager.deleteAttributes(this.mAlbumId);
            return resultCode < 0 ? resultCode : count;
        }

        public String toString() {
            return String.format("%s{%d}", new Object[]{"DeleteAlbum", Long.valueOf(this.mAlbumId)});
        }

        private int deleteMediaInAlbum(SQLiteDatabase db, MediaManager manager, long id) {
            DeleteRecord deleteRecord;
            ContentValues values;
            SQLiteDatabase sQLiteDatabase;
            ContentValues contentValues;
            Log.d("DeleteAlbum", "deleting media in album(%d)", Long.valueOf(id));
            Collection deleteRecords = new ArrayList();
            int count = 0;
            SQLiteDatabase sQLiteDatabase2 = db;
            Cursor local = sQLiteDatabase2.query("cloud", CloudManager.PROJECTION, "localGroupId=? AND serverId IS NULL", new String[]{String.valueOf(id)}, null, null, null);
            if (local != null) {
                while (local.moveToNext()) {
                    markAsDirty(local.getLong(0));
                    deleteRecord = CloudManager.createDeleteRecord(this.mDeleteReason, local, "DeleteAlbum");
                    if (deleteRecord != null) {
                        deleteRecords.add(deleteRecord);
                    }
                }
                local.close();
                values = new ContentValues();
                values.put("localFlag", Integer.valueOf(-1));
                sQLiteDatabase = db;
                contentValues = values;
                count = 0 + sQLiteDatabase.update("cloud", contentValues, "localGroupId=? AND serverId IS NULL", new String[]{String.valueOf(id)});
                Log.d("DeleteAlbum", "marked local media in album(%d)", Long.valueOf(id));
            } else {
                Log.e("DeleteAlbum", "delete local media in album(%d) returns a null cursor", Long.valueOf(id));
            }
            sQLiteDatabase2 = db;
            Cursor synced = sQLiteDatabase2.query("cloud", CloudManager.PROJECTION, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND localGroupId = ? ", new String[]{String.valueOf(id)}, null, null, null);
            if (synced != null) {
                while (synced.moveToNext()) {
                    markAsDirty(synced.getLong(0));
                    deleteRecord = CloudManager.createDeleteRecord(this.mDeleteReason, synced, "DeleteAlbum");
                    if (deleteRecord != null) {
                        deleteRecords.add(deleteRecord);
                    }
                }
                synced.close();
                values = new ContentValues();
                values.put("localFlag", Integer.valueOf(2));
                sQLiteDatabase = db;
                contentValues = values;
                count += sQLiteDatabase.update("cloud", contentValues, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND localGroupId = ? ", new String[]{String.valueOf(id)});
                Log.d("DeleteAlbum", "marked cloud media in album(%d)", Long.valueOf(id));
            } else {
                Log.e("DeleteAlbum", "delete synced media in album(%d) returns a null cursor", Long.valueOf(id));
            }
            MediaManager mediaManager = manager;
            mediaManager.delete("localGroupId = ? ", new String[]{String.valueOf(id)});
            Log.d("DeleteAlbum", "DELETING items from album(%d), count: %d", Long.valueOf(id), Integer.valueOf(count));
            if (BaseMiscUtil.isValid(deleteRecords)) {
                DeleteRecorder.record(deleteRecords);
            }
            return count;
        }

        private int deleteItem(Context context, SQLiteDatabase db, MediaManager manager, long id, Cursor cursor) {
            int count;
            ContentValues values;
            if (cursor.isNull(4)) {
                Log.d("DeleteAlbum", "DELETE ITEM: no server id found, update to invalid record: %d", Long.valueOf(id));
                values = new ContentValues();
                values.put("localFlag", Integer.valueOf(-1));
                count = db.update("cloud", values, "_id = ? ", new String[]{String.valueOf(id)});
            } else {
                Log.d("DeleteAlbum", "DELETE ITEM: server id found, mark delete %d", Long.valueOf(id));
                values = new ContentValues();
                values.put("localFlag", Integer.valueOf(2));
                count = db.update("cloud", values, "_id = ? ", new String[]{String.valueOf(id)});
            }
            manager.delete("_id = ? ", new String[]{String.valueOf(id)});
            Log.d("DeleteAlbum", "DELETE ITEM FINISH: deleted %d item", Integer.valueOf(count));
            if (count > 0) {
                markAsDirty(id);
            }
            return count;
        }
    }

    private static class DeleteByPath extends CursorTask {
        private ArrayList<Long> mDeleteIds;
        private int mDeleteOptions;
        private int mDeleteReason;
        private String mPath;

        public DeleteByPath(Context context, ArrayList<Long> dirtyBulk, String path, int deleteOptions, ArrayList<Long> deleteIds, int deleteReason) {
            super(context, dirtyBulk);
            this.mPath = path;
            this.mDeleteOptions = deleteOptions;
            this.mDeleteIds = deleteIds;
            this.mDeleteReason = deleteReason;
        }

        protected long verify(SQLiteDatabase db) {
            return TextUtils.isEmpty(this.mPath) ? -100 : -1;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return CloudManager.queryCloudItemByFilePath(this.mContext, db, this.mPath);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            if (this.mCursor != null && this.mCursor.moveToFirst()) {
                if (this.mCursor.getLong(0) > 0) {
                    MediaFileUtils.deleteFileType(FileType.NORMAL, this.mPath);
                    DeleteRecorder.record(new DeleteRecord(this.mDeleteReason, this.mPath, "DeleteByPath"));
                    long[] deleteResult = CloudManager.delete(this.mContext, db, manager, getDirtyBulk(), new long[]{id}, this.mDeleteOptions, this.mDeleteIds, this.mDeleteReason);
                    return deleteResult.length > 0 ? deleteResult[0] : -101;
                }
            }
            int deleteFileResult = MediaFileUtils.deleteFileType(FileType.NORMAL, this.mPath);
            DeleteRecorder.record(new DeleteRecord(this.mDeleteReason, this.mPath, "DeleteByPath"));
            return (long) deleteFileResult;
        }

        public String toString() {
            return String.format("%s{%s}", new Object[]{"DeleteByPath", this.mPath});
        }
    }

    private static class DeleteBySha1 extends CursorTask {
        private int mDeleteReason;
        private boolean mKeepDup;
        private String mSha1;

        public DeleteBySha1(Context context, ArrayList<Long> dirtyBulk, String sha1, boolean keepDup, int deleteReason) {
            super(context, dirtyBulk);
            this.mSha1 = sha1;
            this.mKeepDup = keepDup;
            this.mDeleteReason = deleteReason;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            if (TextUtils.isEmpty(this.mSha1)) {
                return null;
            }
            return db.query("cloud", new String[]{"_id"}, "sha1=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{this.mSha1}, null, null, null);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            int count = 0;
            if (this.mCursor != null && (this.mCursor.getCount() == 1 || (this.mCursor.getCount() > 1 && !this.mKeepDup))) {
                long[] ids = new long[this.mCursor.getCount()];
                for (int i = 0; i < this.mCursor.getCount(); i++) {
                    this.mCursor.moveToPosition(i);
                    ids[i] = this.mCursor.getLong(0);
                }
                count = CloudManager.getValidCount(CloudManager.delete(this.mContext, db, manager, getDirtyBulk(), ids, this.mDeleteReason));
            }
            return (long) count;
        }

        public String toString() {
            return String.format("DeleteBySha1{%s}", new Object[]{this.mSha1});
        }
    }

    private static class DeleteCloudByPath extends CursorTask {
        private ArrayList<Long> mDeleteIds;
        private int mDeleteReason;
        private String mPath;

        public DeleteCloudByPath(Context context, ArrayList<Long> dirtyBulk, String path, ArrayList<Long> deleteIds, int deleteReason) {
            super(context, dirtyBulk);
            this.mPath = path;
            this.mDeleteIds = deleteIds;
            this.mDeleteReason = deleteReason;
        }

        protected long verify(SQLiteDatabase db) {
            return TextUtils.isEmpty(this.mPath) ? -100 : -1;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return CloudManager.queryCloudItemByFilePath(this.mContext, db, this.mPath);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            if (this.mCursor == null || !this.mCursor.moveToFirst()) {
                return 0;
            }
            if (this.mCursor.getLong(0) <= 0) {
                return 0;
            }
            long[] deleteResult = CloudManager.cloudDelete(this.mContext, db, manager, getDirtyBulk(), new long[]{this.mCursor.getLong(0)}, this.mDeleteIds, this.mDeleteReason);
            return deleteResult.length > 0 ? deleteResult[0] : -101;
        }

        public String toString() {
            return String.format("DeleteCloudByPath{%s}", new Object[]{this.mPath});
        }
    }

    private static class DeleteFile extends CursorTask {
        private int mDeleteReason;
        private long mId;

        public DeleteFile(Context context, ArrayList<Long> dirtyBulk, long id, int deleteReason) {
            super(context, dirtyBulk);
            this.mId = id;
            this.mDeleteReason = deleteReason;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "_id = ?", new String[]{String.valueOf(this.mId)}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            long result = super.verify(db);
            if (result != -1) {
                return result;
            }
            if (!CloudManager.isSystemAlbum(this.mCursor.getLong(4))) {
                return -1;
            }
            Log.w("CloudManager", "system album can't be deleted");
            return -102;
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            if (this.mCursor.getInt(5) == 0) {
                Log.d("CloudManager", "DELETING ALBUM FILE:");
                return (long) deleteAlbumFile(db, manager, this.mDeleteReason);
            }
            Log.d("CloudManager", "DELETING MEDIA FILE");
            return (long) deleteMediaFile(db, manager, this.mCursor, this.mId, this.mDeleteReason);
        }

        public String toString() {
            return String.format("DeleteFile{%d}", new Object[]{Long.valueOf(this.mId)});
        }

        private int deleteAlbumFile(SQLiteDatabase db, MediaManager manager, int deleteReason) {
            Throwable th;
            int count = 0;
            Cursor cursor;
            try {
                SQLiteDatabase sQLiteDatabase = db;
                cursor = sQLiteDatabase.query("cloud", CloudManager.PROJECTION, "localGroupId=?", new String[]{String.valueOf(this.mId)}, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            do {
                                count += deleteMediaFile(db, manager, cursor, cursor.getLong(0), deleteReason);
                            } while (cursor.moveToNext());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        BaseMiscUtil.closeSilently(cursor);
                        throw th;
                    }
                }
                BaseMiscUtil.closeSilently(cursor);
                return count;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        private int deleteMediaFile(SQLiteDatabase db, MediaManager manager, Cursor cursor, long id, int deleteReason) {
            MediaFileHandleJob.from(this.mContext.getContentResolver(), cursor, id, deleteReason).doDelete(this.mContext, false);
            ContentValues values = new ContentValues();
            if (cursor.isNull(4)) {
                values.put("localFlag", Integer.valueOf(-1));
                manager.delete("_id=?", new String[]{String.valueOf(id)});
            } else {
                values.put("thumbnailFile", "");
                values.put("localFile", "");
                manager.update("_id=?", new String[]{String.valueOf(id)}, values);
            }
            int count = db.update("cloud", values, "_id = ? ", new String[]{String.valueOf(id)});
            Log.d("CloudManager", "clear thumb and origin path");
            return count;
        }
    }

    private static abstract class DupMedia extends CursorTask {
        private int mDupType;
        protected long mMediaId;

        public DupMedia(Context context, ArrayList<Long> dirtyBulk, long mediaId, int dupType) {
            super(context, dirtyBulk);
            this.mMediaId = mediaId;
            this.mDupType = dupType;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            String selection;
            Cursor cursor;
            switch (this.mDupType) {
                case 0:
                    StringBuilder builder = new StringBuilder();
                    cursor = null;
                    try {
                        SQLiteDatabase sQLiteDatabase = db;
                        cursor = sQLiteDatabase.query("cloud", new String[]{"_id"}, "attributes & 4 != 0", null, null, null, null);
                        if (cursor != null) {
                            while (cursor.moveToNext()) {
                                if (!cursor.isFirst()) {
                                    builder.append(',');
                                }
                                builder.append(cursor.getLong(0));
                            }
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        selection = String.format("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND sha1 = (SELECT sha1 FROM cloud WHERE _id=?) AND sha1 NOT NULL AND localGroupId IN (%s)", new Object[]{builder});
                        break;
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                case 1:
                    cursor = null;
                    try {
                        String[] strArr = new String[]{"localGroupId"};
                        selection = "_id=" + this.mMediaId;
                        cursor = db.query("cloud", strArr, selection, null, null, null, null);
                        if (cursor == null || !cursor.moveToFirst()) {
                            selection = null;
                        } else {
                            selection = String.format("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND sha1 = (SELECT sha1 FROM cloud WHERE _id=?) AND sha1 NOT NULL AND localGroupId IN (%s)", new Object[]{Long.valueOf(cursor.getLong(0))});
                        }
                        if (cursor != null) {
                            cursor.close();
                            break;
                        }
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                    break;
                case 2:
                    selection = "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND sha1 = (SELECT sha1 FROM cloud WHERE _id=?) AND sha1 NOT NULL";
                    break;
                default:
                    selection = null;
                    break;
            }
            if (TextUtils.isEmpty(selection)) {
                return null;
            }
            return db.query("cloud", new String[]{"_id"}, selection, new String[]{String.valueOf(this.mMediaId)}, null, null, "serverId DESC ");
        }
    }

    private static class DupCopy extends DupMedia {
        protected long mAlbumId;

        public DupCopy(Context context, ArrayList<Long> dirtyBulk, long album, long mediaId, int dupType) {
            super(context, dirtyBulk, mediaId, dupType);
            this.mAlbumId = album;
            Log.d("CloudManager", "DupCopy albumId %d mediaId %d", Long.valueOf(album), Long.valueOf(mediaId));
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long newId;
            do {
                newId = new Copy(this.mContext, getDirtyBulk(), this.mCursor.getLong(0), this.mAlbumId).run(db, manager);
                if (newId > 0 || newId == -103 || newId == -104) {
                    Log.d("CloudManager", "DUPLICATED COPY FINISH: id(%d)", Long.valueOf(newId));
                }
            } while (this.mCursor.moveToNext());
            Log.d("CloudManager", "DUPLICATED COPY FINISH: id(%d)", Long.valueOf(newId));
            return newId;
        }

        public String toString() {
            return String.format("DupCopy{%d, %d}", new Object[]{Long.valueOf(this.mMediaId), Long.valueOf(this.mAlbumId)});
        }
    }

    private static class DupDeleteFile extends DupMedia {
        private int mDeleteReason;

        public DupDeleteFile(Context context, ArrayList<Long> dirtyBulk, long mediaId, int dupType, int deleteReason) {
            super(context, dirtyBulk, mediaId, dupType);
            this.mDeleteReason = deleteReason;
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            int count = 0;
            do {
                if (new DeleteFile(this.mContext, getDirtyBulk(), this.mCursor.getLong(0), this.mDeleteReason).run(db, manager) > 0) {
                    count++;
                }
            } while (this.mCursor.moveToNext());
            Log.d("CloudManager", "DUPLICATED DELETE FILE FINISH: %d items", Integer.valueOf(count));
            return (long) count;
        }

        public String toString() {
            return String.format("DupDeleteFile{%d}", new Object[]{Long.valueOf(this.mMediaId)});
        }
    }

    private static class DupMove extends DupMedia {
        protected long mAlbumId;

        public DupMove(Context context, ArrayList<Long> dirtyBulk, long album, long mediaId, int dupType) {
            super(context, dirtyBulk, mediaId, dupType);
            this.mAlbumId = album;
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            boolean success = false;
            long resultCode = -101;
            do {
                long mediaId = this.mCursor.getLong(0);
                if (success) {
                    CloudManager.delete(this.mContext, db, manager, getDirtyBulk(), new long[]{mediaId}, 42);
                } else {
                    long result = new Move(this.mContext, getDirtyBulk(), mediaId, this.mAlbumId).run(db, manager);
                    resultCode = result;
                    if (result > 0) {
                        Log.d("CloudManager", "move success, delete items left.");
                        success = true;
                    } else if (result == -103) {
                        Log.d("CloudManager", "item exist, skip this, delete items left");
                        success = true;
                    } else if (result == -104) {
                        Log.d("CloudManager", "sha1 conflict, just delete");
                        CloudManager.delete(this.mContext, db, manager, getDirtyBulk(), new long[]{mediaId}, 41);
                    } else if (result == -105) {
                        Log.d("CloudManager", "file name conflict, return");
                        break;
                    } else {
                        Log.w("CloudManager", "unknown err");
                    }
                }
            } while (this.mCursor.moveToNext());
            return resultCode;
        }

        public String toString() {
            return String.format("DupMove{%d, %d}", new Object[]{Long.valueOf(this.mMediaId), Long.valueOf(this.mAlbumId)});
        }
    }

    private static class MediaConflict extends CursorTask {
        private long mAlbumId;
        private String mFileName;
        private long mMediaId;
        private String mSha1;

        public MediaConflict(Context context, String fileName, long albumId, long mediaId, String sha1) {
            super(context, null);
            this.mFileName = fileName;
            this.mAlbumId = albumId;
            this.mMediaId = mediaId;
            this.mSha1 = sha1;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            if (ShareAlbumManager.isOtherShareAlbumId(this.mAlbumId)) {
                long orginAlbumId = ShareAlbumManager.getOriginalAlbumId(this.mAlbumId);
                return db.query("shareImage", new String[]{"_id", "sha1"}, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND fileName = ? AND localGroupId=?", new String[]{this.mFileName, String.valueOf(orginAlbumId)}, null, null, null);
            }
            return db.query("cloud", new String[]{"_id", "sha1"}, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND fileName = ? AND localGroupId=?", new String[]{this.mFileName, String.valueOf(this.mAlbumId)}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            long result = super.verify(db);
            if (result != -1) {
                return result;
            }
            if (!TextUtils.isEmpty(this.mFileName)) {
                return -1;
            }
            Log.w("CloudManager", "%s's fileName is empty, so no conflict", toString());
            return -102;
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long mediaId = this.mMediaId;
            if (ShareMediaManager.isOtherShareMediaId(this.mMediaId)) {
                mediaId = ShareMediaManager.getOriginalMediaId(mediaId);
            }
            if (this.mCursor.getLong(0) == mediaId) {
                return -103;
            }
            String sha1 = this.mCursor.getString(1);
            if (!TextUtils.equals(sha1, this.mSha1) || TextUtils.isEmpty(sha1)) {
                return -105;
            }
            return -104;
        }

        public String toString() {
            return ".Conflict{" + this.mFileName + "}";
        }
    }

    private static class Move extends Media {
        public Move(Context context, ArrayList<Long> dirtyBulk, long mediaId, long albumId) {
            super(context, dirtyBulk, mediaId, albumId);
            Log.d("CloudManager", "Move mediaId %d albumId %d", Long.valueOf(mediaId), Long.valueOf(albumId));
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            int preFlag = this.mCursor.getInt(2);
            Log.d("CloudManager", "current LOCAL_FLAG is %d", Integer.valueOf(preFlag));
            SQLiteDatabase sQLiteDatabase;
            int count;
            MediaManager mediaManager;
            if (preFlag != 0) {
                ContentValues values = new ContentValues();
                values.put("localGroupId", Long.valueOf(this.mAlbumId));
                sQLiteDatabase = db;
                count = sQLiteDatabase.update("cloud", values, "_id=?", new String[]{String.valueOf(this.mMediaId)});
                Log.d("CloudManager", "MOVE FINISH: local item, result(%d)", Integer.valueOf(count));
                if (count > 0) {
                    mediaManager = manager;
                    mediaManager.update("_id=?", new String[]{String.valueOf(this.mMediaId)}, values);
                    markAsDirty(this.mMediaId);
                }
                return this.mMediaId;
            }
            ContentValues srcUpdates = new ContentValues();
            if (CloudManager.isSystemAlbum((long) this.mCursor.getInt(1))) {
                Log.d("CloudManager", "system album:");
                srcUpdates.put("localFlag", Integer.valueOf(5));
                srcUpdates.put("fromLocalGroupId", Integer.valueOf(this.mCursor.getInt(3)));
                srcUpdates.put("localGroupId", Long.valueOf(this.mAlbumId));
                srcUpdates.putNull("groupId");
                srcUpdates.putNull("localImageId");
                Log.d("CloudManager", "updates: %s", CloudManager.desensitization(srcUpdates));
                sQLiteDatabase = db;
                count = sQLiteDatabase.update("cloud", srcUpdates, "_id=?", new String[]{String.valueOf(this.mMediaId)});
                Log.d("CloudManager", "MOVE FINISH: system album item, result(%d)", Integer.valueOf(count));
                if (count > 0) {
                    mediaManager = manager;
                    mediaManager.update("_id=?", new String[]{String.valueOf(this.mMediaId)}, srcUpdates);
                    markAsDirty(this.mMediaId);
                }
                return this.mMediaId;
            }
            Log.d("CloudManager", "cloud album:");
            srcUpdates.put("localFlag", Integer.valueOf(11));
            ContentValues targInserts = new ContentValues();
            targInserts.put("localFlag", Integer.valueOf(5));
            targInserts.putAll(CloudManager.copyOf(CloudManager.PUBLIC_COPYABLE_PROJECTION, this.mCursor));
            targInserts.putAll(CloudManager.copyOf(CloudManager.PRIVATE_COPYABLE_PROJECTION, this.mCursor));
            targInserts.put("fromLocalGroupId", Integer.valueOf(this.mCursor.getInt(3)));
            targInserts.put("localGroupId", Long.valueOf(this.mAlbumId));
            targInserts.put("localImageId", Long.valueOf(this.mMediaId));
            Log.d("CloudManager", "inserts: %s", CloudManager.desensitization(targInserts));
            long id = db.insert("cloud", null, targInserts);
            count = 0;
            if (id > 0) {
                manager.insert(id, targInserts);
                markAsDirty(id);
                Log.d("CloudManager", "updates: %s", CloudManager.desensitization(srcUpdates));
                sQLiteDatabase = db;
                count = sQLiteDatabase.update("cloud", srcUpdates, "_id=?", new String[]{String.valueOf(this.mMediaId)});
                if (count > 0) {
                    mediaManager = manager;
                    mediaManager.delete("_id=?", new String[]{String.valueOf(this.mMediaId)});
                    markAsDirty(this.mMediaId);
                }
            } else {
                id = -101;
            }
            Log.d("CloudManager", "MOVE FINISH: cloud album item, results(update:%d; insert:%d)", Integer.valueOf(count), Long.valueOf(id));
            return id;
        }

        public String toString() {
            return String.format("Move{%d, %d}", new Object[]{Long.valueOf(this.mMediaId), Long.valueOf(this.mAlbumId)});
        }
    }

    private static class MoveByUri extends BaseCopyOrMoveByUri {
        public MoveByUri(Context context, ArrayList<Long> diryBulk, Uri uri, long albumId) {
            super(context, diryBulk, uri, albumId);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            long id = 0;
            if (this.mCursor != null && this.mCursor.moveToFirst()) {
                id = this.mCursor.getLong(0);
            }
            if (id > 0) {
                long ret = new Move(this.mContext, getDirtyBulk(), id, this.mAlbumId).run(db, manager);
                if (ret <= 0) {
                    return ret;
                }
                FileHandleService.dispatchTask(this.mContext, getDirtyBulk());
                getDirtyBulk().clear();
                return ret;
            }
            id = SaveToCloudUtil.saveToCloudDB(this.mContext.getApplicationContext(), new SaveParams(new File(this.mTarPath), this.mAlbumId, 8, true));
            if (id > 0) {
                markAsDirty(id);
                FileHandleService.dispatchTask(this.mContext, getDirtyBulk());
                getDirtyBulk().clear();
            } else if (id == -2) {
                return -103;
            } else {
                if (id == -1) {
                    return -101;
                }
            }
            return 0;
        }

        public String toString() {
            return String.format("MoveByUri{%s, %d}", new Object[]{this.mUri.toString(), Long.valueOf(this.mAlbumId)});
        }
    }

    private static class RemoveFromSecret extends CursorTask {
        private long mAlbumId;
        private long mMediaId;

        public RemoveFromSecret(Context context, ArrayList<Long> dirtyBulk, long mediaId, long albumId) {
            super(context, dirtyBulk);
            this.mMediaId = mediaId;
            this.mAlbumId = albumId;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(this.mMediaId)}, null, null, null);
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            if (SpaceFullHandler.isOwnerSpaceFull()) {
                return -106;
            }
            long result = new MediaConflict(this.mContext, this.mCursor.getString(6), this.mAlbumId, this.mMediaId, this.mCursor.getString(9)).run(db, null);
            if (result == -104) {
                CloudManager.delete(this.mContext, db, manager, getDirtyBulk(), new long[]{this.mMediaId}, 37);
                return -103;
            }
            int localFlag = this.mCursor.getInt(2);
            ContentValues srcUpdates;
            long id;
            if (localFlag != 0) {
                srcUpdates = new ContentValues();
                srcUpdates.put("localGroupId", Long.valueOf(this.mAlbumId));
                if (this.mCursor.isNull(4) && localFlag == 7) {
                    srcUpdates.put("localFlag", Integer.valueOf(8));
                }
                addFilePath(srcUpdates, result == -105);
                if (db.update("cloud", srcUpdates, "_id=?", new String[]{String.valueOf(this.mMediaId)}) <= 0) {
                    return -101;
                }
                if (manager != null) {
                    manager.update("_id=?", new String[]{String.valueOf(this.mMediaId)}, srcUpdates);
                }
                id = this.mMediaId;
                markAsDirty(id);
                return id;
            }
            srcUpdates = new ContentValues();
            srcUpdates.put("localFlag", Integer.valueOf(11));
            ContentValues targInserts = new ContentValues();
            targInserts.put("localFlag", Integer.valueOf(5));
            targInserts.putAll(CloudManager.copyOf(CloudManager.PUBLIC_COPYABLE_PROJECTION, this.mCursor));
            addFilePath(targInserts, result == -105);
            targInserts.put("fromLocalGroupId", Integer.valueOf(this.mCursor.getInt(3)));
            targInserts.put("localGroupId", Long.valueOf(this.mAlbumId));
            targInserts.put("localImageId", Long.valueOf(this.mMediaId));
            id = db.insert("cloud", null, targInserts);
            if (id <= 0) {
                return id;
            }
            manager.insert(id, targInserts);
            if (db.update("cloud", srcUpdates, "_id=?", new String[]{String.valueOf(this.mMediaId)}) > 0) {
                manager.delete("_id=?", new String[]{String.valueOf(this.mMediaId)});
            }
            markAsDirty(id);
            return id;
        }

        private void addFilePath(ContentValues values, boolean nameConflict) {
            values.put("localFile", this.mCursor.getString(7));
            values.put("thumbnailFile", this.mCursor.getString(8));
            values.put("microthumbfile", this.mCursor.getString(12));
            String tarName = nameConflict ? DownloadPathHelper.addPostfixToFileName(this.mCursor.getString(6), String.valueOf(System.currentTimeMillis())) : this.mCursor.getString(6);
            values.put("fileName", tarName);
            byte[] secretKey = this.mCursor.getBlob(11);
            if (secretKey != null) {
                DBCloud cloud = new DBCloud(this.mCursor.getString(4));
                cloud.setFileName(tarName);
                cloud.setSecretKey(secretKey);
                cloud.setSha1(this.mCursor.getString(9));
                cloud.setLocalFile(this.mCursor.getString(7));
                cloud.setThumbnailFile(this.mCursor.getString(8));
                cloud.setMicroThumbFile(this.mCursor.getString(12));
                SecretAlbumUtils.decodeFiles(cloud, values);
            }
        }

        public String toString() {
            return String.format("RemoveFromSecret{%d}", new Object[]{Long.valueOf(this.mMediaId)});
        }
    }

    private static class RenameAlbum extends CursorTask {
        private long mAlbumId;
        private String mNewName;

        public RenameAlbum(Context context, ArrayList<Long> dirtyBulk, long albumId, String newName) {
            super(context, dirtyBulk);
            this.mAlbumId = albumId;
            this.mNewName = newName;
        }

        protected Cursor prepare(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "_id=?  AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{String.valueOf(this.mAlbumId)}, null, null, null);
        }

        protected long verify(SQLiteDatabase db) {
            long result = super.verify(db);
            if (result != -1) {
                return result;
            }
            Cursor conflict = null;
            try {
                conflict = getConflictAlbumCursor(db);
                if (conflict == null) {
                    Log.d("CloudManager", "cursor is null, verify failed.");
                    if (conflict != null) {
                        BaseMiscUtil.closeSilently(conflict);
                    }
                    return -101;
                } else if (conflict.moveToFirst()) {
                    Log.d("CloudManager", "Album name already exists.");
                    if (conflict == null) {
                        return -103;
                    }
                    BaseMiscUtil.closeSilently(conflict);
                    return -103;
                } else {
                    if (conflict != null) {
                        BaseMiscUtil.closeSilently(conflict);
                    }
                    return -1;
                }
            } catch (Throwable e) {
                Log.e("CloudManager", e);
                if (conflict != null) {
                    BaseMiscUtil.closeSilently(conflict);
                }
                return -101;
            } catch (Throwable th) {
                if (conflict != null) {
                    BaseMiscUtil.closeSilently(conflict);
                }
                throw th;
            }
        }

        protected long execute(SQLiteDatabase db, MediaManager manager) {
            ContentValues values = new ContentValues();
            values.put("fileName", this.mNewName);
            if (this.mCursor.getInt(2) == 0) {
                values.put("localFlag", Integer.valueOf(10));
            }
            int ret = db.update("cloud", values, "_id=?", new String[]{String.valueOf(this.mAlbumId)});
            Log.d("CloudManager", "Album(id: %d) rename finished.", Long.valueOf(this.mAlbumId));
            if (ret > 0) {
                return this.mAlbumId;
            }
            return -101;
        }

        private Cursor getConflictAlbumCursor(SQLiteDatabase db) {
            return db.query("cloud", CloudManager.PROJECTION, "fileName=? COLLATE NOCASE  AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{this.mNewName}, null, null, null);
        }

        long getConflictAlbumId(SQLiteDatabase db) {
            Cursor cursor = null;
            try {
                cursor = getConflictAlbumCursor(db);
                long j;
                if (cursor == null || !cursor.moveToFirst()) {
                    j = -102;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return j;
                }
                j = cursor.getLong(0);
                return j;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }

        public String toString() {
            return String.format(Locale.US, "RenameAlbum{id: %d}", new Object[]{Long.valueOf(this.mAlbumId)});
        }
    }

    public static boolean canHandle(String method) {
        return METHODS.contains(method);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bundle call(Context context, SQLiteDatabase db, MediaManager manager, String method, String arg, Bundle extras) {
        Bundle result = new Bundle();
        ArrayList syncDirtyIds = new ArrayList();
        long albumId;
        ArrayList<Uri> uris;
        long[] ids;
        int i;
        if ("add_to_album".equals(method)) {
            albumId = Numbers.parse(arg, Long.valueOf(-1)).longValue();
            int srcType = extras.getInt("extra_src_type", 0);
            int operationType = extras.getInt(MipubPhoneEvent.URI_PARAM_TYPE, 0);
            if (srcType == 1) {
                uris = extras.getParcelableArrayList("extra_src_uris");
                if (uris == null || isVirtualAlbum(albumId)) {
                    Log.e("CloudManager", "error, albumId is %s, uris is %s", arg, uris);
                } else {
                    ids = new long[uris.size()];
                    i = 0;
                    Iterator it = uris.iterator();
                    while (it.hasNext()) {
                        Uri uri = (Uri) it.next();
                        if (operationType == 0) {
                            ids[i] = copyByUri(context, db, manager, syncDirtyIds, albumId, uri);
                        } else if (operationType == 1) {
                            ids[i] = moveByUri(context, db, manager, syncDirtyIds, albumId, uri);
                        }
                        i++;
                    }
                    result.putLongArray("ids", ids);
                    if (!syncDirtyIds.isEmpty()) {
                        boolean z;
                        if (extras != null) {
                            if (extras.getBoolean("should_operate_sync", false)) {
                                z = true;
                                startUpdater(context, z, syncDirtyIds);
                            }
                        }
                        z = false;
                        startUpdater(context, z, syncDirtyIds);
                    }
                }
            } else {
                if (srcType == 0) {
                    int dupType = extras.getInt("extra_dup_type", -1);
                    Object mediaIds = extras.getLongArray("extra_src_media_ids");
                    if (mediaIds == null || (!(operationType == 0 || operationType == 1) || isVirtualAlbum(albumId))) {
                        Log.e("CloudManager", "error, albumId is %s, mediaIds is %s", arg, mediaIds);
                    } else {
                        ids = new long[mediaIds.length];
                        i = 0;
                        for (long id : mediaIds) {
                            if (operationType == 0) {
                                ids[i] = copy(context, db, manager, syncDirtyIds, albumId, id, dupType);
                            } else if (operationType == 1) {
                                ids[i] = move(context, db, manager, syncDirtyIds, albumId, id, dupType);
                            }
                            i++;
                        }
                        result.putLongArray("ids", ids);
                    }
                }
                if (syncDirtyIds.isEmpty()) {
                }
            }
        } else {
            ArrayList<Long> deleteIds;
            long[] results;
            int type;
            if ("delete_album".equals(method)) {
                deleteIds = new ArrayList();
                results = deleteAlbum(context, db, manager, syncDirtyIds, extras.getLongArray("extra_album_ids"), extras.getInt("extra_delete_options", 0), deleteIds, extras.getInt("extra_delete_reason", 21));
                result.putLongArray("ids", MiscUtil.ListToArray(deleteIds));
            } else if ("delete".equals(method)) {
                results = null;
                deleteIds = new ArrayList();
                int deleteBy = extras.getInt("delete_by");
                int deleteOptions = extras.getInt("extra_delete_options", 0);
                int deleteReason = extras.getInt("extra_delete_reason", 24);
                if (deleteBy == 0) {
                    results = deleteById(context, db, manager, syncDirtyIds, extras.getLongArray("extra_ids"), extras.getInt("extra_dup_type", -1), deleteOptions, deleteIds, deleteReason);
                    result.putLongArray("ids", MiscUtil.ListToArray(deleteIds));
                } else if (deleteBy == 1) {
                    results = deleteByPath(context, db, manager, syncDirtyIds, extras.getStringArray("extra_paths"), deleteOptions, deleteIds, deleteReason);
                    result.putLongArray("ids", MiscUtil.ListToArray(deleteIds));
                } else if (deleteBy == 2) {
                    results = deleteBySha1(context, db, manager, syncDirtyIds, extras.getStringArray("extra_sha1s"), extras.getBoolean("extra_keep_dup"), deleteReason);
                } else if (deleteBy == 3) {
                    results = deleteCloudByPath(context, db, manager, syncDirtyIds, extras.getStringArray("extra_paths"), deleteIds, deleteReason);
                    result.putLongArray("ids", MiscUtil.ListToArray(deleteIds));
                }
                result.putLong("count", (long) getValidCount(results));
            } else if ("create_album".equals(method)) {
                Bundle createAlbumResult = createAlbum(context, db, manager, syncDirtyIds, arg);
                if (createAlbumResult != null) {
                    result.putAll(createAlbumResult);
                } else {
                    result.putLong("id", -101);
                }
            } else if ("rename_album".equals(method)) {
                Bundle renameAlbumResult = renameAlbum(context, db, manager, syncDirtyIds, extras.getLong("album_id"), arg);
                if (renameAlbumResult != null) {
                    result.putAll(renameAlbumResult);
                    if (renameAlbumResult.getLong("id") > 0) {
                        result.putBoolean("should_request_sync", true);
                    }
                } else {
                    result.putLong("id", -101);
                }
            } else if ("set_album_attributes".equals(method)) {
                ids = extras.getLongArray("album_id");
                long attributesBit = extras.getLong("attributes_bit");
                setAlbumAttributes(db, manager, ids, attributesBit, extras.getBoolean("set"), extras.getBoolean("manual"));
                if (attributesBit == 1) {
                    result.putBoolean("should_request_sync", extras.getBoolean("set"));
                }
            } else if ("force_top".equals(method)) {
                forceTop(context, db, manager, extras.getLongArray("album_id"));
            } else if ("unforce_top".equals(method)) {
                unforceTop(context, db, manager, extras.getLongArray("album_id"));
            } else if ("add_remove_secret".equals(method)) {
                type = extras.getInt("operation_type");
                if (type == 1) {
                    ids = extras.getLongArray("extra_src_media_ids");
                    if (ids == null) {
                        uris = extras.getParcelableArrayList("extra_src_uris");
                        if (uris != null) {
                            ids = new long[uris.size()];
                            for (i = 0; i < uris.size(); i++) {
                                ids[i] = addToSecret(context, db, manager, syncDirtyIds, (Uri) uris.get(i));
                            }
                            result.putLongArray("ids", ids);
                        }
                    } else {
                        for (i = 0; i < ids.length; i++) {
                            ids[i] = addToSecret(context, db, manager, syncDirtyIds, ids[i]);
                        }
                        result.putLongArray("ids", ids);
                    }
                    boolean shouldSync = false;
                    for (long id2 : ids) {
                        if (id2 > 0) {
                            shouldSync = true;
                            break;
                        }
                    }
                    result.putBoolean("should_request_sync", shouldSync);
                } else if (type == 2) {
                    albumId = Numbers.parse(arg, Long.valueOf(-1)).longValue();
                    ids = extras.getLongArray("extra_src_media_ids");
                    if (ids != null) {
                        for (i = 0; i < ids.length; i++) {
                            ids[i] = removeFromSecret(context, db, manager, syncDirtyIds, albumId, ids[i]);
                        }
                        result.putLongArray("ids", ids);
                    }
                }
            } else if ("add_remove_favorite".equals(method)) {
                int addRemoveBy = extras.getInt("add_remove_by");
                type = extras.getInt("operation_type");
                results = null;
                switch (addRemoveBy) {
                    case 1:
                        break;
                    case 2:
                        String[] sha1 = extras.getStringArray("extra_src_sha1");
                        if (sha1 != null) {
                            results = new long[sha1.length];
                            for (i = 0; i < sha1.length; i++) {
                                results[i] = addRemoveFavoritesSha1(context, db, manager, syncDirtyIds, sha1[i], type);
                            }
                            break;
                        }
                        break;
                    case 3:
                        String[] paths = extras.getStringArray("extra_src_paths");
                        if (paths != null) {
                            results = new long[paths.length];
                            for (i = 0; i < paths.length; i++) {
                                results[i] = addRemoveFavoritesByPath(context, db, manager, syncDirtyIds, paths[i], type);
                            }
                            break;
                        }
                        break;
                }
                ids = extras.getLongArray("extra_src_media_ids");
                if (ids != null) {
                    results = new long[ids.length];
                    for (i = 0; i < ids.length; i++) {
                        results[i] = addRemoveFavoritesById(context, db, manager, syncDirtyIds, ids[i], type);
                    }
                }
                result.putLongArray("ids", results);
            }
            if (syncDirtyIds.isEmpty()) {
            }
        }
        return result;
    }

    static {
        METHODS.add("create_album");
        METHODS.add("add_to_album");
        METHODS.add("delete");
        METHODS.add("set_album_attributes");
        METHODS.add("force_top");
        METHODS.add("unforce_top");
        METHODS.add("add_remove_secret");
        METHODS.add("rename_album");
        METHODS.add("delete_album");
        METHODS.add("add_remove_favorite");
    }

    public static Cursor queryCloudItemByFilePath(Context context, SQLiteDatabase db, String path) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        if (FileUtils.isFileExist(path)) {
            try {
                UserCommentData data = ExifUtil.getUserCommentData(path);
                String exifSha1 = data != null ? data.getSha1() : null;
                if (TextUtils.isEmpty(StorageUtils.getRelativePath(context, FileUtils.getParentFolderPath(path)))) {
                    Log.w("CloudManager", "Could't get album path for %s", path);
                    return null;
                } else if (TextUtils.isEmpty(exifSha1)) {
                    return db.query("cloud", QUERY_BY_PATH_PROJECTION, "fileName LIKE ? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)", new String[]{FileUtils.getFileName(path), albumPath}, null, null, null);
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("is_thumbnail", true);
                    Cursor cursor = db.query("cloud", QUERY_BY_PATH_PROJECTION, "sha1=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE ?)", new String[]{exifSha1, albumPath}, null, null, null);
                    if (!(cursor instanceof AbstractCursor)) {
                        return cursor;
                    }
                    ((AbstractCursor) cursor).setExtras(bundle);
                    return cursor;
                }
            } catch (Exception e) {
                Log.w("CloudManager", "exif exifSha1 read fail %s", e);
                return null;
            }
        }
        return db.query("cloud", QUERY_BY_PATH_PROJECTION, "(localFile LIKE ? or thumbnailFile LIKE ?) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{path, path}, null, null, null);
    }

    private static long copy(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long album, long media, int dupType) {
        try {
            Numbers.ensurePositive(album, media);
            if (dupType != -1) {
                return new DupCopy(context, dirtyIds, album, media, dupType).run(db, manager);
            }
            return new Copy(context, dirtyIds, media, album).run(db, manager);
        } catch (Throwable e) {
            Log.w("CloudManager", e);
            return -100;
        }
    }

    private static long move(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long album, long media, int dupType) {
        try {
            Numbers.ensurePositive(album, media);
            if (dupType != -1) {
                return new DupMove(context, dirtyIds, album, media, dupType).run(db, manager);
            }
            return new Move(context, dirtyIds, media, album).run(db, manager);
        } catch (Exception e) {
            return -100;
        }
    }

    private static long copyByUri(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long album, Uri uri) {
        try {
            return new CopyByUri(context, dirtyIds, uri, album).run(db, manager);
        } catch (Exception e) {
            return -100;
        }
    }

    private static long moveByUri(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long album, Uri uri) {
        try {
            return new MoveByUri(context, dirtyIds, uri, album).run(db, manager);
        } catch (Exception e) {
            return -100;
        }
    }

    private static Bundle createAlbum(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, String name) {
        long resultId;
        Bundle bundle = new Bundle(2);
        if (TextUtils.isEmpty(name)) {
            resultId = -100;
        } else {
            CreateAlbum createAlbumTask = new CreateAlbum(context, dirtyIds, name);
            resultId = createAlbumTask.run(db, manager);
            if (resultId == -103 || resultId == -105) {
                long conflictAlbumId = createAlbumTask.getConflictAlbumId(db);
                if (conflictAlbumId >= 0) {
                    bundle.putLong("conflict_album_id", conflictAlbumId);
                }
            }
        }
        bundle.putLong("id", resultId);
        return bundle;
    }

    private static Bundle renameAlbum(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long albumId, String newName) {
        long resultId;
        Bundle bundle = new Bundle(2);
        if (TextUtils.isEmpty(newName)) {
            resultId = -100;
        } else {
            try {
                Numbers.ensurePositive(albumId);
                RenameAlbum renameAlbumTask = new RenameAlbum(context, dirtyIds, albumId, newName);
                resultId = renameAlbumTask.run(db, manager);
                if (resultId == -103 || resultId == -105) {
                    long conflictAlbumId = renameAlbumTask.getConflictAlbumId(db);
                    if (conflictAlbumId >= 0) {
                        bundle.putLong("conflict_album_id", conflictAlbumId);
                    }
                }
            } catch (Throwable e) {
                Log.e("CloudManager", e);
                resultId = -100;
            }
        }
        bundle.putLong("id", resultId);
        return bundle;
    }

    private static long[] deleteAlbum(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long[] albumIds, int deleteOptions, ArrayList<Long> deleteIds, int deleteReason) {
        try {
            Numbers.ensurePositive(albumIds);
            long[] jArr = new long[albumIds.length];
            for (int i = 0; i < albumIds.length; i++) {
                if (deleteOptions == 1) {
                    jArr[i] = new DeleteFile(context, dirtyIds, albumIds[i], deleteReason).run(db, manager);
                } else {
                    jArr[i] = new DeleteAlbum(context, dirtyIds, albumIds[i], deleteReason).run(db, manager);
                }
                if (jArr[i] > 0) {
                    deleteIds.add(Long.valueOf(albumIds[i]));
                }
            }
            return jArr;
        } catch (Throwable e) {
            Log.w("CloudManager", e);
            return new long[]{-100};
        }
    }

    private static long[] deleteByPath(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, String[] paths, int deleteOptions, ArrayList<Long> deleteIds, int deleteReason) {
        try {
            long[] jArr = new long[paths.length];
            for (int i = 0; i < paths.length; i++) {
                jArr[i] = new DeleteByPath(context, dirtyIds, paths[i], deleteOptions, deleteIds, deleteReason).run(db, manager);
            }
            return jArr;
        } catch (Throwable e) {
            Log.w("CloudManager", e);
            return new long[]{-100};
        }
    }

    private static long[] deleteCloudByPath(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, String[] paths, ArrayList<Long> deleteIds, int deleteReason) {
        try {
            long[] jArr = new long[paths.length];
            for (int i = 0; i < paths.length; i++) {
                jArr[i] = new DeleteCloudByPath(context, dirtyIds, paths[i], deleteIds, deleteReason).run(db, manager);
            }
            return jArr;
        } catch (Throwable e) {
            Log.w("CloudManager", e);
            return new long[]{-100};
        }
    }

    private static long[] deleteById(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long[] ids, int dupType, int deleteOptions, ArrayList<Long> deleteIds, int deleteReason) {
        try {
            Numbers.ensurePositive(ids);
            if (dupType != -1) {
                return dupDelete(context, db, manager, dirtyIds, ids, dupType, deleteOptions, deleteIds, deleteReason);
            }
            return delete(context, db, manager, dirtyIds, ids, deleteOptions, deleteIds, deleteReason);
        } catch (Throwable e) {
            Log.w("CloudManager", e);
            return new long[]{-100};
        }
    }

    private static long[] delete(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyBulk, long[] ids, int deleteReason) {
        return delete(context, db, manager, dirtyBulk, ids, 0, null, deleteReason);
    }

    private static long[] delete(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyBulk, long[] ids, int deleteOptions, ArrayList<Long> deleteIds, int deleteReason) {
        long[] results;
        if (deleteOptions == 1) {
            results = new long[ids.length];
            for (int i = 0; i < ids.length; i++) {
                results[i] = new DeleteFile(context, dirtyBulk, ids[i], deleteReason).run(db, manager);
                if (results[i] > 0 && deleteIds != null) {
                    deleteIds.add(Long.valueOf(ids[i]));
                }
            }
            return results;
        }
        results = new Delete(context, dirtyBulk, ids, deleteReason).run(db, manager);
        if (deleteIds != null) {
            deleteIds.addAll(dirtyBulk);
        }
        return results;
    }

    private static long[] cloudDelete(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyBulk, long[] ids, ArrayList<Long> deleteIds, int deleteReason) {
        long[] results = new DeleteOwner(context, dirtyBulk, ids, true, deleteReason).run(db, manager);
        if (deleteIds != null) {
            deleteIds.addAll(dirtyBulk);
        }
        return results;
    }

    private static long[] dupDelete(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyBulk, long[] ids, int dupType, int deleteOptions, ArrayList<Long> deleteIds, int deleteReason) {
        long[] results;
        if (deleteOptions == 1) {
            results = new long[ids.length];
            for (int i = 0; i < ids.length; i++) {
                results[i] = new DupDeleteFile(context, dirtyBulk, ids[i], dupType, deleteReason).run(db, manager);
                if (results[i] > 0 && deleteIds != null) {
                    deleteIds.add(Long.valueOf(ids[i]));
                }
            }
            return results;
        }
        results = new DupDelete(context, dirtyBulk, ids, dupType, deleteReason).run(db, manager);
        if (deleteIds != null) {
            deleteIds.addAll(dirtyBulk);
        }
        return results;
    }

    private static long[] deleteBySha1(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, String[] sha1s, boolean keepDup, int deleteReason) {
        try {
            long[] jArr = new long[sha1s.length];
            for (int i = 0; i < sha1s.length; i++) {
                jArr[i] = new DeleteBySha1(context, dirtyIds, sha1s[i], keepDup, deleteReason).run(db, manager);
            }
            return jArr;
        } catch (Throwable e) {
            Log.w("CloudManager", e);
            return new long[]{-100};
        }
    }

    private static void forceTop(Context context, SQLiteDatabase db, MediaManager manager, long[] ids) {
        for (int i = ids.length - 1; i >= 0; i--) {
            forceTop(context, db, ids[i], manager, true);
        }
    }

    private static void unforceTop(Context context, SQLiteDatabase db, MediaManager manager, long[] ids) {
        for (int i = ids.length - 1; i >= 0; i--) {
            forceTop(context, db, ids[i], manager, false);
        }
    }

    private static void forceTop(Context context, SQLiteDatabase db, long id, MediaManager manager, boolean forceTop) {
        ContentValues values = new ContentValues();
        if (forceTop) {
            long nextForceTopTime = Album.getNextForceTopTime();
            if (id == 2147483647L || id == 2147483646 || id == 2147483645 || id == 2147483644 || id == 2147483642) {
                Album.setVirtualAlbumSortBy(id, nextForceTopTime);
                return;
            }
            values.put("sortBy", Long.valueOf(nextForceTopTime));
        } else {
            long dateTaken = 0;
            if (id == 2147483647L) {
                Album.setVirtualAlbumSortBy(id, -998);
                return;
            } else if (id == 2147483646) {
                Album.setVirtualAlbumSortBy(id, -997);
                return;
            } else if (id == 2147483645) {
                Album.setVirtualAlbumSortBy(id, -994);
                return;
            } else if (id == 2147483644) {
                Album.setVirtualAlbumSortBy(id, -1001);
                return;
            } else if (id == 2147483642) {
                Album.setVirtualAlbumSortBy(id, -1000);
                return;
            } else {
                if (id == 1) {
                    dateTaken = -999;
                } else if (id == 2) {
                    dateTaken = -995;
                }
                if (dateTaken == 0) {
                    values.putNull("sortBy");
                } else {
                    values.put("sortBy", Long.valueOf(dateTaken));
                }
            }
        }
        if (ShareAlbumManager.isOtherShareAlbumId(id)) {
            id = ShareAlbumManager.getOriginalAlbumId(id);
            db.update("shareAlbum", values, String.format(Locale.US, "%s = ?", new Object[]{"_id"}), new String[]{String.valueOf(id)});
            return;
        }
        db.update("cloud", values, String.format(Locale.US, "%s = ?", new Object[]{"_id"}), new String[]{String.valueOf(id)});
    }

    private static void setAlbumAttributes(SQLiteDatabase db, MediaManager manager, long[] ids, long attributesBit, boolean set, boolean manual) {
        long packageAttributeBit = AlbumManager.packageAttributeBit(attributesBit, set, manual);
        long attributeBitMask = AlbumManager.packageAttributeBit(attributesBit, true, true);
        int length = ids.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                long id = ids[i2];
                SQLiteDatabase sQLiteDatabase;
                if (ShareAlbumManager.isOtherShareAlbumId(id)) {
                    id = ShareAlbumManager.getOriginalAlbumId(id);
                    sQLiteDatabase = db;
                    sQLiteDatabase.execSQL(String.format(Locale.US, "UPDATE %s SET %s = (%s & ~%d) | %d WHERE %s = %s", new Object[]{"shareAlbum", "attributes", "attributes", Long.valueOf(attributeBitMask), Long.valueOf(packageAttributeBit), "_id", String.valueOf(id)}));
                } else {
                    String editedColumnsElement = "";
                    List<Long> syncAttrs = AlbumManager.getAlbumSyncAttributes();
                    if (BaseMiscUtil.isValid(syncAttrs) && syncAttrs.contains(Long.valueOf(attributesBit))) {
                        editedColumnsElement = GalleryCloudUtils.transformToEditedColumnsElement(6);
                    }
                    sQLiteDatabase = db;
                    sQLiteDatabase.execSQL(String.format(Locale.US, "UPDATE %s SET %s = (%s & ~%d) | %d, %s=coalesce(replace(%s, '%s', '') || '%s', '%s') WHERE %s IN (%s)", new Object[]{"cloud", "attributes", "attributes", Long.valueOf(attributeBitMask), Long.valueOf(packageAttributeBit), "editedColumns", "editedColumns", editedColumnsElement, editedColumnsElement, editedColumnsElement, "_id", String.valueOf(id)}));
                    manager.updateAttributes(id, attributesBit, set, manual);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static long addToSecret(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long id) {
        try {
            return new AddToSecret(context, dirtyIds, id).run(db, manager);
        } catch (Exception e) {
            Log.e("CloudManager", "add to secret error %d, %s", Long.valueOf(id), e);
            return -100;
        }
    }

    private static long addToSecret(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, Uri uri) {
        try {
            return new AddToSecretByUri(context, dirtyIds, uri).run(db, manager);
        } catch (Exception e) {
            Log.e("CloudManager", "add to secret error %s", (Object) uri);
            return -100;
        }
    }

    private static long removeFromSecret(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long albumId, long id) {
        try {
            return new RemoveFromSecret(context, dirtyIds, id, albumId).run(db, manager);
        } catch (Exception e) {
            Log.e("CloudManager", "remove from secret error %d", Long.valueOf(id));
            return -100;
        }
    }

    private static long addRemoveFavoritesSha1(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, String sha1, int operationType) {
        try {
            return new AddRemoveFavoritesBySha1(context, dirtyIds, operationType, sha1).run(db, manager);
        } catch (Exception e) {
            Log.e("CloudManager", "Add or remove favorites by sha1 with error: %s", (Object) sha1);
            return -100;
        }
    }

    private static long addRemoveFavoritesByPath(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, String path, int operationType) {
        try {
            return new AddRemoveFavoritesByPath(context, dirtyIds, operationType, path).run(db, manager);
        } catch (Exception e) {
            Log.e("CloudManager", "Add or remove favorites by path with error: %s", (Object) path);
            return -100;
        }
    }

    private static long addRemoveFavoritesById(Context context, SQLiteDatabase db, MediaManager manager, ArrayList<Long> dirtyIds, long id, int operationType) {
        try {
            return new AddRemoveFavoritesById(context, dirtyIds, operationType, id).run(db, manager);
        } catch (Exception e) {
            Log.e("CloudManager", "Add or remove favorites by id with error: %s", Long.valueOf(id));
            return -100;
        }
    }

    private static ContentValues copyOf(String[] projection, Cursor cursor) {
        Set<String> columns = new HashSet();
        columns.addAll(Arrays.asList(projection));
        ContentValues values = new ContentValues();
        for (int index = 0; index < cursor.getColumnCount(); index++) {
            Object name = cursor.getColumnName(index);
            if (columns.contains(name)) {
                if (!"babyInfoJson".equals(name)) {
                    switch (cursor.getType(index)) {
                        case 0:
                            values.putNull(name);
                            break;
                        case 1:
                            values.put(name, Long.valueOf(cursor.getLong(index)));
                            break;
                        case 2:
                            values.put(name, Double.valueOf(cursor.getDouble(index)));
                            break;
                        case 3:
                            values.put(name, cursor.getString(index));
                            break;
                        case 4:
                            values.put(name, cursor.getBlob(index));
                            break;
                        default:
                            break;
                    }
                }
                Log.d("CloudManager", "catch column(%s), remove local_flag ", name);
                try {
                    String raw = cursor.getString(index);
                    if (!TextUtils.isEmpty(raw)) {
                        JSONObject obj = new JSONObject(raw);
                        if (obj.has("localFlag")) {
                            obj.remove("localFlag");
                        }
                        values.put("babyInfoJson", obj.toString());
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return values;
    }

    private static boolean isVirtualAlbum(long localGroupId) {
        for (int albumId : GalleryContract.Album.ALL_VIRTUAL_ALBUM_IDS) {
            if (localGroupId == ((long) albumId)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isSystemAlbum(long serverId) {
        return serverId == 1 || serverId == 2 || serverId == 4 || serverId == 3;
    }

    static String genRelativePath(String albumName, boolean isOtherShareAlbum) {
        if (isOtherShareAlbum) {
            return DownloadPathHelper.getShareFolderRelativePathInCloud();
        }
        return DownloadPathHelper.getFolderRelativePathInCloud(albumName);
    }

    private static void startUpdater(Context context, boolean executeSync, ArrayList<Long> bulk) {
        FileHandleService.execute(context, executeSync, bulk);
    }

    static int getValidCount(long... results) {
        int count = 0;
        if (results != null) {
            for (long result : results) {
                int i;
                if (result > 0) {
                    i = 1;
                } else {
                    i = 0;
                }
                count += i;
            }
        }
        return count;
    }

    static DeleteRecord createDeleteRecord(int deleteReason, Cursor cursor, String tag) {
        if (cursor != null) {
            String filePath = cursor.getString(7);
            if (TextUtils.isEmpty(filePath)) {
                filePath = cursor.getString(8);
            }
            if (!TextUtils.isEmpty(filePath)) {
                return new DeleteRecord(deleteReason, filePath, tag);
            }
        }
        return null;
    }

    private static ContentValues desensitization(ContentValues values) {
        if (values == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues(values);
        contentValues.remove("address");
        contentValues.remove("exifGPSLatitude");
        contentValues.remove("exifGPSLongitude");
        contentValues.remove("extraGPS");
        contentValues.remove("location");
        return contentValues;
    }
}
