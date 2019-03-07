package com.miui.screenrecorder.tools;

import android.util.Log;

public class LogUtil {
    public static final int ASSERT = 6;
    public static final int DEBUG = 2;
    public static final int ERROR = 5;
    public static final int INFO = 3;
    public static final int LEVEL = 1;
    public static final int NOTHING = 7;
    public static final String TAG = "ScreenRecorderTag";
    public static final int VERBOSE = 1;
    public static final int WARN = 4;

    public static void v(String tag, String msg) {
        Log.v(tag, msg);
    }

    public static void v(String msg) {
        v(TAG, msg);
    }

    public static void d(String tag, String msg) {
        Log.d(tag, msg);
    }

    public static void d(String msg) {
        d(TAG, msg);
    }

    public static void i(String tag, String msg) {
        Log.i(tag, msg);
    }

    public static void i(String msg) {
        i(TAG, msg);
    }

    public static void w(String tag, String msg) {
        Log.w(tag, msg);
    }

    public static void w(String msg) {
        w(TAG, msg);
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
    }

    public static void e(String tag, String msg, Exception e) {
        Log.e(tag, msg, e);
    }

    public static void e(String msg) {
        e(TAG, msg);
    }

    public static void a(String tag, String msg) {
        Log.e(tag, msg);
    }

    public static void a(String msg) {
        a(TAG, msg);
    }
}
