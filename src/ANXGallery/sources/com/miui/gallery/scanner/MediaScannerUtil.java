package com.miui.gallery.scanner;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.SystemClock;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.google.common.collect.Lists;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.permission.core.PermissionUtils;
import com.miui.gallery.preference.GalleryPreferences.MediaScanner;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BackgroundServiceHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryDataCache;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public class MediaScannerUtil {
    private static final String[] FIND_NEW_MEDIA_PROJECTION = new String[]{"_id", "_data"};
    private static final String[] FIND_NEW_PROJECTION = new String[]{"_data"};
    private static final String[] FIND_OLD_PROJECTION = new String[]{"localFile"};
    private static Comparator<String> mDirectoryComparator = new Comparator<String>() {
        public int compare(String path1, String path2) {
            File dir1 = new File(path1);
            File dir2 = new File(path2);
            if (dir1.lastModified() > dir2.lastModified()) {
                return -1;
            }
            if (dir1.lastModified() == dir2.lastModified()) {
                return 0;
            }
            return 1;
        }
    };

    private static void addRelativePathsToScanList(Context context, ArrayList<String> relativePaths, ArrayList<String> scanList, ArrayList<Integer> bucketIds) {
        if (BaseMiscUtil.isValid(relativePaths)) {
            Iterator it = relativePaths.iterator();
            while (it.hasNext()) {
                for (String absolutePath : StorageUtils.getAbsolutePath(context, (String) it.next())) {
                    File tempFile = new File(absolutePath);
                    if (tempFile.exists() && tempFile.isDirectory()) {
                        int bucketId = FileUtils.getBucketID(absolutePath);
                        if (!bucketIds.contains(Integer.valueOf(bucketId))) {
                            scanList.add(absolutePath);
                            bucketIds.add(Integer.valueOf(bucketId));
                        }
                    }
                }
            }
        }
    }

    private static void scanAbsolutePaths(Context context, ArrayList<String> paths, int priority, boolean cancelRunning) {
        if (BaseMiscUtil.isValid(paths)) {
            Collections.sort(paths, mDirectoryComparator);
            String cacheKey = String.valueOf(SystemClock.elapsedRealtimeNanos());
            GalleryDataCache.getInstance().put(cacheKey, paths);
            BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("scan_folder_paths", cacheKey).putExtra("key_scan_priority", priority).putExtra("key_cancel_running", cancelRunning).putExtra("key_bulk_notify", true));
        }
    }

    public static void scanAllAlbumDirectories(Context context, int priority, boolean cancelRunning) {
        if (context != null && checkStoragePermission(context)) {
            ArrayList<Integer> bucketIds = new ArrayList();
            ArrayList<String> scanList = new ArrayList();
            addRelativePathsToScanList(context, Lists.newArrayList("DCIM/Camera"), scanList, bucketIds);
            addRelativePathsToScanList(context, CloudControlStrategyHelper.getAlbumsInWhiteList(), scanList, bucketIds);
            addRelativePathsToScanList(context, (ArrayList) SafeDBUtil.safeQuery(context, Cloud.CLOUD_URI, FIND_OLD_PROJECTION, "serverType=0", null, "dateModified DESC", new QueryHandler<ArrayList<String>>() {
                public ArrayList<String> handle(Cursor cursor) {
                    ArrayList<String> list = null;
                    if (cursor != null) {
                        list = new ArrayList(cursor.getCount());
                        while (cursor.moveToNext()) {
                            list.add(cursor.getString(0));
                        }
                    }
                    return list;
                }
            }), scanList, bucketIds);
            String findNewImagesWhere = "0=0) AND GROUP BY (bucket_id) ORDER BY (date_modified";
            String findNewVideoWhere = "0=0) AND GROUP BY (bucket_id) ORDER BY (date_modified";
            if (bucketIds.size() > 0) {
                String whereArgs = TextUtils.join(",", bucketIds);
                findNewImagesWhere = String.format(Locale.US, "0=0) AND bucket_id NOT IN (%s) GROUP BY (bucket_id) ORDER BY (date_modified", new Object[]{whereArgs});
                findNewVideoWhere = String.format(Locale.US, "0=0) AND bucket_id NOT IN (%s) GROUP BY (bucket_id) ORDER BY (date_modified", new Object[]{whereArgs});
            }
            ArrayList<String> externalImages = (ArrayList) SafeDBUtil.safeQuery(context, Media.getContentUri("external"), FIND_NEW_PROJECTION, findNewImagesWhere, null, null, new QueryHandler<ArrayList<String>>() {
                public ArrayList<String> handle(Cursor cursor) {
                    ArrayList<String> paths = null;
                    if (cursor != null) {
                        paths = new ArrayList(cursor.getCount());
                        while (cursor.moveToNext()) {
                            paths.add(FileUtils.getParentFolderPath(cursor.getString(0)));
                        }
                    }
                    return paths;
                }
            });
            ArrayList<String> externalVideo = (ArrayList) SafeDBUtil.safeQuery(context, Video.Media.getContentUri("external"), FIND_NEW_PROJECTION, findNewVideoWhere, null, null, new QueryHandler<ArrayList<String>>() {
                public ArrayList<String> handle(Cursor cursor) {
                    ArrayList<String> paths = null;
                    if (cursor != null) {
                        paths = new ArrayList(cursor.getCount());
                        while (cursor.moveToNext()) {
                            paths.add(FileUtils.getParentFolderPath(cursor.getString(0)));
                        }
                    }
                    return paths;
                }
            });
            if (BaseMiscUtil.isValid(externalImages)) {
                scanList.addAll(externalImages);
            }
            if (BaseMiscUtil.isValid(externalVideo)) {
                scanList.addAll(externalVideo);
            }
            scanAbsolutePaths(context, scanList, priority, cancelRunning);
        }
    }

    public static void scanAllAlbumDirectories(Context context, int priority) {
        scanAllAlbumDirectories(context, priority, false);
    }

    public static void scanDirectories(Context context, ArrayList<String> paths, int priority, boolean bulkNotify) {
        scanDirectories(context, paths, priority, bulkNotify, false);
    }

    public static void scanDirectories(Context context, ArrayList<String> paths, int priority, boolean bulkNotify, boolean recursiveScan) {
        if (BaseMiscUtil.isValid(paths) && checkStoragePermission(context)) {
            String cacheKey = String.valueOf(SystemClock.elapsedRealtimeNanos());
            GalleryDataCache.getInstance().put(cacheKey, paths);
            BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("scan_folder_paths", cacheKey).putExtra("key_scan_priority", priority).putExtra("key_bulk_notify", bulkNotify).putExtra("key_recursive_scan", recursiveScan));
        }
    }

    public static void scanDirectory(Context context, String folder, int priority, boolean bulkNotify, boolean recursiveScan) {
        if (!TextUtils.isEmpty(folder) && checkStoragePermission(context)) {
            ArrayList<String> paths = new ArrayList();
            paths.add(folder);
            scanDirectories(context, paths, priority, bulkNotify, recursiveScan);
        }
    }

    public static void scanSingleFile(Context context, String path, int priority) {
        scanSingleFile(context, path, priority, false);
    }

    public static void scanSingleFile(Context context, String path, int priority, boolean forceScan) {
        if (context != null && !TextUtils.isEmpty(path) && checkStoragePermission(context)) {
            BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("scan_file_path", path).putExtra("key_scan_priority", priority).putExtra("key_force_scan", forceScan));
        }
    }

    public static void scanVolume(Context context, String volume) {
        if (context != null && !TextUtils.isEmpty(volume) && checkStoragePermission(context)) {
            BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("scan_volume", volume));
        }
    }

    public static void scanMediaProvider(Context context) {
        if (context == null) {
            Log.w("MediaScannerUtil", "Context should not be null");
        } else if (checkStoragePermission(context)) {
            ArrayList<String> data;
            String cacheKey;
            long lastImagesScanTime = MediaScanner.getLastImagesScanTime();
            long taskStartTime = System.currentTimeMillis();
            Context context2 = context;
            ArrayMap<Integer, String> externalImages = (ArrayMap) SafeDBUtil.safeQuery(context2, Media.getContentUri("external"), FIND_NEW_MEDIA_PROJECTION, String.format(Locale.US, "0=0) AND date_added >= %s / 1000  ORDER BY date_added DESC  LIMIT (2000", new Object[]{String.valueOf(lastImagesScanTime)}), null, null, new QueryHandler<ArrayMap<Integer, String>>() {
                public ArrayMap<Integer, String> handle(Cursor cursor) {
                    ArrayMap<Integer, String> images = null;
                    if (cursor != null) {
                        images = new ArrayMap(cursor.getCount());
                        while (cursor.moveToNext()) {
                            images.put(Integer.valueOf(cursor.getInt(0)), cursor.getString(1));
                        }
                    }
                    return images;
                }
            });
            if (externalImages != null && externalImages.size() > 0) {
                try {
                    data = new ArrayList(externalImages.values());
                    cacheKey = String.valueOf(SystemClock.elapsedRealtimeNanos());
                    GalleryDataCache.getInstance().put(cacheKey, data);
                    BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("scan_files_path", cacheKey).putExtra("key_scan_priority", 2).putExtra("key_scan_type", 1).putExtra("key_task_start_time", taskStartTime));
                } catch (Throwable e) {
                    MediaScanner.setLastImagesScanTime(taskStartTime);
                    Log.e("MediaScannerUtil", e);
                    recordScannerException("scanMediaProvider", e);
                }
            }
            long lastVideosScanTime = MediaScanner.getLastVideosScanTime();
            taskStartTime = System.currentTimeMillis();
            context2 = context;
            ArrayMap<Integer, String> externalVideos = (ArrayMap) SafeDBUtil.safeQuery(context2, Video.Media.getContentUri("external"), FIND_NEW_MEDIA_PROJECTION, String.format(Locale.US, "0=0) AND date_added >= %s / 1000  ORDER BY date_added DESC  LIMIT (2000", new Object[]{String.valueOf(lastVideosScanTime)}), null, null, new QueryHandler<ArrayMap<Integer, String>>() {
                public ArrayMap<Integer, String> handle(Cursor cursor) {
                    ArrayMap<Integer, String> videos = null;
                    if (cursor != null) {
                        videos = new ArrayMap(cursor.getCount());
                        while (cursor.moveToNext()) {
                            videos.put(Integer.valueOf(cursor.getInt(0)), cursor.getString(1));
                        }
                    }
                    return videos;
                }
            });
            if (externalVideos != null && externalVideos.size() > 0) {
                try {
                    data = new ArrayList(externalVideos.values());
                    cacheKey = String.valueOf(SystemClock.elapsedRealtimeNanos());
                    GalleryDataCache.getInstance().put(cacheKey, data);
                    BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("scan_files_path", cacheKey).putExtra("key_scan_priority", 2).putExtra("key_scan_type", 2).putExtra("key_task_start_time", taskStartTime));
                } catch (Throwable e2) {
                    MediaScanner.setLastVideosScanTime(taskStartTime);
                    Log.e("MediaScannerUtil", e2);
                    recordScannerException("scanMediaProvider", e2);
                }
            }
        }
    }

    private static void recordScannerException(String method, Exception e) {
        Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
        params.put("method", method);
        BaseSamplingStatHelper.recordErrorEvent("media_scanner", String.format(Locale.US, "scanner_%s", new Object[]{e.getClass().getSimpleName()}), params);
    }

    public static void cleanup(Context context) {
        if (context != null && checkStoragePermission(context)) {
            BackgroundServiceHelper.startForegroundServiceIfNeed(context, new Intent(context, MediaScannerService.class).putExtra("key_trigger_full_cleanup", true));
        }
    }

    public static void cleanupByAlbumId(Context context, int priority, ArrayList<String> ids) {
        if (context != null && checkStoragePermission(context)) {
            context.startService(new Intent(context, MediaScannerService.class).putStringArrayListExtra("cleanup_by_album_ids", ids).putExtra("key_scan_priority", priority));
        }
    }

    private static boolean checkStoragePermission(Context context) {
        if (PermissionUtils.checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            return true;
        }
        Log.w("MediaScannerUtil", "Can't access external storage, relate permission is ungranted");
        return false;
    }
}
