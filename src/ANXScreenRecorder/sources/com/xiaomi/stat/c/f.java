package com.xiaomi.stat.c;

import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.m;

public class f {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    private static final String e = "UploadPolicy";
    boolean d;
    private String f;

    public f(boolean z) {
        this.d = z;
        this.f = I.b();
    }

    public f(String str, boolean z) {
        this.d = z;
        this.f = str;
    }

    private int b() {
        boolean b = m.b(I.a());
        k.b("UploadPolicy getExperiencePlanPolicy: " + b + " isInternationalVersion= " + C0001b.e() + " isAnonymous= " + this.d);
        if (b) {
            return 3;
        }
        if (!C0001b.e()) {
            return 2;
        }
        if (this.d) {
            return 3;
        }
        return 2;
    }

    private int c() {
        int e = C0001b.e(this.f);
        k.b("UploadPolicy getCustomPrivacyPolicy: state=" + e);
        if (e == 1) {
            return 3;
        }
        return 1;
    }

    private int d() {
        if (C0001b.d(this.f)) {
            return c();
        }
        return b();
    }

    private int e() {
        int a = l.a(I.a());
        int l = a(C0001b.l()) ? C0001b.l() : C0001b.i();
        k.b("UploadPolicy getHttpServicePolicy: currentNet= " + a + " Config.getServerNetworkType= " + C0001b.l() + " Config.getUserNetworkType()= " + C0001b.i() + " (configNet & currentNet) == currentNet " + ((l & a) == a));
        if ((l & a) == a) {
            return 3;
        }
        return 1;
    }

    private boolean a(int i) {
        if ((i & -32) != 0) {
            return false;
        }
        return true;
    }

    private int f() {
        if (l.a(I.a()) == 8) {
            return 3;
        }
        return 1;
    }

    private int g() {
        if (C0001b.u() && c.a()) {
            return f();
        }
        return e();
    }

    public int a() {
        return Math.min(d(), g());
    }
}
