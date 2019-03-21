package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;

class AlbumFileHandleJob {
    private String mId;
    private int mLocalFlag;
    private String mRelativeDir;

    private AlbumFileHandleJob(String id, String relativeDir, int localFlag) {
        this.mId = id;
        this.mRelativeDir = relativeDir;
        this.mLocalFlag = localFlag;
    }

    public static AlbumFileHandleJob from(Cursor cursor) {
        String id = cursor.getString(0);
        String dir = cursor.getString(7);
        if (TextUtils.isEmpty(dir)) {
            dir = DownloadPathHelper.getFolderRelativePathInCloud(cursor.getString(6));
        }
        return new AlbumFileHandleJob(id, dir, cursor.getInt(2));
    }

    public boolean run(Context context) {
        Object folder = new File(StorageUtils.getSafePathInPriorStorage(this.mRelativeDir));
        switch (this.mLocalFlag) {
            case -1:
                Log.d("CloudManager.AlbumFileHandleJob", "local deletion, just delete from db");
                context.getContentResolver().delete(Cloud.CLOUD_URI, "_id=?", new String[]{this.mId});
                break;
            case 2:
                Log.d("CloudManager.AlbumFileHandleJob", "cloud deletion, skip folder, db's deletion already done");
                break;
            case 7:
            case 8:
                Log.d("CloudManager.AlbumFileHandleJob", "make folder: %s", folder);
                if (!folder.exists()) {
                    Log.d("CloudManager.AlbumFileHandleJob", "folder maked: %b", Boolean.valueOf(folder.mkdirs()));
                    break;
                }
                Log.w("CloudManager.AlbumFileHandleJob", "folder exist, skip.");
                break;
        }
        return false;
    }
}
