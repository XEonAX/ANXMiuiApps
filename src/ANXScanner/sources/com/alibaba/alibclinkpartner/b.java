package com.alibaba.alibclinkpartner;

import android.app.Application;
import com.alibaba.alibclinkpartner.d.a.d;
import com.alibaba.alibclinkpartner.d.d.c;
import com.alibaba.alibclinkpartner.f.a;

public class b {
    public static c a;
    public static d b;
    public static a c;
    public static com.alibaba.alibclinkpartner.d.c.a d;
    public static com.alibaba.alibclinkpartner.d.b.b e;
    public static com.alibaba.alibclinkpartner.plugin.a f;
    private static Application g;
    private static com.alibaba.alibclinkpartner.param.b h;
    private static volatile boolean i = false;
    private static boolean j = false;
    private static int k = 1;
    private static volatile boolean l = true;
    private static volatile int m = 1;
    private static int n = 2;

    public static com.alibaba.alibclinkpartner.param.b a() {
        return h;
    }

    public static void a(int i) {
        n = i;
    }

    public static void a(Application application) {
        g = application;
    }

    public static void a(com.alibaba.alibclinkpartner.param.b bVar) {
        h = bVar;
    }

    public static void a(boolean z) {
        i = z;
    }

    public static void b(int i) {
        k = i;
    }

    public static void b(boolean z) {
        j = z;
    }

    public static boolean b() {
        return i;
    }

    public static void c(int i) {
        m = i;
    }

    public static void c(boolean z) {
        l = z;
    }

    public static boolean c() {
        return j;
    }

    public static String d() {
        return "1.1.0.0";
    }

    public static Application e() {
        return g;
    }

    public static int f() {
        return n;
    }

    public static int g() {
        return k;
    }

    public static int h() {
        return m;
    }

    public static boolean i() {
        return l;
    }
}
