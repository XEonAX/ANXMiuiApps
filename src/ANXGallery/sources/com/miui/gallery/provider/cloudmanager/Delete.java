package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.miui.gallery.provider.cache.MediaManager;
import java.util.ArrayList;

class Delete extends OwnerShareSeparatorTask {
    private int mDeleteReason;

    public Delete(Context context, ArrayList<Long> dirtyBulk, long[] ids, int deleteReason) {
        super(context, dirtyBulk, ids);
        this.mDeleteReason = deleteReason;
    }

    protected long[] executeOwner(SQLiteDatabase db, MediaManager manager, BatchOperationData<Long> batchOperationData, long[] ownerMediaIds) {
        return new DeleteOwner(getContext(), getDirtyBulk(), ownerMediaIds, this.mDeleteReason).run(db, manager);
    }

    protected long[] executeSharer(SQLiteDatabase db, MediaManager manager, BatchOperationData<Long> batchOperationData, long[] shareMediaIds) {
        return new DeleteShare(getContext(), getDirtyBulk(), shareMediaIds, this.mDeleteReason).run(db, manager);
    }
}
