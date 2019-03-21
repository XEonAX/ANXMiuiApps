package miui.external;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;

public class SdkHelper {
    public static boolean isMiuiSystem() {
        return !TextUtils.isEmpty(getSystemProperty("ro.miui.ui.version.code", ""));
    }

    static String getApkPath(Context context, String packageName, String systemApkName) {
        if (context == null) {
            return guessApkPath(packageName, systemApkName);
        }
        PackageInfo pi = getPackageInfo(context, packageName);
        if (pi != null) {
            return pi.applicationInfo.publicSourceDir;
        }
        return null;
    }

    private static String guessApkPath(String packageName, String systemApkName) {
        String apkPath = guessDataApkPath(packageName);
        if (apkPath == null) {
            return guessSystemApkPath(systemApkName);
        }
        return apkPath;
    }

    private static String guessDataApkPath(String packageName) {
        return searchApkPath(new String[]{"/data/app/" + packageName + "-1.apk", "/data/app/" + packageName + "-2.apk", "/data/app/" + packageName + "-1/base.apk", "/data/app/" + packageName + "-2/base.apk"});
    }

    private static String guessSystemApkPath(String systemApkName) {
        return searchApkPath(new String[]{"/system/app/" + systemApkName + ".apk", "/system/priv-app/" + systemApkName + ".apk", "/system/app/" + systemApkName + "/" + systemApkName + ".apk", "/system/priv-app/" + systemApkName + "/" + systemApkName + ".apk"});
    }

    private static String searchApkPath(String[] paths) {
        for (String path : paths) {
            if (new File(path).exists()) {
                return path;
            }
        }
        return null;
    }

    static String getLibPath(Context context, String packageName) {
        if (context == null) {
            context = getSystemContext();
        }
        if (context == null) {
            return guessLibPath(packageName);
        }
        PackageInfo pi = getPackageInfo(context, packageName);
        if (pi != null) {
            return pi.applicationInfo.nativeLibraryDir;
        }
        return null;
    }

    private static String guessLibPath(String packageName) {
        return "/data/data/" + packageName + "/lib/";
    }

    private static PackageInfo getPackageInfo(Context context, String packageName) {
        PackageInfo pi = null;
        try {
            return context.getPackageManager().getPackageInfo(packageName, 128);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return pi;
        }
    }

    private static Context getSystemContext() {
        try {
            Class activityThreadCls = Class.forName("android.app.ActivityThread");
            return (Context) activityThreadCls.getDeclaredMethod("getSystemContext", new Class[0]).invoke(activityThreadCls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Exception e) {
            Log.e("miuisdk", "getSystemContext error", e);
            return null;
        }
    }

    private static String getSystemProperty(String key, String defValue) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{key, defValue});
        } catch (Exception e) {
            Log.e("miuisdk", "getSystemProperty error", e);
            return defValue;
        }
    }
}
