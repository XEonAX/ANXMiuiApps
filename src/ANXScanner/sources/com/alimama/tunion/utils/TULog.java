package com.alimama.tunion.utils;

import android.util.Log;
import mtopsdk.common.util.SymbolExpUtil;

public final class TULog {
    private static boolean a = false;

    private TULog() {
    }

    public static void enable(boolean z) {
        a = z;
    }

    public static void v(String str, Object... objArr) {
        if (a) {
            Log.v("TULog", a(str, objArr));
        }
    }

    public static void d(String str, Object... objArr) {
        if (a) {
            Log.d("TULog", a(str, objArr));
        }
    }

    public static void p(String str, Object... objArr) {
        if (a) {
            if (!(objArr == null || objArr.length == 0)) {
                str = String.format(str, objArr);
            }
            Log.d("TULog", str);
        }
    }

    public static void i(String str, Object... objArr) {
        if (a) {
            Log.i("TULog", a(str, objArr));
        }
    }

    public static void e(String str, Object... objArr) {
        Log.e("TULog", a(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        Log.e("TULog", a(str, objArr), th);
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf("TULog", a(str, objArr));
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (!(objArr == null || objArr.length == 0)) {
            str = String.format(str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str3 = "<unknown>";
        for (int i = 2; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClass().equals(TULog.class)) {
                str3 = stackTrace[i].getClassName();
                str3 = str3.substring(str3.lastIndexOf(46) + 1);
                str2 = str3.substring(str3.lastIndexOf(36) + 1) + SymbolExpUtil.SYMBOL_DOT + stackTrace[i].getMethodName();
                break;
            }
        }
        str2 = str3;
        return String.format("[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }
}
