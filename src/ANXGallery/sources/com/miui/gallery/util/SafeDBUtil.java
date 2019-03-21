package com.miui.gallery.util;

import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;

public class SafeDBUtil {

    public interface QueryHandler<T> {
        T handle(Cursor cursor);
    }

    public static Uri safeInsert(Context context, Uri uri, ContentValues values) {
        try {
            return context.getContentResolver().insert(uri, values);
        } catch (Throwable e) {
            Log.w("SafeDBUtil", e);
            return null;
        }
    }

    public static int safeDelete(Context context, Uri uri, String where, String[] selectionArgs) {
        try {
            return context.getContentResolver().delete(uri, where, selectionArgs);
        } catch (Throwable e) {
            Log.w("SafeDBUtil", e);
            return -1;
        }
    }

    public static int safeUpdate(Context context, Uri uri, ContentValues values, String where, String[] selectionArgs) {
        try {
            return context.getContentResolver().update(uri, values, where, selectionArgs);
        } catch (Throwable e) {
            Log.w("SafeDBUtil", e);
            return -1;
        }
    }

    public static <T> T safeQuery(Context context, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder, QueryHandler<T> handler) {
        Cursor cursor = null;
        T handle;
        try {
            cursor = queryToCursor(context, uri, projection, selection, selectionArgs, sortOrder);
            handle = handler.handle(cursor);
            return handle;
        } catch (Throwable e) {
            handle = "SafeDBUtil";
            Log.w((String) handle, e);
            return handler.handle(null);
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    public static long safeInsert(SQLiteDatabase db, String tableName, ContentValues values) {
        try {
            return db.insert(tableName, null, values);
        } catch (Throwable e) {
            Log.w("SafeDBUtil", e);
            return -1;
        }
    }

    public static int safeUpdate(SQLiteDatabase db, String tableName, ContentValues values, String where, String[] selectionArgs) {
        try {
            return db.update(tableName, values, where, selectionArgs);
        } catch (Throwable e) {
            Log.w("SafeDBUtil", e);
            return -1;
        }
    }

    public static <T> T safeQuery(SQLiteDatabase db, String tableName, String[] projection, String selection, String[] selectionArgs, String sortOrder, QueryHandler<T> handler) {
        Cursor cursor = null;
        T handle;
        try {
            cursor = db.query(tableName, projection, selection, selectionArgs, null, null, sortOrder, null);
            handle = handler.handle(cursor);
            return handle;
        } catch (Throwable e) {
            handle = "SafeDBUtil";
            Log.w((String) handle, e);
            return handler.handle(null);
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private static Cursor queryToCursor(Context context, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        ContentProviderClient client = null;
        try {
            client = context.getContentResolver().acquireContentProviderClient(uri.getAuthority());
            ContentProvider provider = client.getLocalContentProvider();
            Cursor anonymousClass1;
            if (provider != null) {
                Cursor cursor = provider.query(uri, projection, selection, selectionArgs, sortOrder);
                if (cursor == null) {
                    releaseSilently(client);
                    return null;
                }
                final ContentProviderClient constClient = client;
                anonymousClass1 = new CursorWrapper(cursor) {
                    public void close() {
                        super.close();
                        SafeDBUtil.releaseSilently(constClient);
                    }
                };
                releaseSilently(client);
                return anonymousClass1;
            }
            releaseSilently(client);
            anonymousClass1 = context.getContentResolver().query(uri, projection, selection, selectionArgs, sortOrder);
            releaseSilently(client);
            return anonymousClass1;
        } catch (Throwable e) {
            Log.w("SafeDBUtil", e);
            return null;
        } finally {
            releaseSilently(client);
        }
    }

    private static void releaseSilently(ContentProviderClient client) {
        if (client != null) {
            try {
                client.release();
            } catch (Exception e) {
            }
        }
    }
}
