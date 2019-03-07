package com.xiaomi.stat;

import android.content.Context;

public class I {
    private static Context a;
    private static String b;
    private static String c;

    public static void a(Context context, String str, String str2) {
        a = context;
        b = str;
        c = str2;
    }

    public static Context a() {
        return a;
    }

    public static String b() {
        return b;
    }

    public static String c() {
        return c;
    }
}
