package com.alibaba.mtl.log.d;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import com.alibaba.mtl.log.a;

/* compiled from: AppInfoUtil */
public class b {
    private static String ad = "";
    private static String g;

    public static String l() {
        String str = "";
        if (a.getContext() == null) {
            return str;
        }
        String str2;
        try {
            Object string = a.getContext().getSharedPreferences("UTCommon", 0).getString("_lun", "");
            str2 = !TextUtils.isEmpty(string) ? new String(c.decode(string.getBytes(), 2), "UTF-8") : str;
        } catch (Exception e) {
            str2 = str;
        }
        return str2;
    }

    public static String m() {
        if (a.getContext() == null) {
            return "";
        }
        String str = "";
        try {
            Object string = a.getContext().getSharedPreferences("UTCommon", 0).getString("_luid", "");
            if (TextUtils.isEmpty(string)) {
                return str;
            }
            return new String(c.decode(string.getBytes(), 2), "UTF-8");
        } catch (Exception e) {
            return str;
        }
    }

    public static String n() {
        return ad;
    }

    public static void m(String str) {
        i.a("AppInfoUtil", "[setChannle]", str);
        if (!TextUtils.isEmpty(str)) {
            int indexOf = str.indexOf("@");
            if (indexOf == -1) {
                ad = str;
            } else {
                ad = str.substring(0, indexOf);
            }
        }
    }

    public static String o() {
        return "";
    }

    public static String p() {
        return "";
    }

    public static String getAppkey() {
        return g;
    }

    public static void n(String str) {
        i.a("AppInfoUtil", "set Appkey:", str);
        g = str;
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            String packageName = context.getPackageName();
            for (RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(packageName)) {
                    if (runningAppProcessInfo.importance == 400) {
                        return false;
                    }
                    if (powerManager.isScreenOn()) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static String a(Context context) {
        if (context == null) {
            return "";
        }
        int myPid = Process.myPid();
        for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }
}
