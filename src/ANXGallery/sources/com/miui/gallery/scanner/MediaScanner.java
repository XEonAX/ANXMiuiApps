package com.miui.gallery.scanner;

import android.content.ContentProviderOperation;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.google.common.base.Joiner;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy.Album;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy.AlbumPattern;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy.Attributes;
import com.miui.gallery.cloudcontrol.strategies.HiddenAlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerReservedAlbumNamesStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerUnModifyAlbumsStrategy;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.AlbumManager;
import com.miui.gallery.provider.ContentProviderBatchOperator;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.provider.GalleryContract.CloudWriteBulkNotify;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.scanner.SaveToCloudUtil.SaveParams;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileMimeUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.SpecialTypeMediaUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.os.Rom;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class MediaScanner {
    private static final String[] ALBUM_NAME_CONFLICT_PROJECTION = new String[]{"count(*)"};
    private static final String[] ALBUM_PROJECTION = new String[]{"_id", "serverId", "dateModified", "localFlag", "serverStatus", "fileName", "attributes"};
    private static final String[] POST_SCAN_PROJECTION = new String[]{"_id", "sha1", "localFile", "localFlag", "localFile", "thumbnailFile"};
    private static final String[] SPECIAL_TYPE_FLAGS_PROJECTION = new String[]{"_id", "localFile"};
    private static final String SPECIAL_TYPE_FLAGS_WHERE = ("_id > ? AND serverType = 1 AND " + Cloud.ALIAS_ORIGIN_FILE_VALID + " AND " + "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))");
    private static final Object sLock = new Object();
    private static ServerReservedAlbumNamesStrategy sServerReservedAlbumNamesStrategy;
    private static ServerUnModifyAlbumsStrategy sServerUnModifyAlbumsStrategy;

    private static class AlbumEntry {
        boolean isModified;
        boolean isOnlyLinkFolder;
        boolean isShareAlbum;
        String mAlbumName;
        int mAttributes;
        long mDateModified;
        long mID;
        int mLocalFlag;
        String mServerID;
        String mServerStatus;

        private AlbumEntry() {
        }

        /* synthetic */ AlbumEntry(AnonymousClass1 x0) {
            this();
        }

        public static boolean shouldScan(AlbumEntry entry) {
            return (entry == null || entry.mLocalFlag == 2 || TextUtils.equals(entry.mServerStatus, "deleted") || TextUtils.equals(entry.mServerStatus, "purged")) ? false : true;
        }

        public static boolean isSyncable(int attributes) {
            return (((long) attributes) & 1) != 0;
        }
    }

    private static class MediaScannerHelper {
        private static ArrayMap<Pattern, Attributes> sAlbumPatternMap;
        private static Comparator<File> sFileComparator;
        private static Pattern[] sHideAlbumPatterns;
        private static List<String> sNonHiddenPathPrefixList;
        private static final Object sSyncLock = new Object();

        private static class FileComparator implements Comparator<File> {
            private FileComparator() {
            }

            /* synthetic */ FileComparator(AnonymousClass1 x0) {
                this();
            }

            public int compare(File lhs, File rhs) {
                long r = rhs.lastModified();
                long l = lhs.lastModified();
                if (r > l) {
                    return 1;
                }
                if (r < l) {
                    return -1;
                }
                return 0;
            }
        }

        public static class MediaFileFilter implements FilenameFilter {
            private boolean mHasMediaFile;
            private JobContext mJobContext;

            public MediaFileFilter(JobContext jobContext) {
                this.mJobContext = jobContext;
            }

            public boolean accept(File dir, String filename) {
                boolean hasMedia = false;
                if (isCancelled()) {
                    return false;
                }
                File file = new File(dir, filename);
                if (file.isHidden()) {
                    return false;
                }
                if (file.isDirectory()) {
                    return MediaScanner.isScannableDirectory(file);
                }
                if (!file.isFile()) {
                    return false;
                }
                String mimeType = FileMimeUtil.getSupportUploadMimeType(file.getAbsolutePath());
                if (BaseFileMimeUtil.isImageFromMimeType(mimeType) || BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
                    hasMedia = true;
                }
                if (this.mHasMediaFile || !hasMedia) {
                    return hasMedia;
                }
                this.mHasMediaFile = true;
                return hasMedia;
            }

            private boolean isCancelled() {
                return this.mJobContext != null && this.mJobContext.isCancelled();
            }

            public boolean hasMediaFile() {
                return this.mHasMediaFile;
            }
        }

        private static List<String> getNonHiddenPathPrefixList() {
            List<String> list;
            synchronized (sSyncLock) {
                if (sNonHiddenPathPrefixList == null) {
                    sNonHiddenPathPrefixList = new ArrayList();
                    HiddenAlbumsStrategy hiddenAlbums = CloudControlStrategyHelper.getHiddenAlbums();
                    if (hiddenAlbums != null && BaseMiscUtil.isValid(hiddenAlbums.getNonHiddenPathPrefix())) {
                        sNonHiddenPathPrefixList.addAll(hiddenAlbums.getNonHiddenPathPrefix());
                    }
                }
                list = sNonHiddenPathPrefixList;
            }
            return list;
        }

        private static Pattern[] getHideAlbumPatterns() {
            PatternSyntaxException e;
            Pattern[] patternArr;
            synchronized (sSyncLock) {
                if (sHideAlbumPatterns == null) {
                    HiddenAlbumsStrategy hiddenAlbums = CloudControlStrategyHelper.getHiddenAlbums();
                    if (hiddenAlbums != null) {
                        List<String> patterns = hiddenAlbums.getPatterns();
                        if (BaseMiscUtil.isValid(patterns)) {
                            sHideAlbumPatterns = new Pattern[patterns.size()];
                            int index = 0;
                            Iterator it = patterns.iterator();
                            while (true) {
                                int i = index;
                                if (it.hasNext()) {
                                    String pattern = (String) it.next();
                                    try {
                                        index = i + 1;
                                        try {
                                            sHideAlbumPatterns[i] = Pattern.compile(pattern);
                                        } catch (PatternSyntaxException e2) {
                                            e = e2;
                                            i = index;
                                        }
                                    } catch (PatternSyntaxException e3) {
                                        e = e3;
                                        Log.e("MediaScanner", "Invalid hide album regex pattern: %s", e.getPattern());
                                        index = i + 1;
                                        sHideAlbumPatterns[i] = null;
                                    }
                                }
                            }
                        }
                    }
                }
                patternArr = sHideAlbumPatterns;
            }
            return patternArr;
        }

        private static ArrayMap<Pattern, Attributes> getAlbumPatternMap() {
            ArrayMap<Pattern, Attributes> arrayMap;
            synchronized (sSyncLock) {
                if (sAlbumPatternMap == null) {
                    sAlbumPatternMap = new ArrayMap();
                    List<AlbumPattern> albumPatterns = CloudControlStrategyHelper.getAlbumPatterns();
                    if (albumPatterns != null && albumPatterns.size() > 0) {
                        for (AlbumPattern pattern : albumPatterns) {
                            if (!(TextUtils.isEmpty(pattern.getPattern()) || pattern.getAttributes() == null)) {
                                try {
                                    sAlbumPatternMap.put(Pattern.compile(pattern.getPattern(), 2), pattern.getAttributes());
                                } catch (PatternSyntaxException e) {
                                    Log.e("MediaScanner", "Invalid album regex pattern: %s", e.getPattern());
                                }
                            }
                        }
                    }
                }
                arrayMap = sAlbumPatternMap;
            }
            return arrayMap;
        }

        public static MediaFileFilter getFileFilter(JobContext jobContext) {
            return new MediaFileFilter(jobContext);
        }

        public static Comparator<File> getFileComparator() {
            if (sFileComparator == null) {
                sFileComparator = new FileComparator();
            }
            return sFileComparator;
        }

        public static Attributes getAttributesByPath(String relativePath) {
            if (relativePath == null || StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH.equals(relativePath)) {
                return null;
            }
            ArrayMap<Pattern, Attributes> albumPatternMap = getAlbumPatternMap();
            if (albumPatternMap != null) {
                for (Entry<Pattern, Attributes> entry : albumPatternMap.entrySet()) {
                    if (((Pattern) entry.getKey()).matcher(relativePath).find()) {
                        return (Attributes) entry.getValue();
                    }
                }
            }
            return null;
        }

        public static boolean isInBlackList(String relativePath) {
            if (TextUtils.isEmpty(relativePath) || StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH.equals(relativePath)) {
                return false;
            }
            String parentPath = relativePath;
            int index = parentPath.length();
            do {
                parentPath = parentPath.substring(0, index);
                Album album = CloudControlStrategyHelper.getAlbumByPath(parentPath);
                if (album != null && album.getAttributes() != null && album.getAttributes().isHide()) {
                    return true;
                }
                index = parentPath.lastIndexOf(File.separatorChar);
            } while (index != -1);
            if (relativePath.indexOf(File.separator) == -1) {
                return false;
            }
            List<String> nonHiddenPathPrefixList = getNonHiddenPathPrefixList();
            if (BaseMiscUtil.isValid(nonHiddenPathPrefixList)) {
                for (String nonHiddenPathPrefix : nonHiddenPathPrefixList) {
                    if (relativePath.toLowerCase().startsWith(nonHiddenPathPrefix.toLowerCase())) {
                        return false;
                    }
                }
            }
            Pattern[] patterns = getHideAlbumPatterns();
            if (patterns != null && patterns.length > 0) {
                int length = patterns.length;
                int i = 0;
                while (i < length) {
                    Pattern pattern = patterns[i];
                    if (pattern == null || !pattern.matcher(relativePath).find()) {
                        i++;
                    } else {
                        MediaScanner.recordHiddenAlbum(relativePath);
                        return true;
                    }
                }
            }
            return false;
        }

        public static boolean isOnlyLinkFileFolder(String relativePath) {
            return DownloadPathHelper.isShareFolderRelativePath(relativePath);
        }
    }

    private static class ScannerDirectoryClient {
        private ScannerFileClient mFileClient;
        private JobContext mJobContext;

        ScannerDirectoryClient(ScannerFileClient client, JobContext jc) {
            this.mFileClient = client;
            this.mJobContext = jc;
        }

        private boolean isCancelled() {
            return this.mJobContext != null && this.mJobContext.isCancelled();
        }

        public void scanFolder(Context context, File folder, boolean recursiveScan) {
            long start = SystemClock.uptimeMillis();
            if (folder != null && folder.exists() && !folder.isHidden()) {
                String path = folder.getAbsolutePath();
                if (!MediaScannerHelper.isOnlyLinkFileFolder(StorageUtils.getRelativePath(context, path))) {
                    AlbumEntry entry = MediaScanner.queryAndUpdateAlbum(context, path);
                    boolean shouldScanFolder = entry == null || (entry.isModified && AlbumEntry.shouldScan(entry));
                    if (shouldScanFolder || recursiveScan) {
                        MediaFileFilter filter = MediaScannerHelper.getFileFilter(this.mJobContext);
                        File[] files = folder.listFiles(filter);
                        if (files != null && !isCancelled()) {
                            File child;
                            if (filter.hasMediaFile()) {
                                Arrays.sort(files, MediaScannerHelper.getFileComparator());
                                if (!isCancelled()) {
                                    ArrayList<File> childFolders = doScan(context, path, entry, files, start);
                                    if (recursiveScan && childFolders != null) {
                                        Iterator it = childFolders.iterator();
                                        while (it.hasNext()) {
                                            child = (File) it.next();
                                            if (!isCancelled()) {
                                                scanFolder(context, child, true);
                                            } else {
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (entry != null) {
                                MediaScanner.updateAlbumDateModified(context, entry);
                            }
                            if (recursiveScan) {
                                int length = files.length;
                                int i = 0;
                                while (i < length) {
                                    child = files[i];
                                    if (!isCancelled()) {
                                        scanFolder(context, child, true);
                                        i++;
                                    } else {
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        private ArrayList<File> doScan(Context context, String path, AlbumEntry entry, File[] files, long startTimeMillis) {
            if (entry == null) {
                entry = MediaScanner.insertAlbum(context, path);
            }
            if (entry != null && entry.isOnlyLinkFolder) {
                return null;
            }
            boolean shouldScanFolder = entry != null && entry.isModified && AlbumEntry.shouldScan(entry);
            if (shouldScanFolder) {
                Log.i("MediaScanner", "do scan folder %s", (Object) path);
            }
            ArrayList<File> childFolders = new ArrayList();
            boolean hasScanFail = false;
            for (File file : files) {
                if (isCancelled()) {
                    return null;
                }
                if (!file.isFile()) {
                    childFolders.add(file);
                } else if (shouldScanFolder) {
                    try {
                        long start = System.currentTimeMillis();
                        if (-1 == this.mFileClient.scanFile(context, file, entry)) {
                            Log.w("MediaScanner", "scan %s fail", file.getAbsolutePath());
                            hasScanFail = true;
                        }
                    } catch (Exception e) {
                        Log.w("MediaScanner", "scan file %s exception %s", file.getAbsolutePath(), e);
                    }
                }
            }
            if (!shouldScanFolder || isCancelled() || hasScanFail) {
                return childFolders;
            }
            MediaScanner.updateAlbumDateModified(context, entry);
            if (!Rom.IS_DEV) {
                return childFolders;
            }
            recordScanCost(context, path, startTimeMillis, entry);
            return childFolders;
        }

        private void recordScanCost(Context context, String path, long startTimeMillis, AlbumEntry entry) {
            Long serverId = null;
            try {
                serverId = Long.valueOf(Long.parseLong(entry.mServerID));
            } catch (NumberFormatException e) {
            }
            if (serverId == null) {
                return;
            }
            if (serverId.longValue() == 1 || serverId.longValue() == 2) {
                String relativePath = StorageUtils.getRelativePath(context, path);
                HashMap<String, String> params = new HashMap();
                params.put("wait_for_scan_cost(s)", String.valueOf((System.currentTimeMillis() - entry.mDateModified) / 1000));
                params.put("scan_cost(ms)", String.valueOf(SystemClock.uptimeMillis() - startTimeMillis));
                BaseSamplingStatHelper.recordCountEvent("media_scanner", String.format("scan_directory_%s", new Object[]{relativePath}), params);
            }
        }
    }

    private static class ScannerFileClient {
        private final ContentProviderBatchOperator mBatchOperator;
        private final boolean mBulkNotify;
        private final MediaBulkInserter mInserter;
        private final boolean mIsInternalScanRequest;
        private int mNonBulkInsertCount;
        private final boolean mTriggerSync;

        ScannerFileClient(boolean bulkNotify, MediaBulkInserter inserter, ContentProviderBatchOperator batchOperator, boolean triggerSync, boolean isInternalScanRequest) {
            this.mBulkNotify = bulkNotify;
            this.mTriggerSync = triggerSync;
            this.mBatchOperator = batchOperator;
            this.mInserter = inserter;
            this.mIsInternalScanRequest = isInternalScanRequest;
        }

        public long scanFile(Context context, File file, AlbumEntry album) {
            boolean z = true;
            if (album.isOnlyLinkFolder) {
                return 0;
            }
            long albumId = album.isShareAlbum ? ShareAlbumManager.getUniformAlbumId(album.mID) : album.mID;
            if (this.mInserter != null) {
                if (!(this.mTriggerSync && AlbumEntry.isSyncable(album.mAttributes))) {
                    z = false;
                }
                long result = SaveToCloudUtil.saveToCloudDB(context, new SaveParams(file, albumId, z, 7, this.mBulkNotify, this.mIsInternalScanRequest), this.mInserter, this.mBatchOperator);
                if (-4 == result) {
                    return result;
                }
                int i = this.mNonBulkInsertCount + 1;
                this.mNonBulkInsertCount = i;
                if (i <= 20) {
                    return result;
                }
                this.mNonBulkInsertCount = 0;
                this.mInserter.flush(context);
                return result;
            }
            if (!(this.mTriggerSync && AlbumEntry.isSyncable(album.mAttributes))) {
                z = false;
            }
            return SaveToCloudUtil.saveToCloudDB(context, new SaveParams(file, albumId, z, 7, this.mBulkNotify, this.mIsInternalScanRequest));
        }
    }

    private static ServerUnModifyAlbumsStrategy getServerUnModifyAlbumsStrategy() {
        ServerUnModifyAlbumsStrategy serverUnModifyAlbumsStrategy;
        synchronized (sLock) {
            if (sServerUnModifyAlbumsStrategy == null) {
                sServerUnModifyAlbumsStrategy = CloudControlStrategyHelper.getServerUnModifyAlbumsStrategy();
            }
            serverUnModifyAlbumsStrategy = sServerUnModifyAlbumsStrategy;
        }
        return serverUnModifyAlbumsStrategy;
    }

    private static ServerReservedAlbumNamesStrategy getServerReservedAlbumNamesStrategy() {
        ServerReservedAlbumNamesStrategy serverReservedAlbumNamesStrategy;
        synchronized (sLock) {
            if (sServerReservedAlbumNamesStrategy == null) {
                sServerReservedAlbumNamesStrategy = CloudControlStrategyHelper.getServerReservedAlbumNamesStrategy();
            }
            serverReservedAlbumNamesStrategy = sServerReservedAlbumNamesStrategy;
        }
        return serverReservedAlbumNamesStrategy;
    }

    public static void cleanup(Context context, JobContext jc, List<String> albumIds) {
        String selection;
        long start = SystemClock.uptimeMillis();
        if (BaseMiscUtil.isValid(albumIds)) {
            selection = DatabaseUtils.concatenateWhere("_id>? AND (serverType=1 OR serverType=2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId!=-1000)", String.format(Locale.US, "localGroupId IN (%s)", new Object[]{Joiner.on(",").skipNulls().join((Iterable) albumIds)}));
        } else {
            selection = "_id>? AND (serverType=1 OR serverType=2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId!=-1000)";
        }
        String[] selectionArgs = new String[]{""};
        final ContentProviderBatchOperator batchOperator = new ContentProviderBatchOperator("com.miui.gallery.cloud.provider");
        final CloudMediaBulkDeleter deleter = new CloudMediaBulkDeleter(GalleryContract.Cloud.CLOUD_URI, "_id");
        final boolean everCleanUnsupportedItems = com.miui.gallery.preference.GalleryPreferences.MediaScanner.getEverCleanUnsupportUploadItems();
        boolean isCleanSuccess = true;
        int lastId = Integer.MIN_VALUE;
        try {
            final JobContext jobContext = jc;
            final Context context2 = context;
            QueryHandler<Integer> handler = new QueryHandler<Integer>() {
                public Integer handle(Cursor cursor) {
                    int id = Integer.MAX_VALUE;
                    if (cursor != null) {
                        Collection deleteRecords = new ArrayList();
                        while (cursor.moveToNext()) {
                            if (jobContext != null && jobContext.isCancelled()) {
                                return null;
                            }
                            id = cursor.getInt(0);
                            int localFlag = cursor.getInt(3);
                            if (localFlag == 7 || localFlag == 8) {
                                Object localPath = cursor.getString(2);
                                if (FileUtils.isFileExist(localPath)) {
                                    if (!(everCleanUnsupportedItems || CloudUtils.canUpload((String) localPath, false) == 0)) {
                                        if (!deleter.deleteForResult(context2, (long) id)) {
                                            return null;
                                        }
                                        Log.d("MediaScanner", "delete couldn't upload items %s", localPath);
                                        deleteRecords.add(new DeleteRecord(12, localPath, "MediaScanner"));
                                        ImageFeatureManger.getInstance().onImageDelete((long) id);
                                    }
                                } else if (!deleter.deleteForResult(context2, (long) id)) {
                                    return null;
                                } else {
                                    Log.d("MediaScanner", "delete %s", localPath);
                                    deleteRecords.add(new DeleteRecord(11, localPath, "MediaScanner"));
                                    ImageFeatureManger.getInstance().onImageDelete((long) id);
                                }
                            } else if (localFlag == 0) {
                                MediaScanner.checkAndUpdateFileInfo(context2, cursor, (long) id, batchOperator, deleteRecords);
                            }
                        }
                        if (BaseMiscUtil.isValid(deleteRecords)) {
                            DeleteRecorder.record(deleteRecords);
                        }
                    }
                    return Integer.valueOf(id);
                }
            };
            while (true) {
                if (jc == null || !jc.isCancelled()) {
                    selectionArgs[0] = String.valueOf(lastId);
                    Integer result = (Integer) SafeDBUtil.safeQuery(context, UriUtil.appendLimit(GalleryContract.Cloud.CLOUD_URI, 1000), POST_SCAN_PROJECTION, selection, selectionArgs, POST_SCAN_PROJECTION[0], (QueryHandler) handler);
                    if (result == null) {
                        isCleanSuccess = false;
                        lastId = Integer.MAX_VALUE;
                    } else {
                        lastId = result.intValue();
                    }
                    if (lastId >= Integer.MAX_VALUE) {
                        break;
                    }
                }
                isCleanSuccess = false && deleter.flushForResult(context);
                if (isCleanSuccess) {
                    batchOperator.apply(context);
                    if (!everCleanUnsupportedItems) {
                        com.miui.gallery.preference.GalleryPreferences.MediaScanner.setEverCleanUnsupportUploadItems();
                        return;
                    }
                    return;
                }
                return;
            }
            scannerCorrectLogic(context, jc);
            fillSpecialTypeFlags(context, jc);
            Log.d("MediaScanner", "cleanup costs: %d", Long.valueOf(SystemClock.uptimeMillis() - start));
        } finally {
            isCleanSuccess = isCleanSuccess && deleter.flushForResult(context);
            if (isCleanSuccess) {
                batchOperator.apply(context);
                if (!everCleanUnsupportedItems) {
                    com.miui.gallery.preference.GalleryPreferences.MediaScanner.setEverCleanUnsupportUploadItems();
                }
            }
        }
    }

    private static void cleanFile(Context context, String path) {
        if (!FileUtils.isFileExist(path)) {
            Log.d("MediaScanner", "delete %s", (Object) path);
            SafeDBUtil.safeDelete(context, GalleryContract.Cloud.CLOUD_URI, "localFile = ? COLLATE NOCASE AND (serverType=1 OR serverType=2) AND (localFlag=7 OR localFlag=8) AND serverStatus IS NULL", new String[]{path});
            DeleteRecorder.record(new DeleteRecord(14, path, "MediaScanner"));
        }
    }

    private static void scannerCorrectLogic(Context context, JobContext jc) {
        if (ApplicationHelper.isSecretAlbumFeatureOpen() && Sync.getSyncCompletelyFinish() && !com.miui.gallery.preference.GalleryPreferences.MediaScanner.isEverRestoreSecretItems() && !jc.isCancelled()) {
            String[] secretFolders = StorageUtils.getPathsInExternalStorage(context, "MIUI/Gallery/cloud/.secretAlbum");
            if (secretFolders != null && secretFolders.length > 0) {
                final Pattern pattern = Pattern.compile("^[0-9a-zA-Z]+$");
                final JobContext jobContext = jc;
                FilenameFilter filter = new FilenameFilter() {
                    public boolean accept(File dir, String filename) {
                        if (jobContext.isCancelled() || !BaseFileMimeUtil.isImageFromMimeType(BaseFileMimeUtil.getMimeType(filename))) {
                            return false;
                        }
                        String[] ss = filename.split("\\.");
                        if (ss == null) {
                            return false;
                        }
                        if (ss.length <= 2 || (ss.length > 2 && !pattern.matcher(ss[ss.length - 2]).matches())) {
                            return true;
                        }
                        return false;
                    }
                };
                int length = secretFolders.length;
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= length) {
                        break;
                    }
                    String secretFolder = secretFolders[i2];
                    if (!jc.isCancelled()) {
                        if (FileUtils.isFileExist(secretFolder)) {
                            File[] files = new File(secretFolder).listFiles(filter);
                            if (files != null) {
                                int length2 = files.length;
                                i = 0;
                                while (true) {
                                    int i3 = i;
                                    if (i3 >= length2) {
                                        continue;
                                        break;
                                    }
                                    File file = files[i3];
                                    if (!jc.isCancelled()) {
                                        Log.d("MediaScanner", "secret item %s", file.getAbsolutePath());
                                        if (SaveToCloudUtil.saveToCloudDB(context, new SaveParams(file, -1000, true, 8, true, true)) > 0) {
                                            Log.d("MediaScanner", "secret item restore %s", file.getAbsolutePath());
                                        }
                                        i = i3 + 1;
                                    } else {
                                        return;
                                    }
                                }
                            }
                            continue;
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
            if (!jc.isCancelled()) {
                com.miui.gallery.preference.GalleryPreferences.MediaScanner.setHasRestoredSecretItems();
            }
        }
    }

    private static void checkAndUpdateFileInfo(Context context, Cursor cursor, long id, ContentProviderBatchOperator batchOperator, ArrayList<DeleteRecord> deleteRecords) {
        ContentValues values = new ContentValues();
        String thumbnail = cursor.getString(5);
        if (!(TextUtils.isEmpty(thumbnail) || new File(thumbnail).exists())) {
            values.put("thumbnailFile", "");
            deleteRecords.add(new DeleteRecord(13, thumbnail, "MediaScanner"));
        }
        String localFile = cursor.getString(4);
        if (!(TextUtils.isEmpty(localFile) || new File(localFile).exists())) {
            values.put("localFile", "");
            deleteRecords.add(new DeleteRecord(13, localFile, "MediaScanner"));
        }
        if (values.size() > 0) {
            batchOperator.add(context, ContentProviderOperation.newUpdate(CloudWriteBulkNotify.CLOUD_WRITE_BULK_NOTIFY_URI).withSelection("_id=?", new String[]{String.valueOf(id)}).withValues(values).build());
        }
    }

    private static void fillSpecialTypeFlags(Context context, JobContext jc) {
        if (!com.miui.gallery.preference.GalleryPreferences.MediaScanner.isEverFillSpecialTypeFlags()) {
            long cost;
            HashMap<String, String> params;
            long start = SystemClock.uptimeMillis();
            boolean isSucceed = true;
            String[] selectionArgs = new String[]{""};
            int lastId = Integer.MIN_VALUE;
            final JobContext jobContext = jc;
            final Context context2 = context;
            QueryHandler handler = new QueryHandler<Integer>() {
                public Integer handle(Cursor cursor) {
                    int id = Integer.MAX_VALUE;
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            if (jobContext != null && jobContext.isCancelled()) {
                                return null;
                            }
                            id = cursor.getInt(0);
                            String localPath = cursor.getString(1);
                            if (FileUtils.isFileExist(localPath)) {
                                long specialTypeFlags = SpecialTypeMediaUtils.parseFlagsForImage(localPath);
                                if (specialTypeFlags != 0) {
                                    ContentValues values = new ContentValues();
                                    values.put("specialTypeFlags", Long.valueOf(specialTypeFlags));
                                    SafeDBUtil.safeUpdate(context2, GalleryContract.Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(id)});
                                }
                            }
                        }
                    }
                    return Integer.valueOf(id);
                }
            };
            do {
                if (jc != null) {
                    String str;
                    String str2;
                    Object obj;
                    try {
                        if (jc.isCancelled()) {
                            cost = SystemClock.uptimeMillis() - start;
                            if (null != null) {
                                com.miui.gallery.preference.GalleryPreferences.MediaScanner.setEverFillSpecialTypeFlags();
                                params = new HashMap();
                                params.put("cost(ms)", String.valueOf(cost));
                                BaseSamplingStatHelper.recordCountEvent("media_scanner", "fill_special_type_flags", params);
                            }
                            str = "MediaScanner";
                            str2 = "fill special type flags [%s], costs [%d] ms";
                            if (null != null) {
                                obj = "succeed";
                            } else {
                                obj = "failed";
                            }
                            Log.d(str, str2, obj, Long.valueOf(cost));
                            return;
                        }
                    } catch (Object ex) {
                        Log.e("MediaScanner", "Encounter error when fill special type flags: [%s]", ex);
                        cost = SystemClock.uptimeMillis() - start;
                        if (null != null) {
                            com.miui.gallery.preference.GalleryPreferences.MediaScanner.setEverFillSpecialTypeFlags();
                            params = new HashMap();
                            params.put("cost(ms)", String.valueOf(cost));
                            BaseSamplingStatHelper.recordCountEvent("media_scanner", "fill_special_type_flags", params);
                        }
                        str = "MediaScanner";
                        str2 = "fill special type flags [%s], costs [%d] ms";
                        if (null != null) {
                            obj = "succeed";
                        } else {
                            obj = "failed";
                        }
                        Log.d(str, str2, obj, Long.valueOf(cost));
                        return;
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        cost = SystemClock.uptimeMillis() - start;
                        if (null != null) {
                            com.miui.gallery.preference.GalleryPreferences.MediaScanner.setEverFillSpecialTypeFlags();
                            params = new HashMap();
                            params.put("cost(ms)", String.valueOf(cost));
                            BaseSamplingStatHelper.recordCountEvent("media_scanner", "fill_special_type_flags", params);
                        }
                        Log.d("MediaScanner", "fill special type flags [%s], costs [%d] ms", null != null ? "succeed" : "failed", Long.valueOf(cost));
                    }
                }
                selectionArgs[0] = String.valueOf(lastId);
                Integer result = (Integer) SafeDBUtil.safeQuery(context, UriUtil.appendLimit(GalleryContract.Cloud.CLOUD_URI, 1000), SPECIAL_TYPE_FLAGS_PROJECTION, SPECIAL_TYPE_FLAGS_WHERE, selectionArgs, "_id ASC", handler);
                if (result == null) {
                    isSucceed = false;
                    lastId = Integer.MAX_VALUE;
                } else {
                    lastId = result.intValue();
                }
            } while (lastId < Integer.MAX_VALUE);
            cost = SystemClock.uptimeMillis() - start;
            if (isSucceed) {
                com.miui.gallery.preference.GalleryPreferences.MediaScanner.setEverFillSpecialTypeFlags();
                params = new HashMap();
                params.put("cost(ms)", String.valueOf(cost));
                BaseSamplingStatHelper.recordCountEvent("media_scanner", "fill_special_type_flags", params);
            }
            Log.d("MediaScanner", "fill special type flags [%s], costs [%d] ms", isSucceed ? "succeed" : "failed", Long.valueOf(cost));
        }
    }

    public static boolean isScannableDirectory(String dir) {
        return dir != null && isScannableDirectory(new File(dir));
    }

    public static boolean isScannableDirectory(File dir) {
        if (dir == null) {
            return false;
        }
        if (new File(dir, ".nomedia").exists()) {
            Log.d("MediaScanner", "Directory [%s] contains .nomedia file, skip scan", dir.getAbsolutePath());
            return false;
        } else if (dir.isHidden()) {
            Log.d("MediaScanner", "Directory [%s] is hidden, skip scan", dir.getAbsolutePath());
            return false;
        } else if (StorageUtils.isInExternalStorage(GalleryApp.sGetAndroidContext(), dir.getAbsolutePath())) {
            return true;
        } else {
            Log.d("MediaScanner", "Directory [%s] is in internal storage, skip scan", dir.getAbsolutePath());
            return false;
        }
    }

    private static void prescan(Context context) {
        Log.i("MediaScanner", "delete empty albums %d", Integer.valueOf(SafeDBUtil.safeDelete(context, GalleryContract.Cloud.CLOUD_URI, "_id IN (SELECT _id FROM ((SELECT _id, localFlag FROM cloud WHERE serverType=0) AS Album LEFT JOIN (SELECT localGroupId, count(_id) AS media_count FROM cloud WHERE serverType!=0 GROUP BY localGroupId) AS MediaCount ON Album._id=MediaCount.localGroupId) WHERE localFlag=7 AND (media_count IS NULL OR media_count=0))", null)));
    }

    public static int scanDirectories(Context context, List<String> directories, JobContext jc, boolean recursiveScan, boolean bulkNotify) {
        if (directories == null || directories.size() == 0) {
            return 0;
        }
        prescan(context);
        if (jc != null && jc.isCancelled()) {
            return 0;
        }
        MediaBulkInserter inserter = new CloudMediaBulkInserter(false);
        ContentProviderBatchOperator batchOperator = new ContentProviderBatchOperator("com.miui.gallery.cloud.provider");
        ScannerDirectoryClient folderClient = new ScannerDirectoryClient(new ScannerFileClient(bulkNotify, inserter, batchOperator, false, false), jc);
        int i = 0;
        while (i < directories.size()) {
            String path;
            try {
                path = (String) directories.get(i);
                if (jc == null || !jc.isCancelled()) {
                    if (isScannableDirectory(path)) {
                        long start = System.currentTimeMillis();
                        folderClient.scanFolder(context, new File(path), recursiveScan);
                        Log.d("MediaScanner", "scan folder [%s] costs [%d]", path, Long.valueOf(System.currentTimeMillis() - start));
                    }
                    i++;
                } else {
                    inserter.flush(context);
                    batchOperator.apply(context);
                    return i;
                }
            } catch (Exception e) {
                Log.w("MediaScanner", "scan folder %s %s", path, e);
            } catch (Throwable th) {
                inserter.flush(context);
                batchOperator.apply(context);
            }
        }
        inserter.flush(context);
        batchOperator.apply(context);
        return directories.size();
    }

    static void scanSingleFileForExternal(Context context, String path) {
        doScanSingleFile(context, path, false);
    }

    public static void scanSingleFile(Context context, String path) {
        doScanSingleFile(context, path, true);
    }

    private static void doScanSingleFile(Context context, String path, boolean isInternalScanRequest) {
        if (!TextUtils.isEmpty(path)) {
            File file = new File(path);
            if (!file.exists()) {
                cleanFile(context, path);
            } else if (file.isFile()) {
                String parentPath = file.getParent();
                if (parentPath == null || isScannableDirectory(parentPath)) {
                    String mimeType = FileMimeUtil.getSupportUploadMimeType(path);
                    if (BaseFileMimeUtil.isImageFromMimeType(mimeType) || BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
                        AlbumEntry album = albumQueryOrInsert(context, FileUtils.getParentFolderPath(path));
                        if (album != null) {
                            long mediaId = new ScannerFileClient(false, null, null, true, isInternalScanRequest).scanFile(context, new File(path), album);
                            cleanFile(context, path);
                            if (mediaId > 0) {
                                LocationManager.getInstance().loadLocationAsync(mediaId);
                            }
                        }
                    }
                }
            }
        }
    }

    public static int scanFiles(Context context, List<String> files, JobContext jc) {
        if (!BaseMiscUtil.isValid(files)) {
            return 0;
        }
        if (jc != null && jc.isCancelled()) {
            return 0;
        }
        prescan(context);
        MediaBulkInserter inserter = new CloudMediaBulkInserter(false);
        ContentProviderBatchOperator batchOperator = new ContentProviderBatchOperator("com.miui.gallery.cloud.provider");
        ScannerFileClient fileClient = new ScannerFileClient(true, inserter, batchOperator, false, false);
        HashMap<String, AlbumEntry> albumMap = new HashMap();
        boolean needTriggerSync = false;
        int i = 0;
        while (i < files.size()) {
            String path;
            try {
                if (jc == null || !jc.isCancelled()) {
                    path = (String) files.get(i);
                    if (!TextUtils.isEmpty(path)) {
                        File file = new File(path);
                        if (!file.exists()) {
                            cleanFile(context, path);
                        } else if (file.isFile()) {
                            Object albumPath = file.getParent();
                            if (albumPath != null) {
                                String mimeType = FileMimeUtil.getSupportUploadMimeType(path);
                                if (!BaseFileMimeUtil.isImageFromMimeType(mimeType) && !BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
                                    Log.w("MediaScanner", "Unsupported MimeType: [%s], path: [%s]", mimeType, path);
                                } else if (!MediaScannerHelper.isOnlyLinkFileFolder(StorageUtils.getRelativePath(context, albumPath))) {
                                    if (isScannableDirectory((String) albumPath)) {
                                        AlbumEntry album = (AlbumEntry) albumMap.get(albumPath);
                                        if (album == null) {
                                            album = albumQueryOrInsert(context, albumPath);
                                            if (album == null) {
                                                Log.e("MediaScanner", "album query failed: [%s]", albumPath);
                                            } else {
                                                albumMap.put(albumPath, album);
                                            }
                                        }
                                        boolean shouldScan = album.isModified && AlbumEntry.shouldScan(album);
                                        if (shouldScan) {
                                            long start = SystemClock.uptimeMillis();
                                            long result = fileClient.scanFile(context, new File(path), album);
                                            if (-1 == result) {
                                                Log.w("MediaScanner", "scan [%s] fail", path);
                                            }
                                            if (result > 0 || -4 == result || -7 == result) {
                                                int i2;
                                                if ((((long) album.mAttributes) & 1) != 0) {
                                                    i2 = 1;
                                                } else {
                                                    i2 = 0;
                                                }
                                                needTriggerSync |= i2;
                                            }
                                        }
                                    } else {
                                        Log.w("MediaScanner", "Album directory is hidden or contains \".nomedia\" file: [%s]", albumPath);
                                    }
                                }
                            }
                        }
                    }
                    i++;
                } else {
                    if (needTriggerSync) {
                        SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).setDelayUpload(true).build());
                    }
                    inserter.flush(context);
                    batchOperator.apply(context);
                    return i;
                }
            } catch (Exception e) {
                Log.w("MediaScanner", "scan file [%s] failed with exception: [%s]", path, e);
            } catch (Throwable th) {
                inserter.flush(context);
                batchOperator.apply(context);
            }
        }
        inserter.flush(context);
        if (needTriggerSync) {
            SyncUtil.requestSync(context, new Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).setDelayUpload(true).build());
        }
        inserter.flush(context);
        batchOperator.apply(context);
        return files.size();
    }

    private static long tryGetSystemAlbumServerId(String relativePath) {
        if (CloudUtils.getCameraLocalFile().equalsIgnoreCase(relativePath)) {
            return 1;
        }
        if (CloudUtils.getScreenshotsLocalFile().equalsIgnoreCase(relativePath)) {
            return 2;
        }
        return -1;
    }

    private static AlbumEntry queryAndUpdateAlbum(Context context, String folderPath) {
        AlbumEntry entry = null;
        String relativePath = StorageUtils.getRelativePath(context, folderPath);
        if (TextUtils.isEmpty(relativePath)) {
            Log.w("MediaScanner", "Couldn't get relative path from %s", folderPath);
        } else {
            try {
                long serverId = tryGetSystemAlbumServerId(relativePath);
                if (serverId > 0) {
                    entry = findAlbumByServerId(context, serverId);
                } else {
                    entry = findAlbumByLocalPath(context, relativePath);
                }
                if (entry != null) {
                    entry.isOnlyLinkFolder = MediaScannerHelper.isOnlyLinkFileFolder(relativePath);
                    entry.isShareAlbum = DownloadPathHelper.isShareFolderRelativePath(relativePath);
                    long fileModified = new File(folderPath).lastModified();
                    entry.isModified = entry.mDateModified != fileModified;
                    entry.mDateModified = fileModified;
                    if (serverId <= 0) {
                        updateAlbumByServerConfig(context, entry, relativePath);
                    }
                }
            } catch (Throwable e) {
                Log.w("MediaScanner", e);
            }
        }
        return entry;
    }

    private static AlbumEntry insertAlbum(Context context, String folderPath) {
        String relativePath = StorageUtils.getRelativePath(context, folderPath);
        if (MediaScannerHelper.isOnlyLinkFileFolder(relativePath)) {
            return null;
        }
        int attributes;
        String name;
        long lastModified = new File(folderPath).lastModified();
        long serverId = tryGetSystemAlbumServerId(relativePath);
        AlbumEntry entry = new AlbumEntry(null);
        boolean needApplyBlacklist = true;
        Album album = CloudControlStrategyHelper.getAlbumByPath(StorageUtils.ensureCommonRelativePath(relativePath));
        String convertedName = null;
        if (album == null || album.getAttributes() == null) {
            Attributes attrs = MediaScannerHelper.getAttributesByPath(relativePath);
            if (attrs != null) {
                needApplyBlacklist = false;
                attributes = (int) ((attrs.isHide() ? 16 : 0) | ((long) ((int) ((attrs.isShowInPhotosTab() ? 4 : 0) | ((long) ((int) ((attrs.isInWhiteList() ? 0 : 64) | ((long) ((int) ((attrs.isAutoUpload() ? 1 : 0) | ((long) null)))))))))));
            } else {
                attributes = (int) (((long) null) | 64);
            }
        } else {
            long j;
            needApplyBlacklist = false;
            convertedName = album.getBestName();
            long j2 = (long) ((int) ((album.getAttributes().isShowInPhotosTab() ? 4 : 0) | ((long) ((int) ((album.getAttributes().isInWhiteList() ? 0 : 64) | ((long) ((int) ((album.getAttributes().isAutoUpload() ? 1 : 0) | ((long) null)))))))));
            if (album.getAttributes().isHide()) {
                j = 16;
            } else {
                j = 0;
            }
            attributes = (int) (j | j2);
        }
        if (needApplyBlacklist && MediaScannerHelper.isInBlackList(relativePath)) {
            attributes = (int) (((long) attributes) | 16);
        }
        if (!TextUtils.isEmpty(convertedName)) {
            name = convertedName;
        } else if (StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH.equals(relativePath)) {
            name = "sdcard";
        } else {
            name = FileUtils.getFileName(relativePath);
        }
        if (serverId > 0) {
            try {
                String albumName = getServerUnModifyAlbumsStrategy().getServerAlbumName(serverId);
                AlbumEntry conflict = albumName != null ? findAlbumByName(context, albumName) : null;
                if (conflict != null) {
                    ContentValues values = new ContentValues();
                    values.put("fileName", renameAlbum(context, conflict.mAlbumName));
                    SafeDBUtil.safeUpdate(context, GalleryContract.Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(conflict.mID)});
                }
            } catch (Throwable e) {
                Log.w("MediaScanner", e);
                return null;
            }
        }
        try {
            if (checkAlbumNameConflict(context, name) != 0) {
                name = renameAlbum(context, name);
                Log.i("MediaScanner", "album name conflict %s, rename %s", relativePath, name);
                if (TextUtils.isEmpty(name)) {
                    return null;
                }
            }
        } catch (Throwable e2) {
            Log.w("MediaScanner", e2);
            return null;
        }
        ContentValues groupValue = new ContentValues();
        groupValue.put("fileName", name);
        groupValue.put("dateTaken", Long.valueOf(lastModified));
        groupValue.put("localFile", relativePath.toLowerCase());
        groupValue.put("serverType", Integer.valueOf(0));
        groupValue.put("localFlag", Integer.valueOf(7));
        groupValue.put("attributes", Integer.valueOf(attributes));
        ContentValues specialValues = generatorValuesForSpecialAlbum(context, relativePath);
        if (specialValues != null) {
            groupValue.putAll(specialValues);
        }
        Uri uri = SafeDBUtil.safeInsert(context, GalleryContract.Cloud.CLOUD_URI.buildUpon().appendQueryParameter("URI_PARAM_REQUEST_SYNC", String.valueOf(AlbumEntry.isSyncable(attributes))).build(), groupValue);
        if (uri == null) {
            return null;
        }
        entry.mID = ContentUris.parseId(uri);
        if (entry.mID <= 0) {
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            params.put(nexExportFormat.TAG_FORMAT_PATH, folderPath);
            BaseSamplingStatHelper.recordCountEvent("media_scanner", "insert_album_error", params);
            return null;
        }
        entry.mDateModified = lastModified;
        entry.isModified = true;
        entry.mAttributes = attributes;
        entry.isOnlyLinkFolder = false;
        entry.isShareAlbum = DownloadPathHelper.isShareFolderRelativePath(relativePath);
        return entry;
    }

    private static void updateAlbumByServerConfig(Context context, AlbumEntry entry, String relativePath) {
        if (entry != null) {
            ContentValues values = new ContentValues();
            long mergeAttributes = 0;
            boolean needApplyBlacklist = true;
            Album album = CloudControlStrategyHelper.getAlbumByPath(StorageUtils.ensureCommonRelativePath(relativePath));
            if (album != null) {
                String fileName;
                if (album.getAttributes() != null) {
                    needApplyBlacklist = false;
                }
                if (StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH.equals(relativePath)) {
                    fileName = "sdcard";
                } else {
                    fileName = FileUtils.getFileName(relativePath);
                }
                boolean isManualRenameRestricted = album.getAttributes() != null && album.getAttributes().isManualRenameRestricted();
                if (fileName.equalsIgnoreCase(entry.mAlbumName) || isManualRenameRestricted) {
                    String convertName = album.getBestName();
                    if (!TextUtils.isEmpty(convertName) && (TextUtils.isEmpty(entry.mAlbumName) || !(convertName.equalsIgnoreCase(entry.mAlbumName) || entry.mAlbumName.toLowerCase().startsWith((convertName + "_").toLowerCase())))) {
                        Log.d("MediaScanner", "Rename album according to server config file: %s", (Object) relativePath);
                        int conflict = checkAlbumNameConflict(context, convertName);
                        if (conflict != 0) {
                            if (!isManualRenameRestricted || conflict == 2) {
                                convertName = renameAlbum(context, convertName);
                            } else if (!tryRenameConflictAlbums(context, convertName)) {
                                convertName = renameAlbum(context, convertName);
                            }
                        }
                        if (!TextUtils.isEmpty(convertName)) {
                            if (entry.mLocalFlag == 0) {
                                values.put("localFlag", Integer.valueOf(10));
                            }
                            values.put("fileName", convertName);
                        }
                    }
                }
                for (Long attributeBit : AlbumManager.getAlbumAttributes().keySet()) {
                    mergeAttributes |= mergeAttribute(album.getAttributes(), (long) entry.mAttributes, attributeBit.longValue());
                }
            } else {
                Attributes attrs = MediaScannerHelper.getAttributesByPath(relativePath);
                if (attrs != null) {
                    needApplyBlacklist = false;
                    for (Long attributeBit2 : AlbumManager.getAlbumAttributes().keySet()) {
                        mergeAttributes |= mergeAttribute(attrs, (long) entry.mAttributes, attributeBit2.longValue());
                    }
                } else {
                    mergeAttributes = (long) entry.mAttributes;
                }
            }
            if (needApplyBlacklist) {
                if (!((16 & mergeAttributes) != 0)) {
                    if (!((32 & mergeAttributes) != 0) && MediaScannerHelper.isInBlackList(relativePath)) {
                        Log.d("MediaScanner", "update server config file: %s, set album as hidden.", (Object) relativePath);
                        mergeAttributes |= 16;
                    }
                }
            }
            if (mergeAttributes != ((long) entry.mAttributes)) {
                Log.d("MediaScanner", "update server config file: %s, attributes: %s", relativePath, Long.valueOf(mergeAttributes));
                values.put("attributes", Long.valueOf(mergeAttributes));
            }
            if (values.size() > 0) {
                SafeDBUtil.safeUpdate(context, GalleryContract.Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(entry.mID)});
            }
        }
    }

    private static AlbumEntry albumQueryOrInsert(Context context, String folderPath) {
        AlbumEntry entry = queryAndUpdateAlbum(context, folderPath);
        return entry == null ? insertAlbum(context, folderPath) : entry;
    }

    private static long mapAttributeBit(Attributes attrs, long attributeBit) {
        long j = 1;
        if (attrs == null) {
            return -1;
        }
        if (attributeBit == 1) {
            if (!attrs.isAutoUpload()) {
                j = 0;
            }
            return j;
        } else if (attributeBit == 4) {
            if (attrs.isShowInPhotosTab()) {
                return 4;
            }
            return 0;
        } else if (attributeBit == 16) {
            if (attrs.isHide()) {
                return 16;
            }
            return 0;
        } else if (attributeBit != 64) {
            return -1;
        } else {
            if (attrs.isInWhiteList()) {
                return 0;
            }
            return 64;
        }
    }

    private static long mergeAttribute(Attributes attrs, long attributes, long attributeBit) {
        long updateAttribute = mapAttributeBit(attrs, attributeBit);
        long manualBit = ((Long) AlbumManager.getAlbumAttributes().get(Long.valueOf(attributeBit))).longValue();
        if (updateAttribute < 0) {
            return (attributes & manualBit) | (attributes & attributeBit);
        }
        if ((attributes & manualBit) == manualBit) {
            return manualBit | (attributes & attributeBit);
        }
        return updateAttribute;
    }

    private static String renameAlbum(Context context, String name) {
        String tarName;
        int tryCount = 0;
        while (true) {
            String time = String.valueOf(System.currentTimeMillis());
            tarName = name + "_" + time.substring(time.length() - 2);
            if (checkAlbumNameConflict(context, tarName) == 0) {
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
            return name + "_" + System.currentTimeMillis();
        }
        return tarName;
    }

    private static ContentValues generatorValuesForSpecialAlbum(Context context, String relativePath) {
        if (CloudUtils.getCameraLocalFile().equalsIgnoreCase(relativePath)) {
            return CloudUtils.getCameraRecordValues();
        }
        if (CloudUtils.getScreenshotsLocalFile().equalsIgnoreCase(relativePath)) {
            return CloudUtils.getScreenshotsRecordValues();
        }
        if (!ExtraTextUtils.startsWithIgnoreCase(relativePath, "MIUI/Gallery/cloud")) {
            return null;
        }
        ContentValues values = new ContentValues();
        long attributes = 0;
        if (SyncUtil.existXiaomiAccount(context)) {
            attributes = 0 | 1;
        }
        values.put("attributes", Long.valueOf(attributes));
        return values;
    }

    private static AlbumEntry findAlbumByLocalPath(Context context, String relativePath) {
        AlbumEntry entry = null;
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(GalleryContract.Cloud.CLOUD_URI, ALBUM_PROJECTION, "(serverType=0) AND localFile = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{relativePath}, null);
            if (cursor == null) {
                throw new IllegalStateException("query album cursor null");
            }
            if (cursor.moveToFirst()) {
                entry = new AlbumEntry();
                entry.mID = cursor.getLong(0);
                entry.mServerID = cursor.getString(1);
                entry.mDateModified = cursor.getLong(2);
                entry.mLocalFlag = cursor.getInt(3);
                entry.mServerStatus = cursor.getString(4);
                entry.mAlbumName = cursor.getString(5);
                entry.mAttributes = cursor.getInt(6);
            } else {
                BaseMiscUtil.closeSilently(cursor);
            }
            return entry;
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private static AlbumEntry findAlbumByServerId(Context context, long serverId) {
        AlbumEntry entry = null;
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(GalleryContract.Cloud.CLOUD_URI, ALBUM_PROJECTION, "serverId=?", new String[]{String.valueOf(serverId)}, null);
            if (cursor == null) {
                throw new IllegalStateException("query album cursor null");
            }
            if (cursor.moveToFirst()) {
                entry = new AlbumEntry();
                entry.mID = cursor.getLong(0);
                entry.mServerID = cursor.getString(1);
                entry.mDateModified = cursor.getLong(2);
                entry.mLocalFlag = cursor.getInt(3);
                entry.mServerStatus = cursor.getString(4);
                entry.mAlbumName = cursor.getString(5);
                entry.mAttributes = cursor.getInt(6);
            } else {
                BaseMiscUtil.closeSilently(cursor);
            }
            return entry;
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private static AlbumEntry findAlbumByName(Context context, String albumName) {
        AlbumEntry entry = null;
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(GalleryContract.Cloud.CLOUD_URI, ALBUM_PROJECTION, "(serverType=0) AND fileName = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{albumName}, null);
            if (cursor == null) {
                throw new IllegalStateException("query album cursor null");
            }
            if (cursor.moveToFirst()) {
                entry = new AlbumEntry();
                entry.mID = cursor.getLong(0);
                entry.mServerID = cursor.getString(1);
                entry.mDateModified = cursor.getLong(2);
                entry.mLocalFlag = cursor.getInt(3);
                entry.mServerStatus = cursor.getString(4);
                entry.mAlbumName = cursor.getString(5);
                entry.mAttributes = cursor.getInt(6);
            } else {
                BaseMiscUtil.closeSilently(cursor);
            }
            return entry;
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private static boolean tryRenameConflictAlbums(Context context, String albumName) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(GalleryContract.Cloud.CLOUD_URI, ALBUM_PROJECTION, "(serverType=0) AND fileName = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{albumName}, null);
            if (cursor == null) {
                throw new IllegalStateException("query album cursor null");
            }
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                long serverId = cursor.getLong(1);
                if (serverId == 1 || serverId == 2) {
                    BaseMiscUtil.closeSilently(cursor);
                    return false;
                }
                int localFlag = cursor.getInt(3);
                long albumId = cursor.getLong(0);
                ContentValues values = new ContentValues();
                values.put("fileName", renameAlbum(context, albumName));
                if (localFlag == 0) {
                    values.put("localFlag", Integer.valueOf(10));
                }
                SafeDBUtil.safeUpdate(context, GalleryContract.Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(albumId)});
                Log.d("MediaScanner", "Rename conflict album according to server config file: %s", (Object) albumName);
                cursor.moveToNext();
            }
            BaseMiscUtil.closeSilently(cursor);
            return true;
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private static int checkAlbumNameConflict(Context context, String albumName) {
        if (TextUtils.isEmpty(albumName)) {
            return 1;
        }
        if (getServerUnModifyAlbumsStrategy().containsName(albumName)) {
            return 2;
        }
        if (getServerReservedAlbumNamesStrategy().containsName(albumName)) {
            return 2;
        }
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(GalleryContract.Cloud.CLOUD_URI, ALBUM_NAME_CONFLICT_PROJECTION, "(serverType=0) AND fileName = ? COLLATE NOCASE AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new String[]{albumName}, null);
            if (cursor == null) {
                throw new IllegalStateException("query album cursor null");
            } else if (cursor.moveToFirst() && cursor.getInt(0) > 0) {
                return 3;
            } else {
                BaseMiscUtil.closeSilently(cursor);
                return 0;
            }
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private static void updateAlbumDateModified(Context context, AlbumEntry entry) {
        ContentValues values = new ContentValues();
        values.put("dateModified", Long.valueOf(entry.mDateModified));
        SafeDBUtil.safeUpdate(context, GalleryContract.Cloud.CLOUD_URI, values, "_id=?", new String[]{String.valueOf(entry.mID)});
    }

    private static void recordHiddenAlbum(String relativePath) {
        HashMap<String, String> params = new HashMap();
        params.put("album_relative_path", relativePath);
        BaseSamplingStatHelper.recordCountEvent("media_scanner", "scanner_directory_regard_as_hidden", params);
    }
}
