package com.xiaomi.mistatistic.sdk.controller;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: PrefsHelper */
public class m {
    private static String a = null;
    private static String b = null;
    private static ExecutorService c = Executors.newSingleThreadExecutor();

    public static int a(Context context, String str, int i) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return default value: " + i);
            return i;
        }
        try {
            return context.getSharedPreferences(d(context), 0).getInt(str, i);
        } catch (Throwable e) {
            j.a("PPU", "getInt exception", e);
            return i;
        }
    }

    public static long a(Context context, String str, long j) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return default value: " + j);
            return j;
        }
        try {
            return context.getSharedPreferences(d(context), 0).getLong(str, j);
        } catch (Throwable e) {
            j.a("PPU", "getLong exception", e);
            return j;
        }
    }

    public static String a(Context context, String str, String str2) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return default value: " + str2);
            return str2;
        }
        try {
            return context.getSharedPreferences(d(context), 0).getString(str, str2);
        } catch (Throwable e) {
            j.a("PPU", "getString exception", e);
            return str2;
        }
    }

    public static boolean a(Context context, String str, boolean z) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return default value: false.");
            return z;
        }
        try {
            return context.getSharedPreferences(d(context), 0).getBoolean(str, z);
        } catch (Throwable e) {
            j.a("PPU", "getBoolean exception", e);
            return z;
        }
    }

    public static boolean a(Context context, String str) {
        boolean z = false;
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return default value: false.");
            return z;
        }
        try {
            return context.getSharedPreferences(d(context), 0).getBoolean(str, false);
        } catch (Throwable e) {
            j.a("PPU", "getBoolean exception", e);
            return z;
        }
    }

    public static void b(Context context, String str, int i) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so do nothing.");
            return;
        }
        try {
            Editor edit = context.getSharedPreferences(d(context), 0).edit();
            edit.putInt(str, i);
            a(edit);
        } catch (Throwable e) {
            j.a("PPU", "putInt exception", e);
        }
    }

    public static void b(Context context, String str, long j) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so do nothing.");
            return;
        }
        try {
            Editor edit = context.getSharedPreferences(d(context), 0).edit();
            edit.putLong(str, j);
            a(edit);
        } catch (Throwable e) {
            j.a("PPU", "putLong exception", e);
        }
    }

    public static void b(Context context, String str, String str2) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so do nothing.");
            return;
        }
        try {
            Editor edit = context.getSharedPreferences(d(context), 0).edit();
            edit.putString(str, str2);
            a(edit);
        } catch (Throwable e) {
            j.a("PPU", "putString exception", e);
        }
    }

    public static void b(Context context, String str, boolean z) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so do nothing.");
            return;
        }
        try {
            Editor edit = context.getSharedPreferences(d(context), 0).edit();
            edit.putBoolean(str, z);
            a(edit);
        } catch (Throwable e) {
            j.a("PPU", "putBoolean exception", e);
        }
    }

    public static boolean b(Context context, String str) {
        boolean z = false;
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return default value: false.");
            return z;
        }
        try {
            return context.getSharedPreferences(d(context), 0).contains(str);
        } catch (Throwable e) {
            j.a("PPU", "hasKey exception", e);
            return z;
        }
    }

    public static void c(Context context, String str, long j) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so do nothing.");
            return;
        }
        try {
            Editor edit = context.getSharedPreferences(c(context), 0).edit();
            edit.putLong(str, j);
            edit.apply();
        } catch (Throwable e) {
            j.a("PPU", "putLongForMonitor exception", e);
        }
    }

    public static long d(Context context, String str, long j) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return defaultValue");
            return j;
        }
        try {
            return context.getSharedPreferences(c(context), 0).getLong(str, j);
        } catch (Throwable e) {
            j.a("PPU", "getLongForMonitor exception", e);
            return j;
        }
    }

    public static void b(Context context) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so do nothing.");
            return;
        }
        try {
            context.getSharedPreferences(c(context), 0).edit().clear().apply();
        } catch (Throwable e) {
            j.a("PPU", "clearMonitors exception", e);
        }
    }

    private static void a(final Editor editor) {
        c.execute(new Runnable() {
            public void run() {
                if (!editor.commit()) {
                    Log.w(j.d("PPU"), "The commit of SharePref failed!");
                }
            }
        });
    }

    private static String c(Context context) {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        b = c(context, "mistat_monitor");
        return b;
    }

    private static String d(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        a = c(context, "mistat");
        return a;
    }

    private static String c(Context context, String str) {
        if (context == null) {
            Log.w(j.d("PPU"), "Context is null, so return a empty string ");
            return "";
        }
        String e = e(context);
        return !TextUtils.equals(e, context.getPackageName()) ? str + t.c(e) : str;
    }

    private static String e(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager.getRunningAppProcesses() != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == Process.myPid()) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return "";
    }
}
