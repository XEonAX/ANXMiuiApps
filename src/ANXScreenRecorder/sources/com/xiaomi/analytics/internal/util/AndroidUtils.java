package com.xiaomi.analytics.internal.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.pm.Signature;
import java.io.File;
import java.util.List;

public class AndroidUtils {
    public static Context getApplicationContext(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return context;
        }
        return context.getApplicationContext();
    }

    public static boolean isForeground(Context context) {
        try {
            List<RunningTaskInfo> tasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
            if (!(tasks == null || tasks.isEmpty() || !((RunningTaskInfo) tasks.get(0)).topActivity.getPackageName().equals(context.getPackageName()))) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public static Signature[] getSignature(Context context, File apkFile) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(apkFile.getPath(), 64).signatures;
        } catch (Exception e) {
            return null;
        }
    }

    public static Signature[] getSignature(Context context, String packageName) {
        try {
            return context.getPackageManager().getPackageInfo(packageName, 64).signatures;
        } catch (Exception e) {
            return null;
        }
    }
}
