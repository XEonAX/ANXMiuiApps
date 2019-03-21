package com.miui.gallery.preference;

import android.content.SharedPreferences;
import com.miui.gallery.util.StaticContext;
import java.util.Map;
import java.util.Set;

public class PreferenceHelper {
    private SharedPreferences mSharedPreferences;

    private static class SingletonHolder {
        private static PreferenceHelper sInstance = new PreferenceHelper();
    }

    private PreferenceHelper() {
        this.mSharedPreferences = StaticContext.sGetAndroidContext().getSharedPreferences("com.miui.gallery_preferences_new", 0);
    }

    public static SharedPreferences getPreferences() {
        return SingletonHolder.sInstance.mSharedPreferences;
    }

    public static void putLong(String key, long value) {
        getPreferences().edit().putLong(key, value).apply();
    }

    public static long getLong(String key, long defaultValue) {
        return getPreferences().getLong(key, defaultValue);
    }

    public static void putInt(String key, int value) {
        getPreferences().edit().putInt(key, value).apply();
    }

    public static int getInt(String key, int defaultValue) {
        return getPreferences().getInt(key, defaultValue);
    }

    public static void putString(String key, String value) {
        getPreferences().edit().putString(key, value).apply();
    }

    public static String getString(String key, String defaultValue) {
        return getPreferences().getString(key, defaultValue);
    }

    public static void putStringSet(String key, Set<String> value) {
        getPreferences().edit().putStringSet(key, value).apply();
    }

    public static Set<String> getStringSet(String key, Set<String> defaultValue) {
        return getPreferences().getStringSet(key, defaultValue);
    }

    public static void putBoolean(String key, boolean value) {
        getPreferences().edit().putBoolean(key, value).apply();
    }

    public static boolean getBoolean(String key, boolean defaultValue) {
        return getPreferences().getBoolean(key, defaultValue);
    }

    public static void putFloat(String key, float value) {
        getPreferences().edit().putFloat(key, value).apply();
    }

    public static boolean contains(String key) {
        return getPreferences().contains(key);
    }

    public static Map<String, ?> getAll() {
        return getPreferences().getAll();
    }

    public static void removeKey(String key) {
        getPreferences().edit().remove(key).apply();
    }
}
