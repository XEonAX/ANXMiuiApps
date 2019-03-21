package com.miui.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

public class SafeContentResolver {

    public interface Callback<T> {
        T call(Cursor cursor);
    }

    public static Uri insert(Context context, Uri uri, ContentValues values) {
        try {
            return context.getContentResolver().insert(uri, values);
        } catch (Exception e) {
            Log.e("SafeContentResolver", "", e);
            return null;
        }
    }

    public static int update(Context context, Uri uri, ContentValues values, String where, String[] selectionArgs) {
        try {
            return context.getContentResolver().update(uri, values, where, selectionArgs);
        } catch (Exception e) {
            Log.e("SafeContentResolver", "", e);
            return -1;
        }
    }

    public static <T> T query(Context context, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder, Callback<T> callback) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(uri, projection, selection, selectionArgs, sortOrder);
            T call = callback.call(cursor);
            if (cursor == null) {
                return call;
            }
            cursor.close();
            return call;
        } catch (Exception e) {
            Log.e("SafeContentResolver", "", e);
            if (cursor != null) {
                cursor.close();
            }
            return callback.call(null);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
