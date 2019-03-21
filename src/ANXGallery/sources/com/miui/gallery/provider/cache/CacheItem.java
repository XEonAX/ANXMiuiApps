package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.CursorWindow;
import com.miui.gallery.provider.cache.Filter.FilterFactory;
import java.util.Comparator;

interface CacheItem {
    public static final Integer DEFAULT_INT = Integer.valueOf(0);
    public static final Long DEFAULT_LONG = Long.valueOf(0);
    public static final Long FALSE = Long.valueOf(0);
    public static final Long TRUE = Long.valueOf(1);

    public interface ColumnMapper {
        int getIndex(String str);
    }

    public interface Generator<T extends CacheItem> extends FilterFactory<T> {
        T from(long j, ContentValues contentValues);

        T from(Cursor cursor);

        String[] getProjection();

        void update(T t, ContentValues contentValues);
    }

    public interface Merger<T extends CacheItem> {
        T merge(T t, T t2, int i);
    }

    public interface QueryFactory<T extends CacheItem> extends FilterFactory<T> {
        Comparator<T> getComparator(int i, boolean z);

        ColumnMapper getMapper();

        Merger<T> getMerger(int i);
    }

    boolean fillWindow(CursorWindow cursorWindow, int i, int i2, int i3);

    Object get(int i, boolean z);

    int getType(int i);
}
