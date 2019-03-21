package com.miui.gallery.preference;

import android.content.SharedPreferences;
import com.miui.gallery.GalleryApp;

public class ThumbnailPreference {
    private SharedPreferences mSharedPreferences;

    private static class SingletonHolder {
        private static ThumbnailPreference sInstance = new ThumbnailPreference();
    }

    private ThumbnailPreference() {
        this.mSharedPreferences = GalleryApp.sGetAndroidContext().getSharedPreferences("com.miui.gallery_thumbnails", 0);
    }

    private static SharedPreferences getPreferences() {
        return SingletonHolder.sInstance.mSharedPreferences;
    }

    public static void putThumbnailKey(String key) {
        getPreferences().edit().putString(key, "").commit();
    }

    public static boolean containsThumbnailKey(String key) {
        return getPreferences().contains(key);
    }

    public static boolean clear() {
        return getPreferences().edit().clear().commit();
    }
}
