package com.miui.gallery.editor.photo.utils;

import android.content.Context;

public class MiscUtils {
    public static boolean isNightMode(Context context) {
        return context != null && (context.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
