package com.miui.gallery.provider.cloudmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map.Entry;

class DeleteShare extends BatchTaskById {
    private int mDeleteReason;
    private String mUserId = AccountCache.getAccount().name;

    public DeleteShare(Context context, ArrayList<Long> dirtyBulk, long[] ids, int deleteReason) {
        super(context, dirtyBulk, ids);
        this.mDeleteReason = deleteReason;
    }

    protected Cursor queryCursor(SQLiteDatabase db, Long[] keys) {
        return db.query("shareImage", CloudManager.PROJECTION, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", keys)}), null, null, null, null);
    }

    protected void executeBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        db.beginTransaction();
        try {
            Collection deleteRecords = new ArrayList();
            for (Entry<Long, BatchItemData> entry : data.keyItemDataMap.entrySet()) {
                if (((BatchItemData) entry.getValue()).result == -1) {
                    data.cursor.moveToPosition(((BatchItemData) entry.getValue()).cursorIndex);
                    ContentValues values;
                    if (data.cursor.isNull(4)) {
                        Log.d("CloudManager.DeleteShare", "DELETE ITEM: no server id found, update to invalid record: %d", entry.getKey());
                        values = new ContentValues();
                        values.put("localFlag", Integer.valueOf(-1));
                        ((BatchItemData) entry.getValue()).result = (long) db.update("shareImage", values, "_id = ? ", new String[]{((Long) entry.getKey()).toString()});
                    } else {
                        Log.d("CloudManager.DeleteShare", "DELETE ITEM: server id found, mark delete %d", entry.getKey());
                        values = new ContentValues();
                        values.put("localFlag", Integer.valueOf(2));
                        ((BatchItemData) entry.getValue()).result = (long) db.update("shareImage", values, "_id = ? ", new String[]{((Long) entry.getKey()).toString()});
                    }
                    DeleteRecord deleteRecord = CloudManager.createDeleteRecord(this.mDeleteReason, data.cursor, "CloudManager.DeleteShare");
                    if (deleteRecord != null) {
                        deleteRecords.add(deleteRecord);
                    }
                }
            }
            db.setTransactionSuccessful();
            if (BaseMiscUtil.isValid(deleteRecords)) {
                DeleteRecorder.record(deleteRecords);
            }
            db.endTransaction();
            for (Entry<Long, BatchItemData> entry2 : data.keyItemDataMap.entrySet()) {
                if (((BatchItemData) entry2.getValue()).result > 0) {
                    markAsDirty(ShareMediaManager.convertToMediaId(((Long) entry2.getKey()).longValue()));
                }
            }
        } catch (Exception e) {
            data.fillResult(-110);
            db.endTransaction();
        } catch (Throwable th) {
            db.endTransaction();
            throw th;
        }
    }

    protected long verifyBatchItem(Cursor cursor) {
        if (cursor.getInt(5) == 0) {
            Log.w("CloudManager.DeleteShare", "Album can't be deleted here, use DeleteAlbum instead");
            return -100;
        } else if (TextUtils.isEmpty(this.mUserId)) {
            Log.w("CloudManager.DeleteShare", "Account doesn't exist!");
            return -100;
        } else if (TextUtils.isEmpty(cursor.getString(4)) || this.mUserId.equals(cursor.getString(51))) {
            return -1;
        } else {
            Log.w("CloudManager.DeleteShare", "User's deleting other's media item!");
            return -100;
        }
    }
}
