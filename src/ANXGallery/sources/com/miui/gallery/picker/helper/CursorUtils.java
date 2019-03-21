package com.miui.gallery.picker.helper;

import android.database.Cursor;
import com.miui.gallery.adapter.BaseAdapter;

public class CursorUtils {
    public static String getSha1(Cursor cursor) {
        int index = cursor.getColumnIndex("sha1");
        if (index >= 0) {
            return cursor.getString(index);
        }
        throw new RuntimeException("key needed");
    }

    public static String getFaceId(Cursor cursor) {
        int index = cursor.getColumnIndex("serverId");
        if (index >= 0) {
            return cursor.getString(index);
        }
        throw new RuntimeException("key needed");
    }

    public static long getId(Cursor cursor) {
        int index = cursor.getColumnIndex("_id");
        if (index >= 0) {
            return cursor.getLong(index);
        }
        throw new RuntimeException("key needed");
    }

    public static long getFacePhotoId(Cursor cursor) {
        int index = cursor.getColumnIndex("photo_id");
        if (index >= 0) {
            return cursor.getLong(index);
        }
        throw new RuntimeException("key needed");
    }

    public static String getMimeType(Cursor cursor) {
        int index = cursor.getColumnIndex("mimeType");
        if (index >= 0) {
            return cursor.getString(index);
        }
        throw new RuntimeException("key needed");
    }

    public static String getMicroPath(Cursor cursor) {
        int microThumbIndex = cursor.getColumnIndex("alias_micro_thumbnail");
        int sha1Index = cursor.getColumnIndex("sha1");
        if (microThumbIndex >= 0 && sha1Index >= 0) {
            return BaseAdapter.getMicroPath(cursor, microThumbIndex, sha1Index);
        }
        throw new RuntimeException("key needed");
    }

    public static long getFileLength(Cursor cursor) {
        int index = cursor.getColumnIndex("size");
        if (index >= 0) {
            return cursor.getLong(index);
        }
        throw new RuntimeException("key needed");
    }
}
