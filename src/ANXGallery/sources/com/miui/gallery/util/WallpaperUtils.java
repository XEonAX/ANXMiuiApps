package com.miui.gallery.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;

public class WallpaperUtils {
    private static String sWallpagerPackage;

    public static boolean supported(Context context) {
        if (sWallpagerPackage != null) {
            if (TextUtils.isEmpty(sWallpagerPackage)) {
                return false;
            }
            return true;
        } else if (resolve(context, "miui.intent.action.START_WALLPAPER_DETAIL", "com.android.thememanager", "com.android.thememanager.activity.WallpaperDetailActivity") != null && ContextCompat.checkSelfPermission(context, "miui.permission.USE_INTERNAL_GENERAL_API") == 0) {
            sWallpagerPackage = "com.android.thememanager";
            return true;
        } else if (resolve(context, "android.intent.action.ATTACH_DATA", "com.miui.home", "com.miui.home.launcher.setting.WallpaperPreviewActivity") != null) {
            sWallpagerPackage = "com.miui.home";
            return true;
        } else {
            sWallpagerPackage = "";
            return false;
        }
    }

    public static void setWallPapers(Context context, Uri dataUri, String mimeType) {
        if (supported(context)) {
            Intent intent;
            if (sWallpagerPackage == "com.android.thememanager") {
                intent = new Intent("miui.intent.action.START_WALLPAPER_DETAIL");
                intent.setComponent(new ComponentName("com.android.thememanager", "com.android.thememanager.activity.WallpaperDetailActivity"));
                intent.putExtra("Wallpaper_uri", dataUri.toString());
                intent.putExtra(":miui:starting_window_label", "");
            } else {
                intent = new Intent("android.intent.action.ATTACH_DATA");
                intent.setComponent(new ComponentName("com.miui.home", "com.miui.home.launcher.setting.WallpaperPreviewActivity"));
                intent.putExtra("Wallpaper_uri", dataUri.toString());
            }
            context.startActivity(intent);
            return;
        }
        Log.w("WallpaperUtils", "set wallpaper not supported");
    }

    private static Intent resolve(Context context, String action, String packageName, String className) {
        Intent intent = new Intent(action);
        intent.setComponent(new ComponentName(packageName, className));
        return intent.resolveActivityInfo(context.getPackageManager(), 0) != null ? intent : null;
    }
}
