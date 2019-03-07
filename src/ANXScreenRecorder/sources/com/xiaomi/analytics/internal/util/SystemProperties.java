package com.xiaomi.analytics.internal.util;

import android.util.Log;

public class SystemProperties {
    private static final String TAG = "SystemProperties";

    public static String get(String key, String defValue) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{key, defValue});
        } catch (Exception e) {
            Log.e(ALog.addPrefix(TAG), "get e", e);
            return defValue;
        }
    }

    public static String get(String key) {
        return get(key, "");
    }
}
