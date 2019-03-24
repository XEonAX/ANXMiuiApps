package com.miui.gallery.scanner;

import android.content.ContentProviderOperation;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.MiuiConfiguration;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.miui.extraphoto.sdk.ExtraPhotoSDK;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy.StreamFileStrategy;
import com.miui.gallery.data.LocalUbifocus;
import com.miui.gallery.data.LocalUbifocus.SubFile;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.data.LocationUtil;
import com.miui.gallery.data.UbiIndexMapper;
import com.miui.gallery.preference.BaseGalleryPreferences.SampleStatistic;
import com.miui.gallery.provider.ContentProviderBatchOperator;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.CloudWriteBulkNotify;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.RecentDiscoveryMediaManager;
import com.miui.gallery.provider.RecentDiscoveryMediaManager.RecentMediaEntry;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Encode;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.SpecialTypeMediaUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.util.VideoAttrsReader;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import miui.graphics.BitmapFactory;
import miui.telephony.TelephonyHelper;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class SaveToCloudUtil {
    private static final String[] CLOUD_PROJECTION = new String[]{"_id", "size", "fileName", "serverStatus", "localFlag", "sha1", "localFile", "thumbnailFile", "serverId"};
    private static final String[] ENSURE_INFO_PROJECTION_IMAGE = new String[]{"latitude", "longitude"};
    private static final String[] ENSURE_INFO_PROJECTION_VIDEO = new String[]{"latitude", "longitude"};

    private static class CloudEntry {
        long mID;
        int mLocalFlag;
        String mLocalPath;
        String mName;
        String mServerId;
        String mServerStatus;
        String mSha1;
        long mSize;
        String mThumbnailPath;

        private CloudEntry() {
        }

        /* synthetic */ CloudEntry(AnonymousClass1 x0) {
            this();
        }

        private boolean hasSynced() {
            return this.mLocalFlag == 0 || !TextUtils.isEmpty(this.mServerStatus);
        }
    }

    public static class SaveParams {
        private final long mAlbumId;
        private final int mAlbumSyncState;
        private final boolean mBulkNotify;
        private final boolean mIsInternalScanRequest;
        private final int mLocalFlag;
        private final File mSaveFile;

        public SaveParams(File saveFile, long albumId, int localFlag, boolean isInternalScanRequest) {
            this.mSaveFile = saveFile;
            this.mAlbumId = albumId;
            this.mLocalFlag = localFlag;
            this.mAlbumSyncState = -1;
            this.mBulkNotify = false;
            this.mIsInternalScanRequest = isInternalScanRequest;
        }

        public SaveParams(File saveFile, long albumId, boolean albumSyncable, int localFlag, boolean bulkNotify, boolean isInternalScanRequest) {
            this.mSaveFile = saveFile;
            this.mAlbumId = albumId;
            this.mAlbumSyncState = albumSyncable ? 0 : 1;
            this.mLocalFlag = localFlag;
            this.mBulkNotify = bulkNotify;
            this.mIsInternalScanRequest = isInternalScanRequest;
        }

        public File getSaveFile() {
            return this.mSaveFile;
        }

        public long getAlbumId() {
            return this.mAlbumId;
        }

        public boolean isValidSyncValue() {
            return this.mAlbumSyncState != -1;
        }

        public boolean isAlbumSyncable() {
            return this.mAlbumSyncState == 0;
        }

        public int getLocalFlag() {
            return this.mLocalFlag;
        }

        public boolean isBulkNotify() {
            return this.mBulkNotify;
        }

        public boolean isInternalScanRequest() {
            return this.mIsInternalScanRequest;
        }
    }

    private static class SaveToCloud {
        boolean mIsExifSha1;
        long mLastModify;
        String mMimeType;
        String mName;
        String mPath;
        String mSha1;
        long mSize;
        String mTitle;
        UbifocusEntry mUbiEntry;

        private SaveToCloud() {
        }

        /* synthetic */ SaveToCloud(AnonymousClass1 x0) {
            this();
        }
    }

    private static class UbifocusEntry {
        int mMainIndexForCloud;
        int mOuterIndexForCloud;
        List<SubFile> mSubFiles;

        private UbifocusEntry() {
        }

        /* synthetic */ UbifocusEntry(AnonymousClass1 x0) {
            this();
        }
    }

    public static long saveToCloudDB(Context context, SaveParams saveParams) {
        if (saveParams == null) {
            return -3;
        }
        SaveToCloud saveToCloud = parseSaveToCloud(saveParams.getSaveFile());
        if (saveToCloud == null) {
            return -1;
        }
        long start = SystemClock.uptimeMillis();
        int status = prepareInsert(context, saveToCloud, saveParams, null);
        if (-7 == status && saveParams.isAlbumSyncable()) {
            requestSync(context);
        }
        return status == 0 ? insert(context, saveToCloud, saveParams) : (long) status;
    }

    public static long saveToCloudDB(Context context, SaveParams saveParams, MediaBulkInserter inserter, ContentProviderBatchOperator batchOperator) {
        if (saveParams == null) {
            return -3;
        }
        SaveToCloud saveToCloud = parseSaveToCloud(saveParams.getSaveFile());
        if (saveToCloud == null) {
            return -1;
        }
        long start = SystemClock.uptimeMillis();
        int status = prepareInsert(context, saveToCloud, saveParams, batchOperator);
        if (inserter == null && -7 == status && saveParams.isAlbumSyncable()) {
            requestSync(context);
        }
        return status == 0 ? insert(context, saveToCloud, saveParams, inserter) : (long) status;
    }

    private static void requestSync(Context context) {
        SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).setDelayUpload(true).build());
    }

    private static SaveToCloud parseSaveToCloud(File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        String scanPath = file.getAbsolutePath();
        SaveToCloud saveToCloud = new SaveToCloud();
        saveToCloud.mPath = scanPath;
        saveToCloud.mName = FileUtils.getFileName(saveToCloud.mPath);
        saveToCloud.mTitle = FileUtils.getFileTitle(saveToCloud.mName);
        saveToCloud.mSize = file.length();
        saveToCloud.mMimeType = BaseFileMimeUtil.getMimeType(saveToCloud.mPath);
        saveToCloud.mLastModify = file.lastModified();
        return saveToCloud;
    }

    private static boolean needCheckExifSha1(String name) {
        return !TextUtils.isEmpty(name) && name.endsWith(".jpg");
    }

    private static int checkFileSize(SaveToCloud saveToCloud) {
        if (saveToCloud.mSize <= CloudUtils.getMinFileSizeLimit(saveToCloud.mMimeType)) {
            return -6;
        }
        return 0;
    }

    private static void update(Context context, ContentValues values, long id, SaveParams saveParams, ContentProviderBatchOperator batchOperator) {
        Uri uri = getWriteUri(saveParams);
        if (batchOperator != null) {
            batchOperator.add(context, ContentProviderOperation.newUpdate(uri).withSelection("_id=?", new String[]{String.valueOf(id)}).withValues(values).build());
            return;
        }
        SafeDBUtil.safeUpdate(context, uri, values, "_id=?", new String[]{String.valueOf(id)});
    }

    private static int prepareInsert(Context context, SaveToCloud saveToCloud, SaveParams saveParams, ContentProviderBatchOperator batchOperator) {
        int status = checkFileSize(saveToCloud);
        if (status != 0) {
            return status;
        }
        String scanPath = saveToCloud.mPath;
        String exifSha1 = null;
        String exifName = null;
        if (needCheckExifSha1(saveToCloud.mName)) {
            try {
                UserCommentData data = ExifUtil.getUserCommentData(saveToCloud.mPath);
                if (data != null) {
                    exifSha1 = data.getSha1();
                    exifName = data.getFileName(saveToCloud.mTitle);
                }
            } catch (Exception e) {
                Log.w("SaveToCloudUtil", "exif exifSha1 read fail %s", e);
                return -1;
            }
        }
        saveToCloud.mIsExifSha1 = !TextUtils.isEmpty(exifSha1);
        long start;
        ArrayList<CloudEntry> entries;
        CloudEntry conflictEntry;
        Iterator it;
        CloudEntry entry;
        ContentValues values;
        Map<String, String> params;
        String scanRenamePath;
        if (saveToCloud.mIsExifSha1) {
            try {
                start = SystemClock.uptimeMillis();
                entries = findEntry(context, saveToCloud.mName, exifName, exifSha1, saveParams.getAlbumId());
                if (BaseMiscUtil.isValid(entries)) {
                    String sha1 = null;
                    conflictEntry = null;
                    it = entries.iterator();
                    while (it.hasNext()) {
                        entry = (CloudEntry) it.next();
                        if (TextUtils.equals(exifSha1, entry.mSha1)) {
                            if (TextUtils.isEmpty(entry.mLocalPath) && TextUtils.isEmpty(entry.mThumbnailPath)) {
                                values = new ContentValues();
                                values.put("thumbnailFile", saveToCloud.mPath);
                                update(context, values, entry.mID, saveParams, batchOperator);
                            }
                            return -2;
                        } else if (saveToCloud.mName.equalsIgnoreCase(entry.mName)) {
                            if (saveToCloud.mSize == entry.mSize) {
                                if (TextUtils.isEmpty(entry.mThumbnailPath)) {
                                    values = new ContentValues();
                                    values.put("thumbnailFile", saveToCloud.mPath);
                                    update(context, values, entry.mID, saveParams, batchOperator);
                                }
                                return -2;
                            }
                            if (sha1 == null) {
                                sha1 = FileUtils.getSha1(saveToCloud.mPath);
                            }
                            if (TextUtils.equals(sha1, entry.mSha1)) {
                                saveToCloud.mSha1 = entry.mSha1;
                                saveToCloud.mIsExifSha1 = false;
                                if (TextUtils.isEmpty(entry.mLocalPath)) {
                                    values = new ContentValues();
                                    values.put("localFile", saveToCloud.mPath);
                                    update(context, values, entry.mID, saveParams, batchOperator);
                                }
                                Log.i("SaveToCloudUtil", "thumbnail is original %s", saveToCloud.mPath);
                                return -2;
                            }
                            conflictEntry = entry;
                        }
                    }
                    saveToCloud.mSha1 = exifSha1;
                    if (conflictEntry != null) {
                        params = BaseSamplingStatHelper.generatorCommonParams();
                        params.put("albumPath", StorageUtils.getRelativePath(context, new File(scanPath).getParent()));
                        params.put("sha1", conflictEntry.mSha1 + "_" + exifSha1);
                        BaseSamplingStatHelper.recordCountEvent("media_scanner", "scanner_rename_conflict_thumbnail", params);
                        scanRenamePath = CloudUtils.renameForPhotoConflict(scanPath);
                        saveToCloud.mPath = scanRenamePath;
                        saveToCloud.mName = FileUtils.getFileName(saveToCloud.mPath);
                        saveToCloud.mTitle = FileUtils.getFileTitle(saveToCloud.mName);
                        saveToCloud.mLastModify = new File(scanRenamePath).lastModified();
                    }
                } else {
                    saveToCloud.mSha1 = exifSha1;
                }
            } catch (Throwable e2) {
                Log.w("SaveToCloudUtil", e2);
                return -1;
            }
        }
        int mainIndex;
        if (LocalUbifocus.isUbifocusImage(saveToCloud.mPath)) {
            String mainFilePath = saveToCloud.mPath;
            int outerIndexForCloud = -1;
            int mainIndexForCloud = -1;
            List<SubFile> subUbiFiles = Lists.newArrayList();
            int outerIndex = LocalUbifocus.getUbifocusSubFiles(saveToCloud.mPath, subUbiFiles);
            if (subUbiFiles.size() > 0) {
                mainIndex = LocalUbifocus.getMainFileIndex();
                if (outerIndex != mainIndex) {
                    mainFilePath = ((SubFile) subUbiFiles.get(mainIndex)).getFilePath();
                }
                if (!(outerIndex == -1 || mainIndex == -1)) {
                    outerIndexForCloud = UbiIndexMapper.localToCloud(outerIndex, subUbiFiles.size());
                    mainIndexForCloud = UbiIndexMapper.localToCloud(mainIndex, subUbiFiles.size());
                }
            }
            if (!new File(mainFilePath).exists()) {
                return -1;
            }
            saveToCloud.mPath = mainFilePath;
            if (!(outerIndexForCloud == -1 || mainIndexForCloud == -1 || subUbiFiles.size() <= 0)) {
                saveToCloud.mUbiEntry = new UbifocusEntry();
                saveToCloud.mUbiEntry.mOuterIndexForCloud = outerIndexForCloud;
                saveToCloud.mUbiEntry.mMainIndexForCloud = mainIndexForCloud;
                saveToCloud.mUbiEntry.mSubFiles = subUbiFiles;
            }
        }
        try {
            start = SystemClock.uptimeMillis();
            entries = findEntry(context, saveToCloud.mName, saveParams.getAlbumId());
            conflictEntry = null;
            if (BaseMiscUtil.isValid(entries)) {
                Map<String, String> param;
                it = entries.iterator();
                while (it.hasNext()) {
                    entry = (CloudEntry) it.next();
                    if (saveToCloud.mSize == entry.mSize) {
                        values = new ContentValues();
                        if (TextUtils.isEmpty(entry.mSha1)) {
                            Log.i("SaveToCloudUtil", "file %s sha1 is null, update sha1", saveToCloud.mPath);
                            saveToCloud.mSha1 = FileUtils.getSha1(saveToCloud.mPath);
                            values.put("sha1", saveToCloud.mSha1);
                        }
                        if (TextUtils.isEmpty(entry.mLocalPath)) {
                            values.put("localFile", saveToCloud.mPath);
                        }
                        if (values.size() > 0) {
                            update(context, values, entry.mID, saveParams, batchOperator);
                        }
                        return -2;
                    }
                    if (TextUtils.isEmpty(saveToCloud.mSha1)) {
                        saveToCloud.mSha1 = FileUtils.getSha1(saveToCloud.mPath);
                    }
                    if (saveToCloud.mSha1.equalsIgnoreCase(entry.mSha1)) {
                        if (TextUtils.isEmpty(entry.mLocalPath)) {
                            values = new ContentValues();
                            values.put("localFile", saveToCloud.mPath);
                            update(context, values, entry.mID, saveParams, batchOperator);
                        }
                        return -2;
                    } else if (TextUtils.equals(entry.mLocalPath, saveToCloud.mPath) && !entry.hasSynced()) {
                        Log.i("SaveToCloudUtil", "file changed before sync: %s", saveToCloud.mPath);
                        Log.d("SaveToCloudUtil", "original file: sha1 [%s] size [%d]", entry.mSha1, Long.valueOf(entry.mSize));
                        values = genUpdateValues(context, saveToCloud);
                        Log.d("SaveToCloudUtil", "updated values: sha1 [%s] size [%d]", saveToCloud.mSha1, Long.valueOf(saveToCloud.mSize));
                        update(context, values, entry.mID, saveParams, batchOperator);
                        param = new HashMap();
                        param.put(nexExportFormat.TAG_FORMAT_PATH, saveToCloud.mPath);
                        param.put("size_old_new", String.valueOf(entry.mSize + "_" + saveToCloud.mSize));
                        BaseSamplingStatHelper.recordCountEvent("media_scanner", "file_content_changed", param);
                        return -7;
                    } else if (saveToCloud.mName.equalsIgnoreCase(entry.mName)) {
                        conflictEntry = entry;
                    }
                }
                if (needCheckExifSha1(saveToCloud.mName) && saveToCloud.mSize < MiuiConfiguration.THEME_FLAG_ALARMSTYLE) {
                    it = entries.iterator();
                    while (it.hasNext()) {
                        entry = (CloudEntry) it.next();
                        if (!TextUtils.isEmpty(entry.mThumbnailPath) && entry.mThumbnailPath.endsWith(saveToCloud.mName)) {
                            Log.w("SaveToCloudUtil", "%s maybe thumbnail", saveToCloud.mPath);
                            param = new HashMap();
                            param.put(nexExportFormat.TAG_FORMAT_PATH, saveToCloud.mPath);
                            param.put("size", String.valueOf(saveToCloud.mSize));
                            param.put("mappingServerId", entry.mServerId);
                            param.put("mappingName", entry.mName);
                            param.put("mappingSize", String.valueOf(entry.mSize));
                            BaseSamplingStatHelper.recordCountEvent("media_scanner", "treat_as_thumbnail", param);
                            return -2;
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(saveToCloud.mSha1)) {
                saveToCloud.mSha1 = FileUtils.getSha1(saveToCloud.mPath);
            }
            if (!saveParams.isInternalScanRequest()) {
                String parentFolder = FileUtils.getParentFolderPath(saveToCloud.mPath);
                String relativeFolder = StorageUtils.getRelativePath(context, parentFolder);
                StreamFileStrategy streamFile = CloudControlStrategyHelper.getStreamFileStrategy();
                if (streamFile == null || !streamFile.isStreamFolder(relativeFolder)) {
                    if (saveToCloud.mLastModify - new File(parentFolder).lastModified() > 1000) {
                        Log.w("SaveToCloudUtil", "maybe a stream folder %s", relativeFolder);
                        params = new HashMap();
                        params.put("folder", relativeFolder);
                        BaseSamplingStatHelper.recordErrorEvent("media_scanner", "scanner_stream_file", params);
                    }
                } else if (Math.abs(((System.currentTimeMillis() / 1000) * 1000) - saveToCloud.mLastModify) < streamFile.getDelayMilliseconds()) {
                    Log.w("SaveToCloudUtil", "scanning stream folder %s", relativeFolder);
                    return -1;
                }
            }
            if (conflictEntry != null) {
                params = BaseSamplingStatHelper.generatorCommonParams();
                params.put("albumPath", StorageUtils.getRelativePath(context, new File(scanPath).getParent()));
                params.put("sha1", conflictEntry.mSha1 + "_" + saveToCloud.mSha1);
                BaseSamplingStatHelper.recordCountEvent("media_scanner", "scanner_rename_conflict_origin", params);
                scanRenamePath = CloudUtils.renameForPhotoConflict(scanPath);
                if (saveToCloud.mUbiEntry != null) {
                    List<SubFile> list = LocalUbifocus.getUbifocusSubFiles(scanRenamePath);
                    mainIndex = LocalUbifocus.getMainFileIndex();
                    if (list != null && list.size() > mainIndex) {
                        saveToCloud.mPath = ((SubFile) list.get(mainIndex)).getFilePath();
                        File file = new File(saveToCloud.mPath);
                        saveToCloud.mName = FileUtils.getFileName(saveToCloud.mPath);
                        saveToCloud.mTitle = FileUtils.getFileTitle(saveToCloud.mName);
                        saveToCloud.mLastModify = file.lastModified();
                        saveToCloud.mUbiEntry.mSubFiles = list;
                    }
                } else {
                    saveToCloud.mPath = scanRenamePath;
                    saveToCloud.mName = FileUtils.getFileName(saveToCloud.mPath);
                    saveToCloud.mTitle = FileUtils.getFileTitle(saveToCloud.mName);
                    saveToCloud.mLastModify = new File(scanRenamePath).lastModified();
                }
            }
            if (saveToCloud.mLastModify > 0 && (System.currentTimeMillis() - saveToCloud.mLastModify) / 1000 < 60) {
                BaseSamplingStatHelper.recordCountEvent("Sync", "sync_photo_insert_in_one_minute", new HashMap());
            }
        } catch (Throwable e22) {
            Log.w("SaveToCloudUtil", e22);
            return -1;
        }
        return 0;
    }

    private static Uri getWriteUri(SaveParams saveParams) {
        if (ShareAlbumManager.isOtherShareAlbumId(saveParams.getAlbumId())) {
            return ShareImage.SHARE_URI;
        }
        if (saveParams.isBulkNotify()) {
            if (saveParams.isValidSyncValue()) {
                return CloudWriteBulkNotify.CLOUD_WRITE_BULK_NOTIFY_URI.buildUpon().appendQueryParameter("URI_PARAM_REQUEST_SYNC", String.valueOf(saveParams.isAlbumSyncable())).build();
            }
            return CloudWriteBulkNotify.CLOUD_WRITE_BULK_NOTIFY_URI;
        } else if (saveParams.isValidSyncValue()) {
            return Cloud.CLOUD_URI.buildUpon().appendQueryParameter("URI_PARAM_REQUEST_SYNC", String.valueOf(saveParams.isAlbumSyncable())).build();
        } else {
            return Cloud.CLOUD_URI;
        }
    }

    private static String getReadTableName(long albumId) {
        if (ShareAlbumManager.isOtherShareAlbumId(albumId)) {
            return "shareImage";
        }
        return "cloud";
    }

    private static Uri getReadUri(long albumId) {
        if (ShareAlbumManager.isOtherShareAlbumId(albumId)) {
            return ShareImage.SHARE_URI;
        }
        return Cloud.CLOUD_URI;
    }

    private static Uri getUbiSubUri(long albumId) {
        if (ShareAlbumManager.isOtherShareAlbumId(albumId)) {
            return GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI.buildUpon().appendQueryParameter("URI_PARAM_REQUEST_SYNC", String.valueOf(false)).build();
        }
        return GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI.buildUpon().appendQueryParameter("URI_PARAM_REQUEST_SYNC", String.valueOf(false)).build();
    }

    private static long insertImmediately(Context context, SaveToCloud saveToCloud, SaveParams saveParams) {
        long originAlbumId;
        long start = SystemClock.uptimeMillis();
        if (ShareAlbumManager.isOtherShareAlbumId(saveParams.getAlbumId())) {
            originAlbumId = ShareAlbumManager.getOriginalAlbumId(saveParams.getAlbumId());
        } else {
            originAlbumId = saveParams.getAlbumId();
        }
        ContentValues values = toValues(context, saveToCloud, originAlbumId, saveParams.getLocalFlag());
        start = SystemClock.uptimeMillis();
        Uri uri = SafeDBUtil.safeInsert(context, getWriteUri(saveParams), values);
        if (uri == null) {
            return -1;
        }
        long mediaId = ContentUris.parseId(uri);
        if (!ShareAlbumManager.isOtherShareAlbumId(saveParams.getAlbumId())) {
            start = SystemClock.uptimeMillis();
            RecentMediaEntry entry = new RecentMediaEntry(saveParams.getAlbumId(), mediaId, saveToCloud.mPath, saveToCloud.mLastModify);
            RecentDiscoveryMediaManager.insertToRecentDB(context, entry);
        }
        return ShareAlbumManager.isOtherShareAlbumId(saveParams.getAlbumId()) ? ShareMediaManager.convertToMediaId(mediaId) : mediaId;
    }

    private static long insert(Context context, SaveToCloud saveToCloud, SaveParams saveParams) {
        Log.d("SaveToCloudUtil", "insert %s", saveToCloud.mPath);
        if (saveToCloud.mUbiEntry != null) {
            return insertUbi(context, saveToCloud, saveParams);
        }
        return insertImmediately(context, saveToCloud, saveParams);
    }

    private static long insert(Context context, SaveToCloud saveToCloud, SaveParams saveParams, MediaBulkInserter inserter) {
        Log.d("SaveToCloudUtil", "bulk insert %s", saveToCloud.mPath);
        if (saveToCloud.mUbiEntry != null) {
            return insertUbi(context, saveToCloud, saveParams);
        }
        if (inserter == null || ShareAlbumManager.isOtherShareAlbumId(saveParams.getAlbumId())) {
            return insertImmediately(context, saveToCloud, saveParams);
        }
        long start = SystemClock.uptimeMillis();
        inserter.insert(context, toValues(context, saveToCloud, saveParams.getAlbumId(), saveParams.getLocalFlag()));
        return -4;
    }

    private static long insertUbi(Context context, SaveToCloud saveToCloud, SaveParams saveParams) {
        ContentValues values = toValues(context, saveToCloud, saveParams.getAlbumId(), saveParams.getLocalFlag());
        int subSize = saveToCloud.mUbiEntry.mSubFiles.size();
        values.put("ubiSubImageCount", Integer.valueOf(subSize - 1));
        values.put("ubiFocusIndex", Integer.valueOf(saveToCloud.mUbiEntry.mOuterIndexForCloud));
        values.put("ubiSubIndex", Integer.valueOf(saveToCloud.mUbiEntry.mMainIndexForCloud));
        Uri uri = SafeDBUtil.safeInsert(context, getWriteUri(saveParams), values);
        if (uri == null) {
            return -1;
        }
        long localId = ContentUris.parseId(uri);
        for (SubFile subFile : saveToCloud.mUbiEntry.mSubFiles) {
            File subUbiFile = new File(subFile.getFilePath());
            if (!subUbiFile.exists()) {
                return localId;
            }
            if (subFile.mIndex != LocalUbifocus.getMainFileIndex()) {
                saveToCloud.mPath = subFile.getFilePath();
                saveToCloud.mName = FileUtils.getFileName(saveToCloud.mPath);
                saveToCloud.mTitle = FileUtils.getFileTitle(saveToCloud.mName);
                saveToCloud.mLastModify = subUbiFile.lastModified();
                saveToCloud.mSize = subUbiFile.length();
                String sha1 = null;
                if (needCheckExifSha1(saveToCloud.mName)) {
                    try {
                        UserCommentData data = ExifUtil.getUserCommentData(saveToCloud.mPath);
                        sha1 = data != null ? data.getSha1() : null;
                    } catch (Throwable e) {
                        Log.w("SaveToCloudUtil", e);
                    }
                }
                if (TextUtils.isEmpty(sha1)) {
                    saveToCloud.mIsExifSha1 = false;
                    sha1 = FileUtils.getSha1(saveToCloud.mPath);
                } else {
                    saveToCloud.mIsExifSha1 = true;
                }
                saveToCloud.mSha1 = sha1;
                saveToCloud.mUbiEntry = null;
                ContentValues subValue = toValues(context, saveToCloud, saveParams.getAlbumId(), saveParams.getLocalFlag());
                long ubiSubIndex = (long) UbiIndexMapper.localToCloud(subFile.mIndex, subSize);
                subValue.put("ubiLocalId", Long.valueOf(localId));
                subValue.put("ubiSubIndex", Long.valueOf(ubiSubIndex));
                SafeDBUtil.safeInsert(context, getUbiSubUri(saveParams.getAlbumId()), subValue);
            }
        }
        return localId;
    }

    private static ContentValues genUpdateValues(Context context, SaveToCloud saveToCloud) {
        ContentValues values = new ContentValues();
        values.put("size", Long.valueOf(saveToCloud.mSize));
        values.put("dateModified", Long.valueOf(saveToCloud.mLastModify));
        values.put("sha1", saveToCloud.mSha1);
        if (BaseFileMimeUtil.isImageFromMimeType(saveToCloud.mMimeType)) {
            values.put("serverType", Integer.valueOf(1));
            putValuesForImage(saveToCloud.mPath, values, saveToCloud.mLastModify);
        } else if (BaseFileMimeUtil.isVideoFromMimeType(saveToCloud.mMimeType)) {
            values.put("serverType", Integer.valueOf(2));
            putValuesForVideo(context, saveToCloud.mPath, saveToCloud.mSize, values);
        }
        return values;
    }

    private static ContentValues toValues(Context context, SaveToCloud saveToCloud, long albumId, int localFlag) {
        ContentValues map = new ContentValues();
        map.put("size", Long.valueOf(saveToCloud.mSize));
        map.put("dateModified", Long.valueOf(saveToCloud.mLastModify));
        map.put("mimeType", saveToCloud.mMimeType);
        map.put("title", saveToCloud.mTitle);
        map.put("fileName", saveToCloud.mName);
        map.put("localFlag", Integer.valueOf(localFlag));
        if (saveToCloud.mIsExifSha1) {
            map.put("thumbnailFile", saveToCloud.mPath);
            map.put("localFile", saveToCloud.mPath);
        } else {
            map.put("localFile", saveToCloud.mPath);
        }
        map.put("sha1", saveToCloud.mSha1);
        map.put("localGroupId", Long.valueOf(albumId));
        if (BaseFileMimeUtil.isImageFromMimeType(saveToCloud.mMimeType)) {
            map.put("serverType", Integer.valueOf(1));
            putValuesForImage(saveToCloud.mPath, map, saveToCloud.mLastModify);
        } else if (BaseFileMimeUtil.isVideoFromMimeType(saveToCloud.mMimeType)) {
            map.put("serverType", Integer.valueOf(2));
            putValuesForVideo(context, saveToCloud.mPath, saveToCloud.mSize, map);
        }
        LocationManager.getInstance().appendExtraGpsInfo(saveToCloud.mPath, map);
        return map;
    }

    private static void putExifIntToContentValues(ExifInterface exifInterface, String exifkey, ContentValues values, String contentKey) {
        String value = exifInterface.getAttribute(exifkey);
        if (value != null) {
            try {
                values.put(contentKey, Integer.valueOf(value));
            } catch (Throwable ex) {
                Log.w("SaveToCloudUtil", ex);
            }
        }
    }

    public static long getDateTaken(ExifInterface exifInterface, long modifyTime) {
        long time = modifyTime;
        Date gpsDate = ExifUtil.getGpsDate(exifInterface);
        if (gpsDate == null) {
            time = ExifUtil.getDateTime(exifInterface);
            if (time == -1) {
                return modifyTime;
            }
            return time;
        }
        Date localDate = ExifUtil.getDate(exifInterface);
        if (localDate == null || GalleryDateUtils.isSameDate(localDate, gpsDate)) {
            return gpsDate.getTime();
        }
        return localDate.getTime();
    }

    private static void putValuesForImage(String path, ContentValues values, long lastModified) {
        try {
            int width;
            int height;
            Options bitmapOptions;
            if (BaseFileMimeUtil.hasExif(path)) {
                ExifInterface exifInterface = new ExifInterface(path);
                width = exifInterface.getAttributeInt("ImageWidth", 0);
                height = exifInterface.getAttributeInt("ImageLength", 0);
                if (width <= 0 || height <= 0) {
                    bitmapOptions = BitmapFactory.getBitmapSize(path);
                    width = bitmapOptions.outWidth;
                    height = bitmapOptions.outHeight;
                }
                values.put("exifImageWidth", Integer.valueOf(width));
                values.put("exifImageLength", Integer.valueOf(height));
                values.put("exifOrientation", Integer.valueOf(exifInterface.getAttributeInt("Orientation", 0)));
                values.put("exifGPSLatitude", exifInterface.getAttribute("GPSLatitude"));
                values.put("exifGPSLongitude", exifInterface.getAttribute("GPSLongitude"));
                values.put("exifMake", exifInterface.getAttribute("Make"));
                values.put("exifModel", exifInterface.getAttribute("Model"));
                putExifIntToContentValues(exifInterface, "Flash", values, "exifFlash");
                values.put("exifGPSLatitudeRef", exifInterface.getAttribute("GPSLatitudeRef"));
                values.put("exifGPSLongitudeRef", exifInterface.getAttribute("GPSLongitudeRef"));
                values.put("exifExposureTime", exifInterface.getAttribute("ExposureTime"));
                values.put("exifFNumber", exifInterface.getAttribute("FNumber"));
                values.put("exifISOSpeedRatings", exifInterface.getAttribute("ISOSpeedRatings"));
                values.put("exifGPSAltitude", exifInterface.getAttribute("GPSAltitude"));
                putExifIntToContentValues(exifInterface, "GPSAltitudeRef", values, "exifGPSAltitudeRef");
                values.put("exifGPSTimeStamp", exifInterface.getAttribute("GPSTimeStamp"));
                values.put("exifGPSDateStamp", exifInterface.getAttribute("GPSDateStamp"));
                putExifIntToContentValues(exifInterface, "WhiteBalance", values, "exifWhiteBalance");
                values.put("exifFocalLength", exifInterface.getAttribute("FocalLength"));
                values.put("exifGPSProcessingMethod", exifInterface.getAttribute("GPSProcessingMethod"));
                values.put("exifDateTime", exifInterface.getAttribute("DateTime"));
                long time = getDateTaken(exifInterface, lastModified);
                values.put("dateTaken", Long.valueOf(time));
                values.put("mixedDateTime", Long.valueOf(time));
                long specialTypeFlags = SpecialTypeMediaUtils.parseFlagsForImage(path);
                values.put("specialTypeFlags", Long.valueOf(specialTypeFlags));
                ExtraPhotoSDK.sendNewPhotoStatic(specialTypeFlags);
                if (!SampleStatistic.hasUploadUserInfo()) {
                    FileInputStream in = null;
                    try {
                        String xiaomiComment = ExifUtil.getXiaomiComment(path);
                        if (!TextUtils.isEmpty(xiaomiComment)) {
                            JSONObject json = new JSONObject(xiaomiComment);
                            if (TextUtils.equals(json.optString("sensor_type"), "front")) {
                                json.put("imeimd5", Encode.MD5Encode(TelephonyHelper.getInstance().getDeviceId().getBytes(Keyczar.DEFAULT_ENCODING)));
                                Object xiaomiComment2 = json.toString();
                                GalleryStatHelper.recordStringPropertyEvent("user_info", "self_shoot", xiaomiComment2);
                                SampleStatistic.setUploadedUserInfo(true);
                                Log.d("SaveToCloudUtil", "upload xiaomi comment %s", xiaomiComment2);
                            }
                        }
                        if (in != null) {
                            in.close();
                            return;
                        }
                        return;
                    } catch (Throwable e) {
                        Log.w("SaveToCloudUtil", e);
                        if (in != null) {
                            in.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        if (in != null) {
                            in.close();
                        }
                    }
                } else {
                    return;
                }
            }
            bitmapOptions = BitmapFactory.getBitmapSize(path);
            width = bitmapOptions.outWidth;
            height = bitmapOptions.outHeight;
            values.put("exifImageWidth", Integer.valueOf(width));
            values.put("exifImageLength", Integer.valueOf(height));
            values.put("exifOrientation", Integer.valueOf(0));
            values.put("dateTaken", Long.valueOf(lastModified));
            values.put("mixedDateTime", Long.valueOf(lastModified));
        } catch (Object e2) {
            Log.e("SaveToCloudUtil", "media scanner exif error %s", e2);
        }
    }

    private static void putValuesForVideo(Context context, String path, long size, ContentValues values) {
        try {
            VideoAttrsReader reader = VideoAttrsReader.read(path);
            values.put("title", reader.getTitle());
            long duration = reader.getDuration() / 1000;
            values.put("duration", Long.valueOf(duration));
            values.put("exifImageWidth", Integer.valueOf(reader.getVideoWidth()));
            values.put("exifImageLength", Integer.valueOf(reader.getVideoHeight()));
            long dateTaken = reader.getDateTaken();
            values.put("dateTaken", Long.valueOf(dateTaken));
            values.put("mixedDateTime", Long.valueOf(dateTaken));
            ensureLocation(context, path, false, values);
            values.put("specialTypeFlags", Long.valueOf(SpecialTypeMediaUtils.parseFlagsForVideo(path)));
            statVideoInfo(context, duration, path, size);
        } catch (Object e) {
            Log.e("SaveToCloudUtil", "media scanner exif video error %s", e);
        }
    }

    private static void statVideoInfo(Context context, long duration, String path, long size) {
        if (duration > 0) {
            HashMap<String, String> params = new HashMap();
            params.put("duration", String.valueOf(duration));
            params.put(nexExportFormat.TAG_FORMAT_PATH, StorageUtils.getRelativePath(context, path));
            params.put("size", String.format(Locale.US, "%.1fM", new Object[]{Float.valueOf(((float) size) / 1000000.0f)}));
            BaseSamplingStatHelper.recordCountEvent("media_scanner", "video_duration", params);
        }
    }

    private static void ensureLocation(Context context, String filePath, boolean isImage, final ContentValues values) {
        SafeDBUtil.safeQuery(context, isImage ? Media.EXTERNAL_CONTENT_URI : Video.Media.EXTERNAL_CONTENT_URI, isImage ? ENSURE_INFO_PROJECTION_IMAGE : ENSURE_INFO_PROJECTION_VIDEO, "_data=?", new String[]{filePath}, null, new QueryHandler() {
            public Object handle(Cursor cursor) {
                if (cursor != null && cursor.moveToNext()) {
                    double latitude = cursor.getDouble(0);
                    double longitude = cursor.getDouble(1);
                    if (!BaseMiscUtil.doubleEquals(latitude, 0.0d) && values.get("exifGPSLatitude") == null) {
                        values.put("exifGPSLatitude", LocationUtil.convertDoubleToLaLon(latitude));
                    }
                    if (!BaseMiscUtil.doubleEquals(longitude, 0.0d) && values.get("exifGPSLongitude") == null) {
                        values.put("exifGPSLongitude", LocationUtil.convertDoubleToLaLon(longitude));
                    }
                }
                return null;
            }
        });
    }

    private static CloudEntry toCloudEntry(Cursor cursor) {
        CloudEntry cloudEntry = new CloudEntry();
        cloudEntry.mID = cursor.getLong(0);
        cloudEntry.mSize = cursor.getLong(1);
        cloudEntry.mName = cursor.getString(2);
        cloudEntry.mServerStatus = cursor.getString(3);
        cloudEntry.mLocalFlag = cursor.getInt(4);
        cloudEntry.mSha1 = cursor.getString(5);
        cloudEntry.mLocalPath = cursor.getString(6);
        cloudEntry.mThumbnailPath = cursor.getString(7);
        cloudEntry.mServerId = cursor.getString(8);
        return cloudEntry;
    }

    private static ArrayList<CloudEntry> findEntry(Context context, String name, long albumId) {
        SQLiteDatabase db = GalleryDBHelper.getInstance().getReadableDatabase();
        QueryHandler handler = new QueryHandler<ArrayList<CloudEntry>>() {
            public ArrayList<CloudEntry> handle(Cursor cursor) {
                if (cursor == null) {
                    throw new IllegalStateException("query cursor is null");
                }
                ArrayList<CloudEntry> entries = new ArrayList(cursor.getCount());
                while (cursor.moveToNext()) {
                    entries.add(SaveToCloudUtil.toCloudEntry(cursor));
                }
                return entries;
            }
        };
        if (db != null) {
            return (ArrayList) SafeDBUtil.safeQuery(db, getReadTableName(albumId), CLOUD_PROJECTION, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR (localFile is not null AND localFile like ?)) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus='custom' OR serverStatus='temp')", new String[]{String.valueOf(albumId), name, "%/" + name}, null, handler);
        }
        return (ArrayList) SafeDBUtil.safeQuery(context, getReadUri(albumId), CLOUD_PROJECTION, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR (localFile is not null AND localFile like ?)) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus='custom' OR serverStatus='temp')", new String[]{String.valueOf(albumId), name, "%/" + name}, null, handler);
    }

    private static ArrayList<CloudEntry> findEntry(Context context, String name, String exifName, String exifSha1, long albumId) {
        SQLiteDatabase db = GalleryDBHelper.getInstance().getReadableDatabase();
        QueryHandler handler = new QueryHandler<ArrayList<CloudEntry>>() {
            public ArrayList<CloudEntry> handle(Cursor cursor) {
                if (cursor == null) {
                    throw new IllegalStateException("query cursor is null");
                }
                ArrayList<CloudEntry> entries = new ArrayList(cursor.getCount());
                while (cursor.moveToNext()) {
                    entries.add(SaveToCloudUtil.toCloudEntry(cursor));
                }
                return entries;
            }
        };
        if (db != null) {
            return (ArrayList) SafeDBUtil.safeQuery(db, getReadTableName(albumId), CLOUD_PROJECTION, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR UPPER(fileName) = UPPER(?) OR sha1 = ?) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus='custom' OR serverStatus='temp')", new String[]{String.valueOf(albumId), name, exifName, exifSha1}, null, handler);
        }
        return (ArrayList) SafeDBUtil.safeQuery(context, getReadUri(albumId), CLOUD_PROJECTION, "localGroupId=? AND (UPPER(fileName) = UPPER(?) OR UPPER(fileName) = UPPER(?) OR sha1 = ?) AND (serverType=1 OR serverType=2) AND (serverStatus is null OR serverStatus='custom' OR serverStatus='temp')", new String[]{String.valueOf(albumId), name, exifName, exifSha1}, null, handler);
    }
}
