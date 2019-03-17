package com.alipay.sdk.app;

import com.alipay.sdk.util.h;

public final class i {
    public static String a;

    private static void a(String str) {
        a = str;
    }

    private static String b() {
        return a;
    }

    public static String a() {
        j a = j.a(j.CANCELED.h);
        return a(a.h, a.i, "");
    }

    private static String c() {
        j a = j.a(j.DOUBLE_REQUEST.h);
        return a(a.h, a.i, "");
    }

    private static String d() {
        j a = j.a(j.PARAMS_ERROR.h);
        return a(a.h, a.i, "");
    }

    public static String a(int i, String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("resultStatus={").append(i).append("};memo={").append(str).append("};result={").append(str2).append(h.d);
        return stringBuilder.toString();
    }
}
