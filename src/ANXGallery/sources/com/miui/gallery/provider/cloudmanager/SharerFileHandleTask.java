package com.miui.gallery.provider.cloudmanager;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.Log;
import java.util.ArrayList;

class SharerFileHandleTask extends BatchTaskById {
    public SharerFileHandleTask(Context context, ArrayList<Long> dirtyBulk, long[] ids) {
        super(context, dirtyBulk, ids);
    }

    protected Cursor queryCursor(SQLiteDatabase db, Long[] keys) {
        return getContext().getContentResolver().query(ShareImage.SHARE_URI, CloudManager.PROJECTION, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", keys)}), null, null);
    }

    protected void executeBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        ContentResolver contentResolver = getContext().getContentResolver();
        for (Long longValue : (Long[]) data.keys) {
            long key = longValue.longValue();
            BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(key));
            if (itemData != null && itemData.result == -1 && itemData.cursorIndex >= 0) {
                data.cursor.moveToPosition(itemData.cursorIndex);
                itemData.result = MediaFileHandleJob.from(contentResolver, data.cursor, ShareMediaManager.convertToMediaId(key), 40).run(getContext()) ? 1 : 0;
                Log.d("CloudManager.SharerFileHandleTask", "MediaFileHandleJob result for %d is %s", Long.valueOf(key), itemData);
            }
        }
    }
}
