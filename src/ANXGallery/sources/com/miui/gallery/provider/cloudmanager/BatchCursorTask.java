package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.ArrayMap;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

abstract class BatchCursorTask<K> extends BatchTask<K, BatchOperationData<K>> {
    private Context mContext;
    private ArrayList<Long> mDirtyBulk;

    static class BatchItemData {
        int cursorIndex = -1;
        long result = -1;

        BatchItemData() {
        }
    }

    static class BatchOperationData<T> {
        Cursor cursor;
        ArrayMap<T, BatchItemData> keyItemDataMap = new ArrayMap(this.keys.length);
        T[] keys;

        BatchOperationData(T[] keys) {
            this.keys = keys;
        }

        void fillResult(long result, boolean overrideErrorResult) {
            for (BatchItemData itemData : this.keyItemDataMap.values()) {
                if (overrideErrorResult || itemData.result == -1) {
                    itemData.result = result;
                }
            }
        }

        void fillResult(long result) {
            fillResult(result, false);
        }

        boolean isAllInvalid() {
            if (this.keyItemDataMap == null || this.keyItemDataMap.size() <= 0) {
                return true;
            }
            for (BatchItemData itemData : this.keyItemDataMap.values()) {
                if (itemData.result != -1) {
                    if (itemData.result >= 0) {
                    }
                }
                return false;
            }
            return true;
        }

        void copyResultsTo(long[] results) {
            if (this.keyItemDataMap.size() != results.length) {
                throw new IllegalArgumentException("Expect results length to be " + this.keyItemDataMap.size() + " instead of " + results.length);
            }
            for (int i = 0; i < this.keys.length; i++) {
                BatchItemData item = (BatchItemData) this.keyItemDataMap.get(this.keys[i]);
                results[i] = item == null ? -102 : item.result;
            }
        }

        void release() {
            BaseMiscUtil.closeSilently(this.cursor);
            this.cursor = null;
        }
    }

    protected abstract Cursor queryCursor(SQLiteDatabase sQLiteDatabase, K[] kArr);

    public BatchCursorTask(Context context, ArrayList<Long> dirtyBulk) {
        this.mContext = context;
        this.mDirtyBulk = dirtyBulk;
    }

    protected int getBatchCount() {
        return 100;
    }

    public long[] run(SQLiteDatabase db, MediaManager manager) {
        long[] result = new long[getTotalCount()];
        Arrays.fill(result, -101);
        Log.d("CloudManager.BatchCursorTask", "%s is running", toString());
        int nextBatchStartPosition = 0;
        Bundle bundle;
        try {
            bundle = new Bundle();
            while (nextBatchStartPosition < getTotalCount()) {
                int startPosition = nextBatchStartPosition;
                int batchCount = Math.min(getTotalCount() - startPosition, getBatchCount());
                nextBatchStartPosition += batchCount;
                bundle = getBatchBundle(startPosition, batchCount, bundle);
                long[] batchResult = runBatch(db, manager, bundle);
                if (batchResult.length != batchCount) {
                    Log.e("CloudManager.BatchCursorTask", "%s, Invalid batch result, expecting %d results, but actually is %d", toString(), Integer.valueOf(batchCount), Integer.valueOf(batchResult.length));
                }
                int i = 0;
                while (i < batchResult.length && i < batchCount) {
                    result[startPosition + i] = batchResult[i];
                    i++;
                }
                releaseBatchBundle(bundle);
            }
            Log.d("CloudManager.BatchCursorTask", "%s finish", toString());
            release();
            return result;
        } catch (Throwable th) {
            Log.d("CloudManager.BatchCursorTask", "%s finish", toString());
            release();
        }
    }

    protected long[] runBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle) {
        Log.d("CloudManager.BatchCursorTask", "%s run batch for bundle %s", toString(), describeBundle(bundle));
        long[] result = new long[getBatchExecuteKeys(bundle).length];
        BatchOperationData<K> data = null;
        try {
            data = prepareBatch(db, manager, bundle);
            verifyBatch(db, manager, bundle, data);
            if (!data.isAllInvalid()) {
                executeBatch(db, manager, bundle, data);
            }
            data.copyResultsTo(result);
            if (data != null) {
                data.release();
            }
        } catch (Throwable e) {
            Log.w("CloudManager.BatchCursorTask", e);
            Arrays.fill(result, -101);
            if (data != null) {
                data.release();
            }
        } catch (Throwable th) {
            if (data != null) {
                data.release();
            }
        }
        Log.d("CloudManager.BatchCursorTask", "%s done run batch for bundle %s", toString(), describeBundle(bundle));
        return result;
    }

    protected BatchOperationData<K> prepareBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle) {
        K[] keys = getBatchExecuteKeys(bundle);
        BatchOperationData<K> data = genBatchOperationData(keys);
        for (K key : keys) {
            data.keyItemDataMap.put(key, genBatchItemData());
        }
        Cursor cursor = null;
        try {
            cursor = queryCursor(db, keys);
        } catch (Throwable e) {
            Log.w("CloudManager.BatchCursorTask", e);
        }
        data.cursor = cursor;
        return data;
    }

    protected BatchOperationData<K> genBatchOperationData(K[] keys) {
        return new BatchOperationData(keys);
    }

    protected BatchItemData genBatchItemData() {
        return new BatchItemData();
    }

    protected void verifyBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<K> data) {
        if (data.cursor == null) {
            Log.d("CloudManager.BatchCursorTask", "cursor for %s is null, abort", toString());
            data.fillResult(-101);
        } else if (data.cursor.getCount() <= 0) {
            Log.d("CloudManager.BatchCursorTask", "cursor for %s has nothing, abort", toString());
            data.fillResult(-102);
        } else {
            data.fillResult(-1);
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    protected void release() {
        this.mContext = null;
    }

    protected void releaseBatchBundle(Bundle bundle) {
        if (bundle != null) {
            bundle.clear();
        }
    }

    public ArrayList<Long> getDirtyBulk() {
        return this.mDirtyBulk;
    }

    protected final void markAsDirty(long id) {
        this.mDirtyBulk.add(Long.valueOf(id));
    }

    protected final void markAsDirty(Collection<Long> ids) {
        this.mDirtyBulk.addAll(ids);
    }
}
