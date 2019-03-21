package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.miui.gallery.provider.cache.MediaManager;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;

abstract class BatchTaskById extends BatchCursorTask<Long> {
    protected long[] mIds;

    public BatchTaskById(Context context, ArrayList<Long> dirtyBulk, long[] ids) {
        super(context, dirtyBulk);
        Numbers.ensurePositive(ids);
        this.mIds = ids;
    }

    protected long verifyBatchItem(Cursor cursor) {
        return -1;
    }

    protected int getTotalCount() {
        return this.mIds.length;
    }

    protected Bundle getBatchBundle(int fromIndex, int count, Bundle bundle) {
        bundle.putLongArray("ids", Arrays.copyOfRange(this.mIds, fromIndex, fromIndex + count));
        return bundle;
    }

    protected Long[] getBatchExecuteKeys(Bundle bundle) {
        long[] ids = bundle.getLongArray("ids");
        Long[] keys = new Long[ids.length];
        for (int i = 0; i < ids.length; i++) {
            keys[i] = Long.valueOf(ids[i]);
        }
        return keys;
    }

    protected void verifyBatch(SQLiteDatabase db, MediaManager manager, Bundle bundle, BatchOperationData<Long> data) {
        super.verifyBatch(db, manager, bundle, data);
        if (!data.isAllInvalid()) {
            data.fillResult(-102);
            bindBatchCursorIndexes(data);
        }
    }

    protected void bindBatchCursorIndexes(BatchOperationData<Long> data) {
        if (data.cursor != null && data.cursor.getCount() > 0) {
            Cursor cursor = data.cursor;
            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToPosition(i);
                BatchItemData itemData = (BatchItemData) data.keyItemDataMap.get(Long.valueOf(cursor.getLong(0)));
                if (itemData != null) {
                    itemData.cursorIndex = i;
                    itemData.result = verifyBatchItem(cursor);
                }
            }
        }
    }

    protected String describeBundle(Bundle bundle) {
        if (bundle == null || !bundle.containsKey("ids")) {
            return null;
        }
        return String.format("%s:[%s]", new Object[]{"ids", StringUtils.join(",", bundle.getLongArray("ids"))});
    }
}
