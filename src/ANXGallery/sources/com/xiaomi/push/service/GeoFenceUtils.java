package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.android.SharedPrefsCompat;

public class GeoFenceUtils {
    public static boolean checkMetoknlpVersionAbove(Context context) {
        return checkPackageVersionAbove(context, "com.xiaomi.metoknlp", 6);
    }

    public static boolean checkPackageVersionAbove(Context context, String packageName, int versionCode) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        if (packageInfo == null || packageInfo.versionCode < versionCode) {
            return false;
        }
        return true;
    }

    public static boolean isXMSFGeoWork(Context context) {
        return checkPackageVersionAbove(context, "com.xiaomi.xmsf", BaiduSceneResult.PALACE) && (checkPackageVersionAbove(context, "com.xiaomi.metok", 20) || checkPackageVersionAbove(context, "com.xiaomi.metoknlp", 6));
    }

    public static boolean verifyGeoChannel(Context context) {
        if (TextUtils.equals(context.getPackageName(), "com.xiaomi.xmsf")) {
            return true;
        }
        return false;
    }

    public static boolean canLocalCheck(Context context) {
        return checkMetoknlpVersionAbove(context);
    }

    public static void setGeoEnableSwitch(Context context, boolean isEnable) {
        Editor editor = context.getSharedPreferences("mipush_extra", 0).edit();
        editor.putBoolean("geo_switch", isEnable);
        SharedPrefsCompat.apply(editor);
    }

    public static boolean getGeoEnableSwitch(Context context) {
        return context.getSharedPreferences("mipush_extra", 4).getBoolean("geo_switch", false);
    }
}
