package com.xiaomi.micloudsdk.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.miui.utils.SafeContentResolver;
import java.util.HashSet;

final class MiCloudSettingsV18 {
    private static final Uri BASE_URI = Uri.parse("content://com.xiaomi.micloudsdk.provider.MiCloudSettingsProvider");
    private static final HashSet<String> NEED_CATCH_EXCEPTION_PACKAGES = new HashSet(1);

    static {
        NEED_CATCH_EXCEPTION_PACKAGES.add("com.xiaomi.xmsf");
    }

    public static boolean putInt(Context context, String name, int value) {
        return putString(context, name, String.valueOf(value));
    }

    public static int getInt(Context context, String name, int def) {
        String valueString = getString(context, name);
        if (valueString == null) {
            return def;
        }
        try {
            return Integer.parseInt(valueString);
        } catch (NumberFormatException e) {
            return def;
        }
    }

    public static boolean putString(Context context, String name, String value) {
        ContentValues toInsert = new ContentValues();
        toInsert.put("micloud_settings_key", name);
        toInsert.put("micloud_settings_value", String.valueOf(value));
        return SafeContentResolver.insert(context, BASE_URI, toInsert) != null;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String getString(Context context, String name) {
        Cursor cursor = null;
        int i = 0;
        while (i < 3) {
            try {
                cursor = context.getContentResolver().query(BASE_URI, new String[]{name}, null, null, null);
                if (cursor == null || cursor.moveToFirst()) {
                    break;
                }
                cursor.close();
                Log.w("MiCloudSettings", "Error query for: " + name + ". Retry " + i);
                i++;
            } catch (Exception e) {
                Log.e("MiCloudSettings", "", e);
                if (cursor == null) {
                    return null;
                }
                cursor.close();
                return null;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        String string = cursor == null ? null : cursor.getString(0);
        if (cursor != null) {
            cursor.close();
        }
        return string;
    }
}
