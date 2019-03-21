package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.Log;
import java.util.ArrayList;

class DupDelete extends DupMedia {
    private int mDeleteReason;

    public DupDelete(Context context, ArrayList<Long> dirtyBulk, long[] ids, int dupType, int deleteReason) {
        super(context, dirtyBulk, ids, dupType);
        this.mDeleteReason = deleteReason;
    }

    protected long verifyBatchItem(Cursor cursor) {
        if (cursor.getInt(5) == 0) {
            Log.w("CloudManager.DupDelete", "Album can't be deleted here, use DeleteAlbum instead");
            return -100;
        } else if (!ShareMediaManager.isOtherShareMediaId(cursor.getLong(0))) {
            return -1;
        } else {
            Log.w("CloudManager.DupDelete", "Share medias can't be deleted here, use DeleteSharer instead");
            return -100;
        }
    }

    protected long[] executeDupItems(SQLiteDatabase db, MediaManager manager, long[] dupIds) {
        return new DeleteOwner(getContext(), getDirtyBulk(), dupIds, this.mDeleteReason).run(db, manager);
    }
}
