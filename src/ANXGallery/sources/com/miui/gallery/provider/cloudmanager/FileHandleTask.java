package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.miui.gallery.provider.cache.MediaManager;

class FileHandleTask extends OwnerShareSeparatorTask {
    public FileHandleTask(Context context, long[] ids) {
        super(context, null, ids);
    }

    protected long[] executeOwner(SQLiteDatabase db, MediaManager manager, BatchOperationData<Long> batchOperationData, long[] ownerMediaIds) {
        return new OwnerFileHandleTask(getContext(), getDirtyBulk(), ownerMediaIds).run(db, manager);
    }

    protected long[] executeSharer(SQLiteDatabase db, MediaManager manager, BatchOperationData<Long> batchOperationData, long[] shareMediaIds) {
        return new SharerFileHandleTask(getContext(), getDirtyBulk(), shareMediaIds).run(db, manager);
    }
}
