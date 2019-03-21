package com.miui.gallery.provider.cloudmanager;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class OwnerFileHandleTask extends SubTaskSeparatorTask {
    public OwnerFileHandleTask(Context context, ArrayList<Long> dirtyBulk, long[] ids) {
        super(context, dirtyBulk, ids);
    }

    protected Cursor queryCursor(SQLiteDatabase db, Long[] keys) {
        return getContext().getContentResolver().query(Cloud.CLOUD_URI, CloudManager.PROJECTION, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", keys)}), null, null);
    }

    protected int getItemTaskType(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data, long id) {
        BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(id));
        if (itemData == null || data.cursor == null || itemData.cursorIndex < 0) {
            return -1;
        }
        data.cursor.moveToPosition(itemData.cursorIndex);
        if (data.cursor.getInt(2) == 0) {
            return -1;
        }
        if (data.cursor.getInt(5) == 0) {
            return 10;
        }
        switch (data.cursor.getInt(2)) {
            case -1:
            case 2:
                return 12;
            default:
                return 11;
        }
    }

    protected long[] executeType(int type, SQLiteDatabase db, MediaManager manager, BatchOperationData<Long> data, long[] typeIds) {
        ContentResolver contentResolver = getContext().getContentResolver();
        switch (type) {
            case 10:
                return batchExecuteAlbumOperations(data, typeIds);
            case 11:
                return batchExecuteOtherMediaOperations(contentResolver, data, typeIds);
            case 12:
                return batchExecuteDeleteMedia(contentResolver, data, typeIds);
            default:
                throw new IllegalArgumentException("Type " + type + " is not supported!");
        }
    }

    private long[] batchExecuteAlbumOperations(BatchOperationData<Long> data, long[] typeIds) {
        long[] result = new long[typeIds.length];
        for (int i = 0; i < typeIds.length; i++) {
            BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(typeIds[i]));
            if (itemData != null && itemData.result == -1 && itemData.cursorIndex >= 0) {
                data.cursor.moveToPosition(itemData.cursorIndex);
                result[i] = AlbumFileHandleJob.from(data.cursor).run(getContext()) ? 1 : 0;
            }
        }
        return result;
    }

    private long[] batchExecuteOtherMediaOperations(ContentResolver contentResolver, BatchOperationData<Long> data, long[] typeIds) {
        long[] result = new long[typeIds.length];
        for (int i = 0; i < typeIds.length; i++) {
            BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(typeIds[i]));
            if (itemData != null && itemData.result == -1 && itemData.cursorIndex >= 0) {
                data.cursor.moveToPosition(itemData.cursorIndex);
                result[i] = MediaFileHandleJob.from(contentResolver, data.cursor, typeIds[i], 40).run(getContext()) ? 1 : 0;
            }
        }
        return result;
    }

    private long[] batchExecuteDeleteMedia(ContentResolver contentResolver, BatchOperationData<Long> data, long[] typeIds) {
        String[] fileArray;
        long[] result = new long[typeIds.length];
        LongSparseArray<String> albumCache = new LongSparseArray();
        int initialSize = Math.min(typeIds.length, (typeIds.length / 2) + 1);
        List<String> arrayList = new ArrayList(initialSize);
        arrayList = new ArrayList(initialSize);
        ArrayList<ContentProviderOperation> operations = new ArrayList();
        Collection deleteRecords = new ArrayList(initialSize);
        for (int i = 0; i < typeIds.length; i++) {
            BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(typeIds[i]));
            if (itemData != null && itemData.result == -1 && itemData.cursorIndex >= 0) {
                data.cursor.moveToPosition(itemData.cursorIndex);
                String albumDir = getAlbumDirectory(contentResolver, data.cursor.getLong(3), albumCache);
                String path = data.cursor.getString(8);
                if (shouldDeleteFile(getContext(), path, albumDir)) {
                    arrayList.add(path);
                    deleteRecords.add(new DeleteRecord(40, path, "CloudManager.OwnerFileHandleTask"));
                }
                path = data.cursor.getString(7);
                if (shouldDeleteFile(getContext(), path, albumDir)) {
                    arrayList.add(path);
                    deleteRecords.add(new DeleteRecord(40, path, "CloudManager.OwnerFileHandleTask"));
                }
                if (data.cursor.getInt(2) == -1) {
                    operations.add(ContentProviderOperation.newDelete(Cloud.CLOUD_URI).withSelection("_id=?", new String[]{String.valueOf(typeIds[i])}).build());
                    result[i] = 0;
                } else {
                    result[i] = 1;
                }
            }
        }
        if (BaseMiscUtil.isValid(arrayList)) {
            fileArray = new String[arrayList.size()];
            MediaFileUtils.deleteFileType(FileType.ORIGINAL, (String[]) arrayList.toArray(fileArray));
        }
        if (BaseMiscUtil.isValid(arrayList)) {
            fileArray = new String[arrayList.size()];
            MediaFileUtils.deleteFileType(FileType.THUMBNAIL, (String[]) arrayList.toArray(fileArray));
        }
        if (BaseMiscUtil.isValid(deleteRecords)) {
            DeleteRecorder.record(deleteRecords);
        }
        if (operations.size() > 0) {
            try {
                contentResolver.applyBatch("com.miui.gallery.cloud.provider", operations);
                Log.d("CloudManager.OwnerFileHandleTask", "Done operate %d delete operations", Integer.valueOf(operations.size()));
            } catch (Throwable e) {
                Log.e("CloudManager.OwnerFileHandleTask", e);
            }
        }
        return result;
    }

    private static boolean shouldDeleteFile(Context context, String filePath, String albumDir) {
        if (TextUtils.isEmpty(filePath)) {
            return false;
        }
        String relativePath = StorageUtils.getRelativePath(context, new File(filePath).getParent());
        if (relativePath == null || !relativePath.equalsIgnoreCase(albumDir)) {
            return false;
        }
        return true;
    }

    private String getAlbumDirectory(ContentResolver contentResolver, long albumId, LongSparseArray<String> cache) {
        if (cache != null && cache.get(albumId) != null) {
            return (String) cache.get(albumId);
        }
        String albumDir = "";
        if (albumId == -1000) {
            albumDir = "MIUI/Gallery/cloud/.secretAlbum";
        } else {
            try {
                ContentResolver contentResolver2 = contentResolver;
                Cursor cursor = contentResolver2.query(Cloud.CLOUD_URI, CloudManager.PROJECTION, "_id=?", new String[]{String.valueOf(albumId)}, null);
                if (cursor != null && cursor.moveToFirst()) {
                    albumDir = cursor.getString(7);
                    if (TextUtils.isEmpty(albumDir)) {
                        albumDir = CloudManager.genRelativePath(cursor.getString(6), false);
                    }
                }
                BaseMiscUtil.closeSilently(cursor);
            } catch (Throwable e) {
                albumDir = null;
                Log.e("CloudManager.OwnerFileHandleTask", e);
                BaseMiscUtil.closeSilently(null);
            } catch (Throwable th) {
                BaseMiscUtil.closeSilently(null);
                throw th;
            }
        }
        if (albumDir != null) {
            cache.put(albumId, albumDir);
        }
        return albumDir;
    }
}
