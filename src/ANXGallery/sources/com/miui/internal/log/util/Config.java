package com.miui.internal.log.util;

import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.util.Log;
import java.io.File;
import miui.os.C0001Environment;
import miui.os.C0003ProcessUtils;
import miui.util.AppConstants;

public class Config {
    public static final String LOG_NAME;
    public static final String PACKAGE_NAME;
    private static final String TAG = "Config";
    private static final String hv = "/cache";
    private static final String hw = "/debug_log/";
    private static final String hx = "/dump";

    static {
        String packageName = getPackageName();
        String processNameByPid = C0003ProcessUtils.getProcessNameByPid(Process.myPid());
        if (packageName == null) {
            int indexOf = processNameByPid.indexOf(58);
            if (indexOf < 0) {
                packageName = processNameByPid;
            } else {
                packageName = processNameByPid.substring(0, indexOf);
            }
        }
        PACKAGE_NAME = packageName;
        LOG_NAME = processNameByPid;
    }

    public static String getDefaultCacheLogDir() {
        return getDefaultCacheLogDir(PACKAGE_NAME);
    }

    public static String getDefaultCacheLogDir(String str) {
        Context currentApplication = AppConstants.getCurrentApplication();
        if (currentApplication == null) {
            return n(str);
        }
        return h(currentApplication);
    }

    public static String getDefaultSdcardLogDir() {
        return getDefaultSdcardLogDir(PACKAGE_NAME);
    }

    public static String getDefaultSdcardLogDir(String str) {
        File externalStorageMiuiDirectory = C0001Environment.getExternalStorageMiuiDirectory();
        if (externalStorageMiuiDirectory != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(externalStorageMiuiDirectory.getPath());
            stringBuilder.append(hw);
            stringBuilder.append(str);
            stringBuilder.append(hx);
            return stringBuilder.toString();
        }
        Log.e(TAG, "Fail to getExternalStorageMiuiDirectory");
        return null;
    }

    private static String getPackageName() {
        Application currentApplication = AppConstants.getCurrentApplication();
        return currentApplication == null ? null : currentApplication.getPackageName();
    }

    private static String n(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/cache/debug_log/");
        stringBuilder.append(str);
        str = stringBuilder.toString();
        File file = new File(str);
        if (file.exists() || file.mkdirs() || file.exists()) {
            return str;
        }
        Log.e(TAG, "Fail to getSystemCacheLogDir");
        return null;
    }

    private static String h(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(cacheDir.getPath());
            stringBuilder.append(hw);
            return stringBuilder.toString();
        }
        Log.e(TAG, "Fail to getCacheDir");
        return null;
    }
}
