package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

abstract class DupMedia extends BatchTaskById {
    private int mDupType;

    static class DupOperationData extends BatchOperationData<Long> {
        Map<String, Long> sha1ToKeyMap = null;

        public DupOperationData(Long[] keys) {
            super(keys);
            this.sha1ToKeyMap = new HashMap(keys.length);
        }
    }

    protected abstract long[] executeDupItems(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, long[] jArr);

    public DupMedia(Context context, ArrayList<Long> dirtyBulk, long[] ids, int dupType) {
        super(context, dirtyBulk, ids);
        this.mDupType = dupType;
    }

    protected Cursor queryCursor(SQLiteDatabase db, Long[] keys) {
        String selection = null;
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        switch (this.mDupType) {
            case 0:
                StringBuilder builder = new StringBuilder();
                cursor = null;
                try {
                    sQLiteDatabase = db;
                    cursor = sQLiteDatabase.query("cloud", new String[]{"_id"}, "attributes & 4 != 0", null, null, null, null);
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            if (!cursor.isFirst()) {
                                builder.append(',');
                            }
                            builder.append(cursor.getLong(0));
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    selection = String.format("(%s) AND %s IN (%s)", new Object[]{"(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND sha1 IN (SELECT sha1 FROM cloud WHERE _id IN (%s)) AND sha1 NOT NULL", "localGroupId", builder});
                    break;
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            case 1:
                cursor = null;
                try {
                    sQLiteDatabase = db;
                    cursor = sQLiteDatabase.query(true, "cloud", new String[]{"localGroupId"}, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", keys)}), null, null, null, null, null);
                    if (cursor != null) {
                        if (cursor.getCount() > 1) {
                            Log.e("CloudManager.DupMedia", "Cannot handle dup in album with multiple albums!");
                        } else if (cursor.moveToFirst()) {
                            selection = String.format("(%s) AND %s IN (%s)", new Object[]{"(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND sha1 IN (SELECT sha1 FROM cloud WHERE _id IN (%s)) AND sha1 NOT NULL", "localGroupId", Long.valueOf(cursor.getLong(0))});
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                        break;
                    }
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
                break;
            case 2:
                selection = "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND sha1 IN (SELECT sha1 FROM cloud WHERE _id IN (%s)) AND sha1 NOT NULL";
                break;
        }
        if (TextUtils.isEmpty(selection)) {
            return null;
        }
        return db.query("cloud", CloudManager.PROJECTION, String.format(selection, new Object[]{TextUtils.join(",", keys)}), null, null, null, "sha1 DESC,serverId DESC ");
    }

    protected void executeBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        DupOperationData dupOperationData = (DupOperationData) data;
        LongSparseArray<Long> idToKeyArrays = new LongSparseArray(data.cursor.getCount());
        data.cursor.moveToFirst();
        while (!data.cursor.isAfterLast()) {
            Long sha1Key = (Long) dupOperationData.sha1ToKeyMap.get(data.cursor.getString(9));
            if (sha1Key != null) {
                idToKeyArrays.put(data.cursor.getLong(0), sha1Key);
            }
            data.cursor.moveToNext();
        }
        if (idToKeyArrays.size() > 0) {
            int i;
            long[] ids = new long[idToKeyArrays.size()];
            for (i = 0; i < ids.length; i++) {
                ids[i] = idToKeyArrays.keyAt(i);
            }
            long[] results = executeDupItems(db, manager, ids);
            for (i = 0; i < ids.length; i++) {
                long j;
                BatchItemData item = (BatchItemData) data.keyItemDataMap.get(idToKeyArrays.get(ids[i]));
                if (item.result < 0) {
                    item.result = 0;
                }
                long j2 = item.result;
                if (results[i] > 0) {
                    j = 1;
                } else {
                    j = 0;
                }
                item.result = j + j2;
            }
        }
    }

    protected void verifyBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        super.verifyBatch(db, manager, bundle, data);
        if (!data.isAllInvalid()) {
            DupOperationData operationData = (DupOperationData) data;
            operationData.fillResult(-102);
            Cursor cursor = data.cursor;
            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToPosition(i);
                long key = cursor.getLong(0);
                BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(key));
                if (itemData != null) {
                    operationData.sha1ToKeyMap.put(cursor.getString(9), Long.valueOf(key));
                    itemData.cursorIndex = i;
                    itemData.result = verifyBatchItem(cursor);
                }
            }
        }
    }

    protected BatchOperationData<Long> genBatchOperationData(Long[] keys) {
        return new DupOperationData(keys);
    }
}
