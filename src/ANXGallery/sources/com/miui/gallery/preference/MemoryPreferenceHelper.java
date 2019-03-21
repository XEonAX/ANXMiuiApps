package com.miui.gallery.preference;

import android.content.SharedPreferences;

public class MemoryPreferenceHelper {
    private SharedPreferences mSharedPreferences;

    private static class SingletonHolder {
        private static final MemoryPreferenceHelper INSTANCE = new MemoryPreferenceHelper();
    }

    private MemoryPreferenceHelper() {
        this.mSharedPreferences = new MemoryPreferencesImpl();
    }

    static SharedPreferences getPreferences() {
        return SingletonHolder.INSTANCE.mSharedPreferences;
    }

    public static void putInt(String key, int value) {
        getPreferences().edit().putInt(key, value).apply();
    }

    public static int getInt(String key, int defaultValue) {
        return getPreferences().getInt(key, defaultValue);
    }

    public static void putBoolean(String key, boolean value) {
        getPreferences().edit().putBoolean(key, value).apply();
    }

    public static boolean getBoolean(String key, boolean defaultValue) {
        return getPreferences().getBoolean(key, defaultValue);
    }

    public static void clear() {
        getPreferences().edit().clear().apply();
    }
}
