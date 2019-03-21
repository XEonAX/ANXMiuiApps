package com.miui.gallery.util;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore.Files;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.data.LocalUbifocus;
import com.miui.gallery.data.LocalUbifocus.SubFile;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class MediaFileUtils {

    public enum FileType {
        NONE,
        NORMAL,
        ORIGINAL,
        THUMBNAIL,
        MICRO_THUMBNAIL,
        UBI_SUB_FILE,
        FOLDER,
        TEMP
    }

    public static void triggerMediaScan(boolean onlySystemScan, File... files) {
        if (files != null && files.length > 0) {
            for (File file : files) {
                if (file != null) {
                    if (file.isDirectory()) {
                        Log.w("MediaFileUtils", "%s is directory, skip", file);
                    } else {
                        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(file));
                        intent.putExtra("com.miui.gallery.extra.trigger_scan", onlySystemScan);
                        GalleryApp.sGetAndroidContext().sendBroadcast(intent);
                        Log.i("MediaFileUtils", "Trigger media scan for file %s, on system scan %s", file.getAbsolutePath(), Boolean.valueOf(onlySystemScan));
                    }
                }
            }
        }
    }

    public static int deleteFileType(FileType fileType, String... filePaths) {
        if (filePaths == null || filePaths.length <= 0) {
            return 0;
        }
        File[] files = new File[filePaths.length];
        for (int i = 0; i < filePaths.length; i++) {
            if (!TextUtils.isEmpty(filePaths[i])) {
                files[i] = new File(filePaths[i]);
            }
        }
        return deleteFileType(fileType, files);
    }

    public static int deleteFileType(FileType fileType, File... files) {
        if (fileType == null) {
            fileType = FileType.NORMAL;
        }
        switch (fileType) {
            case ORIGINAL:
                return deleteFile(3, files);
            case NORMAL:
            case THUMBNAIL:
            case MICRO_THUMBNAIL:
            case TEMP:
            case UBI_SUB_FILE:
            case FOLDER:
                return deleteFile(1, files);
            case NONE:
                return deleteFile(0, files);
            default:
                Log.w("MediaFileUtils", "Not supported file type " + fileType);
                return 0;
        }
    }

    private static int deleteFile(int deleteStrategy, File... files) {
        if (files == null || files.length <= 0) {
            return 0;
        }
        if ((deleteStrategy & 2) > 0) {
            for (File file : files) {
                if (file != null) {
                    String path = file.getAbsolutePath();
                    if (LocalUbifocus.isUbifocusImage(path)) {
                        for (SubFile subFile : LocalUbifocus.getUbifocusSubFiles(path)) {
                            if (!subFile.getFilePath().equals(path)) {
                                if (deleteFileType(FileType.UBI_SUB_FILE, subFile.getFilePath()) <= 0) {
                                    Log.e("MediaFileUtils", "Delete ubi sub file failed " + subFile.getFilePath());
                                }
                            }
                        }
                    }
                    File dngFile = FileUtils.getImageRelativeDngFile(path);
                    if (dngFile != null) {
                        if (deleteFile(0, dngFile) <= 0) {
                            Log.e("MediaFileUtils", "Delete dng file failed " + dngFile.getAbsolutePath());
                        }
                    }
                }
            }
        }
        if ((deleteStrategy & 1) > 0) {
            return deleteFileFromMediaProvider(files);
        }
        return deleteFile(files);
    }

    private static int deleteFileFromMediaProvider(File... files) {
        if (files == null || files.length <= 0) {
            return 0;
        }
        int rows = 0;
        if (files.length <= 100) {
            return deleteFileFromMediaProviderBatch(files);
        }
        int batchStartPosition = 0;
        while (batchStartPosition < files.length) {
            int startPosition = batchStartPosition;
            int executeCount = Math.min(files.length - startPosition, 100);
            batchStartPosition = startPosition + executeCount;
            Log.d("MediaFileUtils", "Execute from %d to %d, total %d", Integer.valueOf(startPosition), Integer.valueOf(batchStartPosition), Integer.valueOf(executeCount));
            rows += deleteFileFromMediaProviderBatch((File[]) Arrays.copyOfRange(files, startPosition, batchStartPosition));
            Log.d("MediaFileUtils", "Done execute from %d to %d, total %d", Integer.valueOf(startPosition), Integer.valueOf(batchStartPosition), Integer.valueOf(executeCount));
        }
        return rows;
    }

    private static int deleteFileFromMediaProviderBatch(File... files) {
        Log.d("MediaFileUtils", "Start batch deleting %s files from media provider", Integer.valueOf(files.length));
        int checkedDeleteFileCount = 0;
        int rowCount = 0;
        ArrayList<ContentProviderOperation> operations = new ArrayList();
        int deleteFileCount = deleteFile(files);
        Uri uri = Files.getContentUri("external");
        StringBuilder fileSelectionBuilder = new StringBuilder();
        StringBuilder logBuilder = new StringBuilder();
        boolean isFirst = true;
        for (File file : files) {
            if (!(file == null || file.exists())) {
                checkedDeleteFileCount++;
                if (file.isDirectory()) {
                    operations.add(ContentProviderOperation.newDelete(uri).withSelection(String.format("%s LIKE '%s%'", new Object[]{"_data", file.getAbsolutePath()}), null).build());
                    logBuilder.append("directory:[").append(file.getAbsolutePath()).append("],");
                } else {
                    if (isFirst) {
                        isFirst = false;
                    } else {
                        fileSelectionBuilder.append(",");
                    }
                    fileSelectionBuilder.append("'").append(file.getAbsolutePath()).append("'");
                    logBuilder.append(file.getAbsolutePath()).append(",");
                }
            }
        }
        if (fileSelectionBuilder.length() > 0) {
            fileSelectionBuilder.insert(0, "_data IN (").append(")");
            operations.add(ContentProviderOperation.newDelete(uri).withSelection(fileSelectionBuilder.toString(), null).build());
        }
        if (operations.size() > 0) {
            try {
                Log.d("MediaFileUtils", "Start deleting %s", logBuilder.toString());
                ContentProviderResult[] results = GalleryApp.sGetAndroidContext().getContentResolver().applyBatch("media", operations);
                for (int i = 0; i < results.length; i++) {
                    ContentProviderResult result = results[i];
                    if (result.count.intValue() <= 0) {
                        Log.w("MediaFileUtils", "No rows affected while executing operation [%s]", operations.get(i));
                    } else {
                        rowCount += result.count.intValue();
                    }
                }
            } catch (Exception e) {
                Log.e("MediaFileUtils", "delete from provider error %s, %s", files, e);
                HashMap<String, String> params = new HashMap(2);
                params.put("deleteFileCount", String.valueOf(files.length));
                params.put("errorMsg", e.getMessage());
                BaseSamplingStatHelper.recordErrorEvent("file_handle", "error_execute_media_provider", params);
            }
        }
        Log.d("MediaFileUtils", "Done deleting %s files from provider, deleted %s files, check delete result %s\nOperation count %s,  affected %s rows", Integer.valueOf(files.length), Integer.valueOf(deleteFileCount), Integer.valueOf(checkedDeleteFileCount), Integer.valueOf(operations.size()), Integer.valueOf(rowCount));
        return rowCount;
    }

    public static int deleteFile(File... files) {
        int count = 0;
        for (File file : files) {
            if (file != null) {
                if (file.exists()) {
                    count += FileUtils.deleteFile(file) ? 1 : 0;
                } else {
                    count++;
                }
            }
        }
        return count;
    }
}
