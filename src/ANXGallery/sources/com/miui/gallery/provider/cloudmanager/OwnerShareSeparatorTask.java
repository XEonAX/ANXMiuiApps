package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.provider.cache.MediaManager;
import java.util.ArrayList;

abstract class OwnerShareSeparatorTask extends SubTaskSeparatorTask {
    protected abstract long[] executeOwner(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, BatchOperationData<Long> batchOperationData, long[] jArr);

    protected abstract long[] executeSharer(SQLiteDatabase sQLiteDatabase, MediaManager mediaManager, BatchOperationData<Long> batchOperationData, long[] jArr);

    public OwnerShareSeparatorTask(Context context, ArrayList<Long> dirtyBulk, long[] ids) {
        super(context, dirtyBulk, ids);
    }

    protected int getItemTaskType(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> batchOperationData, long id) {
        return ShareMediaManager.isOtherShareMediaId(id) ? 1 : 0;
    }

    protected long[] executeType(int type, SQLiteDatabase db, MediaManager manager, BatchOperationData<Long> data, long[] typeIds) {
        switch (type) {
            case 0:
                return executeOwner(db, manager, data, typeIds);
            case 1:
                return executeSharer(db, manager, data, toShareImageIds(typeIds));
            default:
                throw new IllegalArgumentException("Type " + type + " is not supported!");
        }
    }

    protected Cursor queryCursor(SQLiteDatabase db, Long[] keys) {
        return null;
    }

    protected static long[] toShareImageIds(long[] cloudIdsForMedia) {
        if (cloudIdsForMedia == null || cloudIdsForMedia.length <= 0) {
            return cloudIdsForMedia;
        }
        long[] ids = new long[cloudIdsForMedia.length];
        for (int i = 0; i < cloudIdsForMedia.length; i++) {
            ids[i] = ShareMediaManager.getOriginalMediaId(cloudIdsForMedia[i]);
        }
        return ids;
    }
}
