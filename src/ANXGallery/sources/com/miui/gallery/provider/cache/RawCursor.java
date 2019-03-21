package com.miui.gallery.provider.cache;

import android.database.AbstractCursor;
import com.miui.gallery.provider.cache.CacheItem.ColumnMapper;
import java.util.List;

public class RawCursor extends AbstractCursor {
    private String[] mColumns;
    private List<? extends CacheItem> mContents;
    private int[] mIndexes;

    public RawCursor(List<? extends CacheItem> contents, String[] columns, ColumnMapper mapper) {
        this.mContents = contents;
        this.mColumns = columns;
        this.mIndexes = buildIndex(this.mColumns, mapper);
    }

    public int getCount() {
        return this.mContents.size();
    }

    public String[] getColumnNames() {
        return (String[]) this.mColumns.clone();
    }

    public String getString(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    public short getShort(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return (short) 0;
        }
        if (value instanceof Number) {
            return ((Number) value).shortValue();
        }
        return Short.parseShort(value.toString());
    }

    public int getInt(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return 0;
        }
        if (value instanceof Number) {
            return ((Number) value).intValue();
        }
        return Integer.parseInt(value.toString());
    }

    public long getLong(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return 0;
        }
        if (value instanceof Number) {
            return ((Number) value).longValue();
        }
        return Long.parseLong(value.toString());
    }

    public float getFloat(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return 0.0f;
        }
        if (value instanceof Number) {
            return ((Number) value).floatValue();
        }
        return Float.parseFloat(value.toString());
    }

    public double getDouble(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return 0.0d;
        }
        if (value instanceof Number) {
            return ((Number) value).doubleValue();
        }
        return Double.parseDouble(value.toString());
    }

    public boolean isNull(int column) {
        checkPosition();
        return ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false) == null;
    }

    private static int[] buildIndex(String[] columns, ColumnMapper mapper) {
        int[] indexes = new int[columns.length];
        for (int i = 0; i < columns.length; i++) {
            indexes[i] = mapper.getIndex(columns[i]);
        }
        return indexes;
    }

    public byte[] getBlob(int column) {
        checkPosition();
        Object value = ((CacheItem) this.mContents.get(this.mPos)).get(this.mIndexes[column], false);
        if (value == null) {
            return null;
        }
        if (value instanceof byte[]) {
            return (byte[]) value;
        }
        throw new IllegalArgumentException("not a blob");
    }

    public String getColumnName(int columnIndex) {
        return this.mColumns[columnIndex];
    }

    public int getType(int column) {
        checkPosition();
        return ((CacheItem) this.mContents.get(this.mPos)).getType(this.mIndexes[column]);
    }
}
