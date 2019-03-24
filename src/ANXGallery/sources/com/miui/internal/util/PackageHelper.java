package com.miui.internal.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.component.module.ModuleUtils;
import java.io.File;
import miui.os.C0004SystemProperties;

public class PackageHelper {
    private static final String LOG_TAG = "miuisdk";
    public static final String MIUI_SYSTEM_APK_NAME = "miui";
    private static final String jx = "ro.miui.ui.version.code";

    private PackageHelper() {
    }

    public static boolean isMiuiSystem() {
        return TextUtils.isEmpty(C0004SystemProperties.get(jx, "")) ^ 1;
    }

    public static String getApkPath(Context context, String str, String str2) {
        if (context == null) {
            return j(str, str2);
        }
        PackageInfo a = a(context, str);
        if (a != null) {
            return a.applicationInfo.publicSourceDir;
        }
        return null;
    }

    private static String j(String str, String str2) {
        str = r(str);
        if (str == null) {
            return s(str2);
        }
        return str;
    }

    private static String r(String str) {
        String[] strArr = new String[4];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(str);
        stringBuilder.append("-1.apk");
        strArr[0] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(str);
        stringBuilder.append("-2.apk");
        strArr[1] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(str);
        stringBuilder.append("-1/base.apk");
        strArr[2] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/data/app/");
        stringBuilder.append(str);
        stringBuilder.append("-2/base.apk");
        strArr[3] = stringBuilder.toString();
        return a(strArr);
    }

    private static String s(String str) {
        String[] strArr = new String[4];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/system/app/");
        stringBuilder.append(str);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        strArr[0] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/system/priv-app/");
        stringBuilder.append(str);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        strArr[1] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/system/app/");
        stringBuilder.append(str);
        stringBuilder.append("/");
        stringBuilder.append(str);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        strArr[2] = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append("/system/priv-app/");
        stringBuilder.append(str);
        stringBuilder.append("/");
        stringBuilder.append(str);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        strArr[3] = stringBuilder.toString();
        return a(strArr);
    }

    private static String a(String[] strArr) {
        for (String str : strArr) {
            if (new File(str).exists()) {
                return str;
            }
        }
        return null;
    }

    public static String getLibPath(Context context, String str) {
        if (context == null) {
            context = getSystemContext();
        }
        if (context == null) {
            return t(str);
        }
        PackageInfo a = a(context, str);
        if (a != null) {
            return a.applicationInfo.nativeLibraryDir;
        }
        return null;
    }

    private static String t(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/data/data/");
        stringBuilder.append(str);
        stringBuilder.append("/lib/");
        return stringBuilder.toString();
    }

    private static PackageInfo a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 128);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Context getSystemContext() {
        try {
            Class cls = Class.forName("android.app.ActivityThread");
            return (Context) cls.getDeclaredMethod("getSystemContext", new Class[0]).invoke(cls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Throwable e) {
            Log.e("miuisdk", "getSystemContext error", e);
            return null;
        }
    }
}
