package com.miui.gallery.provider.cloudmanager;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.miui.gallery.provider.cache.MediaManager;

abstract class BatchTask<K, D> {
    protected abstract void executeBatch(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, Bundle bundle, D d);

    protected abstract Bundle getBatchBundle(int i, int i2, Bundle bundle);

    protected abstract int getBatchCount();

    protected abstract K[] getBatchExecuteKeys(Bundle bundle);

    protected abstract int getTotalCount();

    protected abstract void release();

    protected abstract void releaseBatchBundle(Bundle bundle);

    protected abstract long[] runBatch(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, Bundle bundle);

    BatchTask() {
    }

    protected String describeBundle(Bundle bundle) {
        return bundle == null ? null : bundle.toString();
    }
}
