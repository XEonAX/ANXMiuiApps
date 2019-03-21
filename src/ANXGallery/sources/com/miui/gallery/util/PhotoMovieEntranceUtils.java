package com.miui.gallery.util;

import android.os.Build.VERSION;

public class PhotoMovieEntranceUtils {
    public static boolean isPhotoMovieAvailable() {
        return VERSION.SDK_INT >= 21 && !BuildUtil.isPad();
    }
}
