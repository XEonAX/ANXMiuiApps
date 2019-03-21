package com.xiaomi.channel.commonutils.android;

import android.content.Context;
import android.preference.PreferenceManager;
import java.util.Map;

public abstract class PreferenceUtils {
    public static boolean getSettingBoolean(Context c, String key, boolean defaultValue) {
        checkProcess(c);
        return PreferenceManager.getDefaultSharedPreferences(c).getBoolean(key, defaultValue);
    }

    public static void setSettingBoolean(Context c, String key, boolean value) {
        checkProcess(c);
        PreferenceManager.getDefaultSharedPreferences(c).edit().putBoolean(key, value).commit();
    }

    public static void checkProcess(Context context) {
    }

    public static void putNotNullExtra(Map<String, String> extra, String key, String value) {
        if (extra != null && key != null && value != null) {
            extra.put(key, value);
        }
    }
}
