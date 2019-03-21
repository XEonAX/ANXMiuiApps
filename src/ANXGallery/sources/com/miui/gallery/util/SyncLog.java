package com.miui.gallery.util;

public class SyncLog {
    public static void d(String tag, String msg) {
        Log.d(getFinalTag(tag), msg);
    }

    public static void d(String tag, Throwable e) {
        d(tag, "", (Object) e);
    }

    public static void d(String tag, String format, Object arg1) {
        Log.d(getFinalTag(tag), format, arg1);
    }

    public static void d(String tag, String format, Object arg1, Object arg2) {
        Log.d(getFinalTag(tag), format, arg1, arg2);
    }

    public static void d(String tag, String format, Object arg1, Object arg2, Object arg3) {
        Log.d(getFinalTag(tag), format, arg1, arg2, arg3);
    }

    public static void d(String tag, String format, Object... args) {
        Log.d(getFinalTag(tag), format, args);
    }

    public static void w(String tag, String msg) {
        Log.w(getFinalTag(tag), msg);
    }

    public static void w(String tag, String format, Object arg1) {
        Log.w(getFinalTag(tag), format, arg1);
    }

    public static void w(String tag, String format, Object arg1, Object arg2) {
        Log.w(getFinalTag(tag), format, arg1, arg2);
    }

    public static void e(String tag, String msg) {
        Log.e(getFinalTag(tag), msg);
    }

    public static void e(String tag, Throwable e) {
        Log.e(getFinalTag(tag), e);
    }

    public static void e(String tag, String format, Object arg1) {
        Log.e(getFinalTag(tag), format, arg1);
    }

    public static void e(String tag, String format, Object arg1, Object arg2) {
        Log.e(getFinalTag(tag), format, arg1, arg2);
    }

    public static void e(String tag, String format, Object arg1, Object arg2, Object arg3) {
        Log.e(getFinalTag(tag), format, arg1, arg2, arg3);
    }

    public static void v(String tag, String msg) {
        Log.v(getFinalTag(tag), msg);
    }

    public static void i(String tag, String msg) {
        Log.i(getFinalTag(tag), msg);
    }

    public static void i(String tag, String format, Object arg1) {
        Log.i(getFinalTag(tag), format, arg1);
    }

    public static void i(String tag, String format, Object arg1, Object arg2) {
        Log.i(getFinalTag(tag), format, arg1, arg2);
    }

    private static String getFinalTag(String tag) {
        return "SyncLog" + "_" + tag;
    }
}
