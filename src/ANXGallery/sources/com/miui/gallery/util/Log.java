package com.miui.gallery.util;

import android.util.Patterns;
import java.util.Arrays;
import java.util.Locale;

public class Log {
    private static int sLogLevel = 7;

    private static boolean needLog(int level) {
        return level >= sLogLevel;
    }

    public static void setLogLevel(int level) {
        sLogLevel = level;
    }

    public static void d(String tag, Object object) {
        if (needLog(3)) {
            android.util.Log.d(getFinalTag(tag), object.toString());
        }
    }

    public static void d(String tag, String msg) {
        if (needLog(3)) {
            android.util.Log.d(getFinalTag(tag), msg);
        }
    }

    public static void d(String tag, Throwable e) {
        if (needLog(3)) {
            d(tag, "", (Object) e);
        }
    }

    public static void d(String tag, String format, Object arg1) {
        if (needLog(3)) {
            android.util.Log.d(getFinalTag(tag), logFormat(format, arg1));
        }
    }

    public static void d(String tag, String format, Object arg1, Object arg2) {
        if (needLog(3)) {
            android.util.Log.d(getFinalTag(tag), logFormat(format, arg1, arg2));
        }
    }

    public static void d(String tag, String format, Object arg1, Object arg2, Object arg3) {
        if (needLog(3)) {
            android.util.Log.d(getFinalTag(tag), logFormat(format, arg1, arg2, arg3));
        }
    }

    public static void d(String tag, String format, Object... args) {
        if (needLog(3)) {
            android.util.Log.d(getFinalTag(tag), logFormat(format, args));
        }
    }

    public static void w(String tag, String msg) {
        if (needLog(5)) {
            android.util.Log.w(getFinalTag(tag), msg);
        }
    }

    public static void w(String tag, Throwable e) {
        if (needLog(5)) {
            w(tag, "", e);
        }
    }

    public static void w(String tag, String format, Object arg1) {
        if (needLog(5)) {
            android.util.Log.w(getFinalTag(tag), logFormat(format, arg1));
        }
    }

    public static void w(String tag, String format, Object arg1, Object arg2) {
        if (needLog(5)) {
            android.util.Log.w(getFinalTag(tag), logFormat(format, arg1, arg2));
        }
    }

    public static void w(String tag, String format, Object arg1, Object arg2, Object arg3) {
        if (needLog(5)) {
            android.util.Log.w(getFinalTag(tag), logFormat(format, arg1, arg2, arg3));
        }
    }

    public static void e(String tag, String msg) {
        if (needLog(6)) {
            android.util.Log.e(getFinalTag(tag), msg);
        }
    }

    public static void e(String tag, Throwable e) {
        android.util.Log.e(getFinalTag(tag), "", e);
    }

    public static void e(String tag, String format, Object arg1) {
        if (needLog(6)) {
            android.util.Log.e(getFinalTag(tag), logFormat(format, arg1));
        }
    }

    public static void e(String tag, String format, Object arg1, Object arg2) {
        if (needLog(6)) {
            android.util.Log.e(getFinalTag(tag), logFormat(format, arg1, arg2));
        }
    }

    public static void e(String tag, String format, Object arg1, Object arg2, Object arg3) {
        if (needLog(6)) {
            android.util.Log.e(getFinalTag(tag), logFormat(format, arg1, arg2, arg3));
        }
    }

    public static void e(String tag, String format, Object... args) {
        if (needLog(6)) {
            android.util.Log.e(getFinalTag(tag), logFormat(format, args));
        }
    }

    public static void v(String tag, String msg) {
        if (needLog(2)) {
            android.util.Log.v(getFinalTag(tag), msg);
        }
    }

    public static void v(String tag, String format, Object arg1) {
        if (needLog(2)) {
            android.util.Log.v(getFinalTag(tag), logFormat(format, arg1));
        }
    }

    public static void v(String tag, String format, Object arg1, Object arg2) {
        if (needLog(2)) {
            android.util.Log.v(getFinalTag(tag), logFormat(format, arg1, arg2));
        }
    }

    public static void i(String tag, String msg) {
        if (needLog(4)) {
            android.util.Log.i(getFinalTag(tag), msg);
        }
    }

    public static void i(String tag, String format, Object arg1) {
        if (needLog(4)) {
            android.util.Log.i(getFinalTag(tag), logFormat(format, arg1));
        }
    }

    public static void i(String tag, String format, Object arg1, Object arg2) {
        if (needLog(4)) {
            android.util.Log.i(getFinalTag(tag), logFormat(format, arg1, arg2));
        }
    }

    public static void i(String tag, String format, Object arg1, Object arg2, Object arg3) {
        if (needLog(4)) {
            android.util.Log.i(getFinalTag(tag), logFormat(format, arg1, arg2, arg3));
        }
    }

    public static void i(String tag, String format, Object... args) {
        if (needLog(4)) {
            android.util.Log.i(getFinalTag(tag), logFormat(format, args));
        }
    }

    private static String logFormat(String format, Object... args) {
        if (args == null) {
            return "";
        }
        for (int i = 0; i < args.length; i++) {
            if (args[i] instanceof String[]) {
                args[i] = prettyArray((String[]) args[i]);
            }
        }
        String msg = "";
        try {
            msg = String.format(Locale.US, format, args);
        } catch (Exception e) {
            android.util.Log.d("MiuiGallery2", "log error: the format is \"" + format + "\", the args is: " + Arrays.toString(args));
            e.printStackTrace();
        }
        StringBuilder sb = new StringBuilder(msg);
        if (args.length > 0 && (args[args.length - 1] instanceof Throwable)) {
            sb.append(filterSensitiveMsg(android.util.Log.getStackTraceString((Throwable) args[args.length - 1])));
        }
        return sb.toString();
    }

    private static String filterSensitiveMsg(String stackTrace) {
        if (stackTrace != null) {
            return Patterns.IP_ADDRESS.matcher(stackTrace).replaceAll("*.*.*.*");
        }
        return stackTrace;
    }

    private static String prettyArray(String[] array) {
        if (array.length == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        int len = array.length - 1;
        for (int i = 0; i < len; i++) {
            sb.append(array[i]);
            sb.append(", ");
        }
        sb.append(array[len]);
        sb.append("]");
        return sb.toString();
    }

    private static String getFinalTag(String tag) {
        return "MiuiGallery2" + "_" + tag;
    }
}
