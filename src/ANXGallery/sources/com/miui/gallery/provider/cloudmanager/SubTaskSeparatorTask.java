package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.StringUtils;
import java.util.ArrayList;
import java.util.List;

abstract class SubTaskSeparatorTask extends BatchTaskById {

    private static class OperationData extends BatchOperationData<Long> {
        ArrayList<Pair<Integer, ArrayList<Long>>> typeIdsArrays = new ArrayList();

        OperationData(Long[] keys) {
            super(keys);
        }

        void putItemToType(long id, int type) {
            Pair<Integer, ArrayList<Long>> typeIdsPair = this.typeIdsArrays.size() <= 0 ? null : (Pair) this.typeIdsArrays.get(this.typeIdsArrays.size() - 1);
            if (typeIdsPair == null || ((Integer) typeIdsPair.first).intValue() != type) {
                Object obj;
                String str = "CloudManager.SubTaskSeparatorTask";
                String str2 = "New type group of [%d] is created! Last group is [%s]";
                Integer valueOf = Integer.valueOf(type);
                if (typeIdsPair == null) {
                    obj = "null";
                } else {
                    obj = typeIdsPair.first + ", count:" + ((ArrayList) typeIdsPair.second).size();
                }
                Log.d(str, str2, valueOf, obj);
                typeIdsPair = new Pair(Integer.valueOf(type), new ArrayList());
                this.typeIdsArrays.add(typeIdsPair);
            }
            ((ArrayList) typeIdsPair.second).add(Long.valueOf(id));
        }
    }

    protected abstract long[] executeType(int i, SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, BatchOperationData<Long> batchOperationData, long[] jArr);

    protected abstract int getItemTaskType(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, Bundle bundle, BatchOperationData<Long> batchOperationData, long j);

    public SubTaskSeparatorTask(Context context, ArrayList<Long> dirtyBulk, long[] ids) {
        super(context, dirtyBulk, ids);
    }

    protected void executeBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        OperationData operationData = (OperationData) data;
        for (int i = 0; i < operationData.typeIdsArrays.size(); i++) {
            Pair<Integer, ArrayList<Long>> typeIdsPair = (Pair) operationData.typeIdsArrays.get(i);
            if (typeIdsPair.second != null && ((ArrayList) typeIdsPair.second).size() > 0) {
                Log.d("CloudManager.SubTaskSeparatorTask", "[%s] Start execute type %d for ids [%s]", toString(), typeIdsPair.first, TextUtils.join(",", (Iterable) typeIdsPair.second));
                long[] typeResults = executeType(((Integer) typeIdsPair.first).intValue(), db, manager, data, Numbers.toArray((List) typeIdsPair.second));
                Log.d("CloudManager.SubTaskSeparatorTask", "[%s] Result [%s]", toString(), StringUtils.join(",", typeResults));
                applyResult(data, typeResults, (ArrayList) typeIdsPair.second);
            }
        }
    }

    protected void verifyBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        super.verifyBatch(db, manager, bundle, data);
        OperationData operationData = (OperationData) data;
        for (Long longValue : (Long[]) operationData.keys) {
            long id = longValue.longValue();
            BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(id));
            if (itemData != null) {
                int type = getItemTaskType(db, manager, bundle, data, id);
                if (type != -1) {
                    operationData.putItemToType(id, type);
                    itemData.result = -1;
                }
            }
        }
    }

    protected BatchOperationData<Long> genBatchOperationData(Long[] keys) {
        return new OperationData(keys);
    }

    private void applyResult(BatchOperationData<Long> data, long[] partialResult, ArrayList<Long> partialIds) {
        for (int i = 0; i < partialResult.length; i++) {
            BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(partialIds.get(i));
            if (itemData != null) {
                itemData.result = partialResult[i];
            }
        }
    }
}
