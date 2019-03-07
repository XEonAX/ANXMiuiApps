package com.xiaomi.stat.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class p {
    private static final String a = "mi_stat_pref";
    private static SharedPreferences b = null;
    private static Editor c = null;
    private static final String d = "imei1";
    private static final String e = "imei2";
    private static final String f = "meid";
    private static final String g = "mac";
    private static final String h = "serial";
    private static final String i = "s_t";
    private static final String j = "l_t";
    private static final String k = "e_t";
    private static final String l = "od_checked";
    private static final String m = "od_v";
    private static final String n = "resued_old_instanced_id";

    private static void l(Context context) {
        if (c == null) {
            synchronized (p.class) {
                if (c == null) {
                    b = context.getSharedPreferences(a, 0);
                    c = b.edit();
                }
            }
        }
    }

    private static String a(Context context, String str, String str2) {
        l(context);
        return b.getString(str, str2);
    }

    private static void b(Context context, String str, String str2) {
        l(context);
        c.putString(str, str2).apply();
    }

    private static long a(Context context, String str, long j) {
        l(context);
        return b.getLong(str, j);
    }

    private static void b(Context context, String str, long j) {
        l(context);
        c.putLong(str, j).apply();
    }

    private static boolean a(Context context, String str, boolean z) {
        l(context);
        return b.getBoolean(str, z);
    }

    private static void b(Context context, String str, boolean z) {
        l(context);
        c.putBoolean(str, z).apply();
    }

    public static String a(Context context) {
        return a(context, d, "");
    }

    public static void a(Context context, String str) {
        b(context, d, str);
    }

    public static String b(Context context) {
        return a(context, e, "");
    }

    public static void b(Context context, String str) {
        b(context, e, str);
    }

    public static String c(Context context) {
        return a(context, f, "");
    }

    public static void c(Context context, String str) {
        b(context, f, str);
    }

    public static String d(Context context) {
        return a(context, g, "");
    }

    public static void d(Context context, String str) {
        b(context, g, str);
    }

    public static String e(Context context) {
        return a(context, h, "");
    }

    public static void e(Context context, String str) {
        b(context, h, str);
    }

    public static long f(Context context) {
        return a(context, i, 0);
    }

    public static void a(Context context, long j) {
        b(context, i, j);
    }

    public static long g(Context context) {
        return a(context, j, 0);
    }

    public static void b(Context context, long j) {
        b(context, j, j);
    }

    public static long h(Context context) {
        return a(context, k, 0);
    }

    public static void c(Context context, long j) {
        b(context, k, j);
    }

    public static boolean i(Context context) {
        return a(context, l, false);
    }

    public static void a(Context context, boolean z) {
        b(context, l, z);
    }

    public static String j(Context context) {
        return a(context, m, null);
    }

    public static void f(Context context, String str) {
        b(context, m, str);
    }

    public static boolean k(Context context) {
        return a(context, n, false);
    }

    public static void b(Context context, boolean z) {
        b(context, n, z);
    }
}
