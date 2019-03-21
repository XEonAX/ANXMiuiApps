package com.miui.gallery.provider.cache;

import android.database.Cursor;
import android.database.CursorWindow;
import android.text.TextUtils;

class ParseUtils {
    public static boolean putString(CursorWindow window, String value, int row, int column) {
        if (value == null) {
            return window.putNull(row, column);
        }
        return window.putString(value, row, column);
    }

    public static boolean putLong(CursorWindow window, Number value, int row, int column) {
        if (value == null) {
            return window.putNull(row, column);
        }
        return window.putLong(value.longValue(), row, column);
    }

    public static boolean putBlob(CursorWindow window, byte[] value, int row, int column) {
        if (value == null) {
            return window.putNull(row, column);
        }
        return window.putBlob(value, row, column);
    }

    public static String getString(Cursor cursor, int column) {
        if (cursor.isNull(column)) {
            return null;
        }
        return cursor.getString(column);
    }

    public static Long getLong(Cursor cursor, int column) {
        if (cursor.isNull(column)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(column));
    }

    public static Integer getInt(Cursor cursor, int column) {
        if (cursor.isNull(column)) {
            return null;
        }
        return Integer.valueOf(cursor.getInt(column));
    }

    public static Character getChar(Cursor cursor, int column) {
        if (cursor.isNull(column)) {
            return null;
        }
        String value = cursor.getString(column);
        if (TextUtils.isEmpty(value)) {
            return null;
        }
        return Character.valueOf(value.charAt(0));
    }

    public static byte[] getBlob(Cursor cursor, int column) {
        if (cursor.isNull(column)) {
            return null;
        }
        return cursor.getBlob(column);
    }
}
