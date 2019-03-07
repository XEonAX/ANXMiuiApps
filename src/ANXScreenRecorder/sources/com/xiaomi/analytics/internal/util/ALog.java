package com.xiaomi.analytics.internal.util;

import android.util.Log;

public class ALog {
    private static final String PREFIX = "Analytics-Api-";
    public static boolean sEnable = false;

    public static void d(String tag, String msg) {
        if (sEnable) {
            Log.d(addPrefix(tag), msg);
        }
    }

    public static void d(String tag, String msg, Throwable t) {
        if (sEnable) {
            Log.d(addPrefix(tag), msg, t);
        }
    }

    public static void e(String tag, String msg) {
        if (sEnable) {
            Log.e(addPrefix(tag), msg);
        }
    }

    public static void e(String tag, String msg, Throwable t) {
        if (sEnable) {
            Log.e(addPrefix(tag), msg, t);
        }
    }

    public static void w(String tag, String msg) {
        if (sEnable) {
            Log.w(addPrefix(tag), msg);
        }
    }

    public static void w(String tag, String msg, Throwable t) {
        if (sEnable) {
            Log.w(addPrefix(tag), msg, t);
        }
    }

    public static void i(String tag, String msg) {
        if (sEnable) {
            Log.i(addPrefix(tag), msg);
        }
    }

    public static void i(String tag, String msg, Throwable t) {
        if (sEnable) {
            Log.i(addPrefix(tag), msg, t);
        }
    }

    public static String addPrefix(String tag) {
        return PREFIX + tag;
    }
}
