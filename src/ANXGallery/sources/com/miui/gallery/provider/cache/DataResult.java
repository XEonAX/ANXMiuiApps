package com.miui.gallery.provider.cache;

import android.database.CursorWindow;
import com.miui.gallery.provider.cache.CacheItem.ColumnMapper;
import com.miui.gallery.util.Log;
import java.util.List;

class DataResult implements ResultSet {
    private String[] mColumns;
    private List<? extends CacheItem> mContents;
    private int[] mIndexes;

    public DataResult(String[] columns, List<? extends CacheItem> content, ColumnMapper mapper) {
        this.mContents = content;
        this.mColumns = columns;
        this.mIndexes = buildIndex(this.mColumns, mapper);
    }

    public int fillWindow(CursorWindow window) {
        int count = 0;
        for (int i = window.getStartPosition(); i < this.mContents.size(); i++) {
            if (!window.allocRow()) {
                Log.w(".provider.cache.DataResult", "window can not allocate a new row, break.");
                break;
            }
            for (int j = 0; j < this.mColumns.length; j++) {
                if (!((CacheItem) this.mContents.get(i)).fillWindow(window, i, j, this.mIndexes[j])) {
                    Log.e(".provider.cache.DataResult", "fill window[%s] failed: %s, %s", window, this.mContents.get(i), this.mColumns[j]);
                }
            }
            count++;
        }
        Log.w(".provider.cache.DataResult", "window[%s] filled: %s", window, Integer.valueOf(count));
        return count;
    }

    public String[] getColumnNames() {
        return this.mColumns;
    }

    public int getCount() {
        return this.mContents.size();
    }

    public void close() {
        this.mContents = null;
        this.mColumns = null;
        this.mIndexes = null;
    }

    private static int[] buildIndex(String[] columns, ColumnMapper mapper) {
        int[] indexes = new int[columns.length];
        for (int i = 0; i < columns.length; i++) {
            indexes[i] = mapper.getIndex(columns[i]);
        }
        return indexes;
    }
}
