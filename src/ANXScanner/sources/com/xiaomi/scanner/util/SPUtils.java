package com.xiaomi.scanner.util;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xiaomi.scanner.app.ScannerApp;

public class SPUtils {
    private static final String DEFAULT_NAME = "SP_Name";

    public static void saveToLocal(String key, Object value) {
        Editor editor = ScannerApp.getAndroidContext().getSharedPreferences(DEFAULT_NAME, 0).edit();
        if (value instanceof String) {
            editor.putString(key, (String) value);
        } else if (value instanceof Integer) {
            editor.putInt(key, ((Integer) value).intValue());
        } else if (value instanceof Boolean) {
            editor.putBoolean(key, ((Boolean) value).booleanValue());
        }
        editor.apply();
    }

    public static boolean getLocalBoolean(String key, boolean value) {
        return ((Boolean) getLocalInternal(key, Boolean.valueOf(value))).booleanValue();
    }

    public static Integer getLocal(String key, int defaultValue) {
        return (Integer) getLocalInternal(key, Integer.valueOf(defaultValue));
    }

    private static Object getLocalInternal(String key, Object defaultValue) {
        SharedPreferences sp = ScannerApp.getAndroidContext().getSharedPreferences(DEFAULT_NAME, 0);
        if (defaultValue instanceof Integer) {
            return Integer.valueOf(sp.getInt(key, ((Integer) defaultValue).intValue()));
        }
        if (defaultValue instanceof Boolean) {
            return Boolean.valueOf(sp.getBoolean(key, ((Boolean) defaultValue).booleanValue()));
        }
        if (defaultValue instanceof String) {
            return sp.getString(key, (String) defaultValue);
        }
        return null;
    }
}
