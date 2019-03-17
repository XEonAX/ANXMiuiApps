package com.alibaba.baichuan.trade.common.utils;

import android.util.Log;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import mtopsdk.common.util.SymbolExpUtil;

public class AlibcLogger {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static final String a = ("AliBC_Trade[" + AlibcTradeCommon.systemVersion + "]");

    /* JADX WARNING: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x004e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String a(String str, String str2) {
        String methodName;
        Exception e;
        StringBuffer stringBuffer;
        String str3 = "";
        String str4 = "";
        int i = -1;
        try {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            str3 = stackTrace[2].getClassName();
            methodName = stackTrace[2].getMethodName();
            try {
                i = stackTrace[2].getLineNumber();
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            Exception exception = e3;
            methodName = str4;
            e = exception;
            e.printStackTrace();
            stringBuffer = new StringBuffer();
            if (str == null) {
            }
            stringBuffer.append(str);
            stringBuffer.append(" -> [");
            stringBuffer.append(str3);
            stringBuffer.append(SymbolExpUtil.SYMBOL_DOT);
            stringBuffer.append(methodName);
            stringBuffer.append(SymbolExpUtil.SYMBOL_COLON);
            stringBuffer.append(i);
            stringBuffer.append("] ");
            if (str2 == null) {
            }
            stringBuffer.append(str2);
            return stringBuffer.toString();
        }
        stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(" -> [");
        stringBuffer.append(str3);
        stringBuffer.append(SymbolExpUtil.SYMBOL_DOT);
        stringBuffer.append(methodName);
        stringBuffer.append(SymbolExpUtil.SYMBOL_COLON);
        stringBuffer.append(i);
        stringBuffer.append("] ");
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        return stringBuffer.toString();
    }

    private static void a(int i, String str, String str2) {
    }

    public static void d(String str, String str2) {
        if (AlibcTradeCommon.isDebug()) {
            Log.d(a, a(str, str2));
        }
    }

    public static void e(String str, String str2) {
        if (AlibcTradeCommon.isDebug()) {
            Log.e(a, a(str, str2));
        }
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(a, a(str, str2), th);
    }

    public static void i(String str, String str2) {
        if (AlibcTradeCommon.isDebug()) {
            Log.i(a, a(str, str2));
        }
    }

    public static void tlogd(String str, String str2) {
        String a = a(str, str2);
        if (AlibcTradeCommon.isDebug()) {
            Log.d(a, a);
        }
        a(3, a, a);
    }

    public static void tloge(String str, String str2) {
        String a = a(str, str2);
        if (AlibcTradeCommon.isDebug()) {
            Log.e(a, a);
        }
        a(6, a, a);
    }

    public static void tloge(String str, String str2, Throwable th) {
        String a = a(str, str2);
        if (AlibcTradeCommon.isDebug()) {
            Log.e(a, a, th);
        }
        a(6, a, a + 10 + Log.getStackTraceString(th));
    }

    public static void tlogi(String str, String str2) {
        String a = a(str, str2);
        if (AlibcTradeCommon.isDebug()) {
            Log.i(a, a);
        }
        a(4, a, a);
    }

    public static void tlogw(String str, String str2) {
        String a = a(str, str2);
        if (AlibcTradeCommon.isDebug()) {
            Log.w(a, a);
        }
        a(5, a, a);
    }

    public static void tlogw(String str, String str2, Throwable th) {
        String a = a(str, str2);
        if (AlibcTradeCommon.isDebug()) {
            Log.w(a, a, th);
        }
        a(5, a, a + 10 + Log.getStackTraceString(th));
    }

    public static void w(String str, String str2) {
        if (AlibcTradeCommon.isDebug()) {
            Log.w(a, a(str, str2));
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (AlibcTradeCommon.isDebug()) {
            Log.w(a, a(str, str2), th);
        }
    }
}
