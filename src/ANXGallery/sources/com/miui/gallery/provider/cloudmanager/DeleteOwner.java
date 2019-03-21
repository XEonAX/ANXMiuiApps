package com.miui.gallery.provider.cloudmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map.Entry;

class DeleteOwner extends BatchTaskById {
    private int mDeleteReason;
    private boolean mNotDeleteOriginFlag;

    public DeleteOwner(Context context, ArrayList<Long> dirtyBulk, long[] ids, int deleteReason) {
        super(context, dirtyBulk, ids);
        this.mDeleteReason = deleteReason;
    }

    public DeleteOwner(Context context, ArrayList<Long> dirtyBulk, long[] ids, boolean notDeleteOriginFlag, int deleteReason) {
        super(context, dirtyBulk, ids);
        this.mNotDeleteOriginFlag = notDeleteOriginFlag;
        this.mDeleteReason = deleteReason;
    }

    protected Cursor queryCursor(SQLiteDatabase db, Long[] keys) {
        return db.query("cloud", CloudManager.PROJECTION, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", keys)}), null, null, null, null);
    }

    protected void executeBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        db.beginTransaction();
        try {
            Collection deleteRecords = new ArrayList();
            for (Entry<Long, BatchItemData> entry : data.keyItemDataMap.entrySet()) {
                if (((BatchItemData) entry.getValue()).result == -1 && ((BatchItemData) entry.getValue()).cursorIndex >= 0) {
                    data.cursor.moveToPosition(((BatchItemData) entry.getValue()).cursorIndex);
                    ContentValues values = new ContentValues();
                    if (this.mNotDeleteOriginFlag) {
                        values.put("localFile", "");
                        Log.d("CloudManager.DeleteOwner", "DELETE ITEM: not delete origin file: %d", entry.getKey());
                    }
                    if (data.cursor.isNull(4)) {
                        Log.d("CloudManager.DeleteOwner", "DELETE ITEM: no server id found, update to invalid record: %d", entry.getKey());
                        values.put("localFlag", Integer.valueOf(-1));
                    } else {
                        Log.d("CloudManager.DeleteOwner", "DELETE ITEM: server id found, mark delete %d", entry.getKey());
                        values.put("localFlag", Integer.valueOf(2));
                    }
                    ImageFeatureManger.getInstance().onImageDelete(((Long) entry.getKey()).longValue());
                    SQLiteDatabase sQLiteDatabase = db;
                    ((BatchItemData) entry.getValue()).result = (long) sQLiteDatabase.update("cloud", values, "_id = ? ", new String[]{((Long) entry.getKey()).toString()});
                    DeleteRecord deleteRecord = CloudManager.createDeleteRecord(this.mDeleteReason, data.cursor, "CloudManager.DeleteOwner");
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
            ArrayList<Long> validIds = new ArrayList();
            for (Entry<Long, BatchItemData> entry2 : data.keyItemDataMap.entrySet()) {
                if (((BatchItemData) entry2.getValue()).result > 0) {
                    validIds.add(entry2.getKey());
                }
            }
            if (validIds.size() > 0) {
                MediaManager mediaManager = manager;
                mediaManager.delete(String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", validIds)}), null);
                markAsDirty((Collection) validIds);
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
            Log.w("CloudManager.DeleteOwner", "Album can't be deleted here, use DeleteAlbum instead");
            return -100;
        } else if (!ShareMediaManager.isOtherShareMediaId(cursor.getLong(0))) {
            return -1;
        } else {
            Log.w("CloudManager.DeleteOwner", "Share medias can't be deleted here, use DeleteSharer instead");
            return -100;
        }
    }
}
