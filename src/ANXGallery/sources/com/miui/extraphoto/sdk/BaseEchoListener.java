package com.miui.extraphoto.sdk;

import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.MediaStore.Files;
import android.text.TextUtils;
import com.miui.extraphoto.sdk.IEchoListener.Stub;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class BaseEchoListener extends Stub {
    private static final String[] UPDATE_PROJECTION = new String[]{"*"};

    public abstract void onEnd(String str, boolean z);

    public abstract void onStart();

    public final void onEchoStart() throws RemoteException {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                BaseEchoListener.this.onStart();
            }
        });
    }

    public final void onEchoEnd(String originPath, String echoPath, boolean success) throws RemoteException {
        String path = null;
        if (success) {
            long moveFileStart = System.currentTimeMillis();
            if (FileUtils.move(new File(echoPath), new File(originPath))) {
                Log.d("BaseEchoListener", "move file cost %d", Long.valueOf(System.currentTimeMillis() - moveFileStart));
                long updateDataBaseStart = System.currentTimeMillis();
                path = updateDataBase(originPath);
                Log.d("BaseEchoListener", "update dataBase cost: %d", Long.valueOf(System.currentTimeMillis() - updateDataBaseStart));
                if (TextUtils.isEmpty(path)) {
                    success = false;
                } else {
                    Log.d("BaseEchoListener", "update db success %s, %s", path, echoPath);
                }
            } else {
                success = false;
                Log.d("BaseEchoListener", "remove file fail %s, %s", echoPath, originPath);
            }
        } else {
            Log.d("BaseEchoListener", "echo file fail %s, %s", originPath, echoPath);
        }
        final String finalPath = path;
        final boolean finalSuccess = success;
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                BaseEchoListener.this.onEnd(finalPath, finalSuccess);
            }
        });
    }

    private boolean isDeleted(int localFlag) {
        return localFlag == -1 || localFlag == 2 || localFlag == 5;
    }

    private String updateDataBase(final String path) {
        return (String) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, UPDATE_PROJECTION, "localFile like ?", new String[]{path}, null, new QueryHandler<String>() {
            public String handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                long id = cursor.getLong(cursor.getColumnIndex("_id"));
                String serverId = cursor.getString(cursor.getColumnIndex("serverId"));
                if (BaseEchoListener.this.isDeleted(cursor.getInt(cursor.getColumnIndex("localFlag")))) {
                    return null;
                }
                ContentValues values;
                Uri uri;
                if (TextUtils.isEmpty(serverId)) {
                    values = new ContentValues();
                    values.put("_size", Long.valueOf(new File(path).length()));
                    uri = Files.getContentUri("external");
                    SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), uri, values, "_data=?", new String[]{path});
                    values.clear();
                    values.put("sha1", FileUtils.getSha1(path));
                    values.put("size", Long.valueOf(FileUtils.getFileSize(path)));
                    SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, values, "_id=" + id, null);
                    return path;
                }
                String newName = new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss'_STEREO.jpg'").format(new Date(10000 + cursor.getLong(cursor.getColumnIndex("mixedDateTime"))));
                File file = new File(path);
                file = new File(file.getParentFile(), newName);
                String newPath = file.getAbsolutePath();
                if (FileUtils.move(file, file)) {
                    values = new ContentValues();
                    values.put("_data", newPath);
                    values.put("_size", Long.valueOf(file.length()));
                    uri = Files.getContentUri("external");
                    SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), uri, values, "_data like ?", new String[]{path});
                    values.clear();
                    int columnCount = cursor.getColumnCount();
                    for (int i = 0; i < columnCount; i++) {
                        BaseEchoListener.this.putValue(cursor, i, values);
                    }
                    values.put("size", Long.valueOf(FileUtils.getFileSize(newPath)));
                    values.put("sha1", FileUtils.getSha1(newPath));
                    values.put("localFlag", Integer.valueOf(8));
                    values.putNull("_id");
                    values.putNull("serverId");
                    values.putNull("groupId");
                    values.putNull("serverStatus");
                    values.putNull("serverTag");
                    values.put("fileName", newName);
                    values.put("title", FileUtils.getFileTitle(newName));
                    values.put("localFile", newPath);
                    uri = SafeDBUtil.safeInsert(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, values);
                    boolean insertSuccess = false;
                    if (uri != null && ContentUris.parseId(uri) > 0) {
                        insertSuccess = true;
                        values.clear();
                        values.put("localFlag", Integer.valueOf(2));
                        SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, values, "_id=" + id, null);
                    }
                    if (insertSuccess) {
                        return newPath;
                    }
                    Log.d("BaseEchoListener", "insert file fail %s", (Object) newPath);
                    MediaFileUtils.deleteFileType(FileType.ORIGINAL, newPath);
                    return null;
                }
                Log.d("BaseEchoListener", "server rename file fail %s", (Object) path);
                MediaFileUtils.deleteFileType(FileType.ORIGINAL, file);
                return null;
            }
        });
    }

    private void putValue(Cursor cursor, int columnIndex, ContentValues values) {
        switch (cursor.getType(columnIndex)) {
            case 1:
                values.put(cursor.getColumnName(columnIndex), cursor.getString(columnIndex));
                return;
            case 2:
                values.put(cursor.getColumnName(columnIndex), Double.valueOf(cursor.getDouble(columnIndex)));
                return;
            case 3:
                values.put(cursor.getColumnName(columnIndex), cursor.getString(columnIndex));
                return;
            case 4:
                values.put(cursor.getColumnName(columnIndex), cursor.getBlob(columnIndex));
                return;
            default:
                return;
        }
    }
}
