package com.alibaba.mtl.log.d;

import android.os.Process;
import android.util.Log;
import mtopsdk.common.util.SymbolExpUtil;

/* compiled from: Logger */
public class i {
    private static boolean K = false;
    private static boolean L = false;
    private static String ae = "UTAnalytics:";

    public static boolean k() {
        return K;
    }

    public static boolean l() {
        return L;
    }

    public static void setDebug(boolean isDebug) {
        L = isDebug;
    }

    public static void a(String str, Object... objArr) {
        if (L) {
            String str2 = ae + str;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("pid:").append(Process.myPid()).append(" ");
            if (objArr != null) {
                for (int i = 0; i < objArr.length; i++) {
                    if (objArr[i] != null) {
                        String obj = objArr[i].toString();
                        if (obj.endsWith(SymbolExpUtil.SYMBOL_COLON) || obj.endsWith(": ")) {
                            stringBuilder.append(obj);
                        } else {
                            stringBuilder.append(obj).append(",");
                        }
                    }
                }
            }
            Log.d(str2, stringBuilder.toString());
        }
    }

    public static void a(String str, Object obj, Throwable th) {
        if (l() || k()) {
            Log.w(str + ae, obj + "", th);
        }
    }

    public static void a(String str, Object obj) {
        if (l() || k()) {
            Log.w(str + ae, obj + "");
        }
    }

    public static void a(String str, String... strArr) {
        if (L) {
            String str2 = ae + str;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("pid:").append(Process.myPid()).append(" ");
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i++) {
                    if (strArr[i] != null) {
                        String str3 = strArr[i];
                        if (str3.endsWith(SymbolExpUtil.SYMBOL_COLON) || str3.endsWith(": ")) {
                            stringBuilder.append(str3);
                        } else {
                            stringBuilder.append(str3).append(",");
                        }
                    }
                }
            }
            Log.i(str2, stringBuilder.toString());
        }
    }
}
