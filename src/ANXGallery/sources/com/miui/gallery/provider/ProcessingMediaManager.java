package com.miui.gallery.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.photosapi.PhotosOemApi;
import com.miui.gallery.photosapi.ProcessingMetadataQuery.ProgressStatus;
import com.miui.gallery.provider.ProcessingMedia.ProcessingMetadata;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;

public class ProcessingMediaManager {
    private static boolean isProcessingTimeout(Cursor cursor, int processingStartTimeIdx) {
        if (processingStartTimeIdx == -1) {
            return false;
        }
        if (System.currentTimeMillis() - cursor.getLong(processingStartTimeIdx) <= 40000) {
            return false;
        }
        Log.w("ProcessingMediaManager", "Media process timeout: [%s]", cursor.getString(cursor.getColumnIndex("media_path")));
        return true;
    }

    public static List<ProcessingMedia> queryProcessingMedias() {
        Context context = GalleryApp.sGetAndroidContext();
        ContentResolver contentResolver = context.getContentResolver();
        Factory factory = new Factory(context);
        List<ProcessingMedia> processingMedia = new ArrayList();
        Cursor processingCursor = null;
        try {
            processingCursor = contentResolver.query(PhotosOemApi.getQueryProcessingUri(context), null, null, null, null);
            if (processingCursor != null) {
                int mediaStoreIdIdx = processingCursor.getColumnIndexOrThrow("media_store_id");
                int mediaPathIdx = processingCursor.getColumnIndexOrThrow("media_path");
                int progressStatusIdx = processingCursor.getColumnIndexOrThrow("progress_status");
                int progressPercentageIdx = processingCursor.getColumnIndexOrThrow("progress_percentage");
                int processingStartTimeIdx = processingCursor.getColumnIndex("start_time");
                while (processingCursor.moveToNext()) {
                    if (!isProcessingTimeout(processingCursor, processingStartTimeIdx)) {
                        String mediaPath = processingCursor.getString(mediaPathIdx);
                        long mediaStoreId = processingCursor.getLong(mediaStoreIdIdx);
                        int progressStatus = processingCursor.getInt(progressStatusIdx);
                        List<ProcessingMedia> list = processingMedia;
                        list.add(factory.build(mediaStoreId, mediaPath, 1, new ProcessingMetadata(ProgressStatus.fromIdentifier(progressStatus), processingCursor.getInt(progressPercentageIdx))));
                    }
                }
            }
            if (processingCursor != null) {
                processingCursor.close();
            }
        } catch (Throwable ex) {
            Log.d("ProcessingMediaManager", ex);
            return processingMedia;
        } finally {
            if (processingCursor != null) {
                processingCursor.close();
            }
        }
        return processingMedia;
    }

    public static List<String> queryProcessingMediaPaths() {
        Context context = GalleryApp.sGetAndroidContext();
        ContentResolver contentResolver = context.getContentResolver();
        List<String> paths = new ArrayList();
        Cursor processingCursor = null;
        try {
            processingCursor = contentResolver.query(PhotosOemApi.getQueryProcessingUri(context), new String[]{"media_path"}, null, null, null);
            if (processingCursor != null) {
                int mediaPathIdx = processingCursor.getColumnIndexOrThrow("media_path");
                int processingStartTimeIdx = processingCursor.getColumnIndex("start_time");
                while (processingCursor.moveToNext()) {
                    if (!isProcessingTimeout(processingCursor, processingStartTimeIdx)) {
                        String mediaPath = processingCursor.getString(mediaPathIdx);
                        if (!TextUtils.isEmpty(mediaPath)) {
                            paths.add(mediaPath);
                        }
                    }
                }
            }
            if (processingCursor != null) {
                processingCursor.close();
            }
        } catch (Throwable ex) {
            Log.d("ProcessingMediaManager", ex);
            return paths;
        } finally {
            if (processingCursor != null) {
                processingCursor.close();
            }
        }
        return paths;
    }

    public static List<Long> queryProcessingMediaIds() {
        Context context = GalleryApp.sGetAndroidContext();
        ContentResolver contentResolver = context.getContentResolver();
        List<Long> ids = new ArrayList();
        Cursor processingCursor = null;
        try {
            processingCursor = contentResolver.query(PhotosOemApi.getQueryProcessingUri(context), new String[]{"media_store_id"}, null, null, null);
            if (processingCursor != null) {
                int mediaStoreIdIdx = processingCursor.getColumnIndexOrThrow("media_store_id");
                int processingStartTimeIdx = processingCursor.getColumnIndex("start_time");
                while (processingCursor.moveToNext()) {
                    if (!isProcessingTimeout(processingCursor, processingStartTimeIdx)) {
                        ids.add(Long.valueOf(processingCursor.getLong(mediaStoreIdIdx)));
                    }
                }
            }
            if (processingCursor != null) {
                processingCursor.close();
            }
        } catch (Throwable ex) {
            Log.d("ProcessingMediaManager", ex);
            return ids;
        } finally {
            if (processingCursor != null) {
                processingCursor.close();
            }
        }
        return ids;
    }
}
