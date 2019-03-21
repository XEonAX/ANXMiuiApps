package com.miui.gallery.cloud;

import android.content.SharedPreferences;
import com.miui.gallery.GalleryApp;

public class CloudAlbumSortUtil {
    private static SharedPreferences sPref;

    private static SharedPreferences sGetDefaultPreferences() {
        if (sPref == null) {
            sPref = GalleryApp.sGetAndroidContext().getSharedPreferences("cloud_album_sort_factor", 0);
        }
        return sPref;
    }

    public static void sRemoveCloudAlbumSortByFactor() {
        sGetDefaultPreferences().edit().clear().apply();
    }
}
