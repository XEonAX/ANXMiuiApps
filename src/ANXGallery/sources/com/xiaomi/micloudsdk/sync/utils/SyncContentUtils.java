package com.xiaomi.micloudsdk.sync.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.utils.SafeContentResolver;
import com.miui.utils.SafeContentResolver.Callback;
import java.util.Locale;
import miui.cloud.AppConstants;

public class SyncContentUtils {
    private static final Uri PAUSE_EXCEPT_URI = Uri.parse("content://com.miui.micloud/sync_pause_except");
    private static final Uri PAUSE_URI = Uri.parse("content://com.miui.micloud/sync_pause");
    private static final Uri SYNC_RESULT_URI = Uri.parse("content://com.miui.micloud/sync_result");

    public enum Reason {
        SUCCESS(0, 0),
        UNKNOWN(-1, -1),
        NETWORK_DISALLOWED(1000, 1000),
        AUTH_TOKEN_ERROR(1001, 100),
        ACTIVATED_FAIL(1002, 1001),
        TIME_UNAVAILABLE(1003, BaiduSceneResult.SHOOTING),
        PERMISSION_LIMIT(-1, 1002),
        SECURE_SPACE_LIMIT(-1, 1003),
        SYNC_SOFT_ERROR(-1, 1),
        SYNC_HARD_ERROR(-1, 2),
        PRIVACY_ERROR(-1, 52003);
        
        final int v8;
        final int v9;

        private Reason(int v8, int v9) {
            this.v8 = v8;
            this.v9 = v9;
        }
    }

    public static void savePauseTime(Context context, String authority, long time) {
        Log.d("SyncContentUtils", "savePauseTime: authority: " + authority + ", time: " + time);
        ContentValues values = new ContentValues();
        values.put("authority", authority);
        values.put("resume_time", Long.valueOf(System.currentTimeMillis() + time));
        if (SafeContentResolver.update(context, PAUSE_URI, values, "authority='" + authority + "'", null) == 0) {
            SafeContentResolver.insert(context, PAUSE_URI, values);
        }
    }

    public static long loadResumeTime(Context context, String authority) {
        Log.d("SyncContentUtils", "loadResumeTime: authority: " + authority);
        String[] projection = new String[]{"resume_time"};
        String selection = "authority='" + authority + "'";
        return ((Long) SafeContentResolver.query(context, PAUSE_URI, projection, selection, null, null, new Callback<Long>() {
            public Long call(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst()) {
                    return Long.valueOf(cursor.getLong(0));
                }
                Log.e("SyncContentUtils", "loadResumeTime: error cursor is null or query fail");
                return Long.valueOf(0);
            }
        })).longValue();
    }

    public static void insertPauseExceptAuthority(Context context, String authority) {
        Log.d("SyncContentUtils", "insertPauseExceptAuthority: authority: " + authority);
        ContentValues values = new ContentValues();
        values.put("authority", authority);
        SafeContentResolver.insert(context, PAUSE_EXCEPT_URI, values);
    }

    public static boolean isPauseExceptAuthority(Context context, String authority) {
        Log.d("SyncContentUtils", "isPauseExceptAuthority: authority: " + authority);
        return ((Boolean) SafeContentResolver.query(context, PAUSE_EXCEPT_URI, new String[]{"param_is_sync_pause_except"}, null, new String[]{authority}, null, new Callback<Boolean>() {
            public Boolean call(Cursor cursor) {
                boolean z = true;
                if (cursor == null || !cursor.moveToFirst()) {
                    Log.e("SyncContentUtils", "loadResumeTime: error cursor is null or query fail");
                    return Boolean.valueOf(false);
                }
                if (cursor.getInt(0) != 1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        })).booleanValue();
    }

    public static void recordSyncResult(Context context, String authority, int code) {
        Log.d("SyncContentUtils", "recordSyncResult: authority: " + authority + ", code: " + code);
        if (code != -1) {
            ContentValues values = new ContentValues();
            values.put("authority", authority);
            values.put("code", Integer.valueOf(code));
            SafeContentResolver.update(context, SYNC_RESULT_URI, values, "authority='" + authority + "'", null);
        }
    }

    public static void recordSyncResult(Context context, String authority, Reason reason) {
        Log.d("SyncContentUtils", String.format(Locale.US, "record %s on %d", new Object[]{reason, AppConstants.MIUI_ROM_LEVEL.get(context)}));
        if (((Integer) AppConstants.MIUI_ROM_LEVEL.get(context)).intValue() > 8) {
            recordSyncResult(context, authority, reason.v9);
        } else {
            recordSyncResult(context, authority, reason.v8);
        }
    }
}
