package com.xiaomi.micloudsdk.utils;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class PrefUtils {
    public static void putLong(Context context, String key, Long value) {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editor.putLong(key, value.longValue());
        editor.commit();
    }

    public static Long getLong(Context context, String key, Long defaultValue) {
        return Long.valueOf(PreferenceManager.getDefaultSharedPreferences(context).getLong(key, defaultValue.longValue()));
    }

    public static void putInt(Context context, String key, Integer value) {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
        editor.putInt(key, value.intValue());
        editor.commit();
    }

    public static Integer getInt(Context context, String key, Integer defaultValue) {
        return Integer.valueOf(PreferenceManager.getDefaultSharedPreferences(context).getInt(key, defaultValue.intValue()));
    }
}
