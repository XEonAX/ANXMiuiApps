package com.xiaomi.stat.a;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.C0003d;
import com.xiaomi.stat.H;
import com.xiaomi.stat.HttpEvent;
import com.xiaomi.stat.I;
import com.xiaomi.stat.MiStatParams;
import com.xiaomi.stat.d.e;
import com.xiaomi.stat.d.r;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public class l {
    public String a;
    public String b;
    public String c;
    public H d;
    public long e;
    public String f;
    public boolean g;

    public static class a {
        public static final String A = "pc";
        public static final String B = "sts";
        public static final String C = "ets";
        private static final String D = "mistat_pa";
        private static final String E = "mistat_dau";
        private static final String F = "mistat_app_exception";
        private static final String G = "mistat_app_update";
        private static final String H = "mistat_signin";
        private static final String I = "mistat_signout";
        private static final String J = "mistat_net_monitor";
        private static final String K = "mistat_page_monitor";
        private static final String L = "mi_sai";
        private static final String M = "track";
        private static final String N = "track_signin";
        private static final String O = "profile_set";
        private static final String P = "fo";
        private static final String Q = "ia";
        private static final String R = "i1";
        private static final String S = "ib";
        private static final String T = "i2";
        private static final String U = "md";
        private static final String V = "ms";
        private static final String W = "ii";
        private static final String X = "mcm";
        private static final String Y = "mcs";
        private static final String Z = "bm";
        public static final int a = 30;
        private static final String aa = "bs";
        private static final String ab = "aa";
        private static final String ac = "ai";
        private static final String ad = "od";
        private static final String ae = "pg";
        private static final String af = "bt";
        private static final String ag = "et";
        private static final String ah = "sk";
        private static final String ai = "ek";
        private static final String aj = "et";
        private static final String ak = "em";
        private static final String al = "pvr";
        private static final String am = "ud";
        private static final String an = "ur";
        private static final String ao = "dt";
        private static final String ap = "rc";
        private static final String aq = "nf";
        private static final String ar = "ecn";
        private static final String as = "ve";
        public static final String b = "e";
        public static final String c = "eg";
        public static final String d = "tp";
        public static final String e = "ts";
        public static final String f = "ps";
        public static final String g = "eid";
        public static final String h = "mistat_basic";
        public static final String i = "mistat_user_page";
        public static final String j = "mistat_crash";
        public static final String k = "mistat_network";
        public static final String l = "mistat_plain_text";
        public static final String m = "mistat_delete_event";
        public static final String n = "mi_av";
        public static final String o = "mi_sv";
        public static final String p = "mi_ov";
        public static final String q = "mi_ob";
        public static final String r = "mi_n";
        public static final String s = "mi_rd";
        public static final String t = "mi_mf";
        public static final String u = "mi_m";
        public static final String v = "mi_os";
        public static final String w = "profile_";
        public static final String x = "ca";
        public static final String y = "c_";
        public static final String z = "rc";
    }

    private l() {
    }

    public static l a() {
        int i = 0;
        l lVar = new l();
        lVar.a = "mistat_dau";
        lVar.b = a.h;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H();
        boolean q = C0001b.q();
        if (q) {
            C0001b.e(false);
        }
        String str = C0003d.B;
        if (q) {
            i = 1;
        }
        h.putInt(str, i);
        Context a = I.a();
        h.putString(C0003d.C, e.b(a));
        h.putString(C0003d.D, e.c(a));
        h.putString(C0003d.E, e.e(a));
        h.putString(C0003d.F, e.f(a));
        h.putString(C0003d.G, e.h(a));
        h.putString(C0003d.H, e.i(a));
        h.putString("ii", e.d());
        h.putString(C0003d.J, e.k(a));
        h.putString(C0003d.K, e.l(a));
        h.putString(C0003d.L, e.n(a));
        h.putString("bs", e.o(a));
        h.putString(C0003d.O, e.q(a));
        h.putString("ai", e.p(a));
        h.putString(C0003d.P, e.x(a));
        lVar.d = h;
        a(lVar);
        return lVar;
    }

    private static void a(l lVar) {
        if (C0001b.e()) {
            lVar.g = true;
        } else {
            lVar.g = false;
        }
    }

    private static void a(l lVar, String str) {
        if (!TextUtils.isEmpty(str)) {
            lVar.f = str;
            lVar.d.putString("mi_sai", str);
        }
    }

    public static l a(String str, long j, long j2) {
        return a(str, j, j2, true, null, null);
    }

    public static l a(String str, long j, long j2, MiStatParams miStatParams, String str2) {
        return a(str, j, j2, false, miStatParams, str2);
    }

    private static l a(String str, long j, long j2, boolean z, MiStatParams miStatParams, String str2) {
        l lVar = new l();
        lVar.a = "mistat_pa";
        lVar.b = z ? a.h : a.i;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H(miStatParams);
        h.putString(C0003d.aa, str);
        h.putLong("bt", j);
        h.putLong("et", j2);
        lVar.d = h;
        a(lVar);
        if (!z) {
            a(lVar, str2);
        }
        return lVar;
    }

    public static l a(String str, String str2, MiStatParams miStatParams, String str3, boolean z) {
        boolean z2 = false;
        l lVar = new l();
        lVar.a = str;
        lVar.b = str2;
        lVar.c = "track";
        lVar.e = r.b();
        lVar.d = new H(miStatParams);
        if (C0001b.e()) {
            if (!z) {
                z2 = true;
            }
            lVar.g = z2;
        } else {
            lVar.g = false;
        }
        a(lVar, str3);
        return lVar;
    }

    public static l a(Throwable th, String str, boolean z, String str2) {
        l lVar = new l();
        lVar.a = "mistat_app_exception";
        lVar.b = a.j;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H();
        lVar.d = h;
        h.putString(C0003d.ah, str);
        h.putInt("et", z ? 1 : 0);
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        h.putString(C0003d.af, stringWriter.toString());
        h.putString(C0003d.ag, th.getMessage());
        a(lVar);
        a(lVar, str2);
        return lVar;
    }

    public static l a(MiStatParams miStatParams, boolean z, String str) {
        boolean z2 = false;
        l lVar = new l();
        lVar.c = "profile_set";
        lVar.e = r.b();
        lVar.d = new H(miStatParams);
        if (C0001b.e()) {
            if (!z) {
                z2 = true;
            }
            lVar.g = z2;
        } else {
            lVar.g = false;
        }
        a(lVar, str);
        return lVar;
    }

    public static l a(int i) {
        l lVar = new l();
        lVar.a = "mistat_app_update";
        lVar.b = a.h;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H();
        h.putInt(C0003d.S, i);
        lVar.d = h;
        a(lVar);
        return lVar;
    }

    public static l a(String str) {
        l lVar = new l();
        boolean isEmpty = TextUtils.isEmpty(str);
        lVar.a = isEmpty ? "mistat_signout" : "mistat_signin";
        lVar.b = a.h;
        lVar.c = "track_signin";
        lVar.e = r.b();
        H h = new H();
        if (!isEmpty) {
            h.putString(C0003d.t, str);
        }
        lVar.d = h;
        a(lVar);
        return lVar;
    }

    public static l a(HttpEvent httpEvent, String str) {
        l lVar = new l();
        lVar.a = "mistat_net_monitor";
        lVar.b = a.k;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H();
        h.putString("ur", httpEvent.getUrl());
        h.putLong(C0003d.Q, httpEvent.getTimeCost());
        h.putInt("rc", httpEvent.getResponseCode());
        h.putLong("nf", httpEvent.getNetFlow());
        h.putString("ecn", httpEvent.getExceptionName());
        lVar.d = h;
        a(lVar);
        a(lVar, str);
        return lVar;
    }

    public static l a(H h) {
        l lVar = new l();
        lVar.a = a.m;
        lVar.b = a.h;
        lVar.c = "track";
        lVar.e = r.b();
        lVar.d = h;
        a(lVar);
        return lVar;
    }

    public static l a(int i, int i2, long j, long j2) {
        l lVar = new l();
        lVar.a = "mistat_page_monitor";
        lVar.b = a.h;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H();
        h.putInt("rc", i);
        h.putInt(a.A, i2);
        h.putLong(a.B, j);
        h.putLong(a.C, j2);
        lVar.d = h;
        a(lVar);
        return lVar;
    }

    public static l a(String str, String str2, String str3) {
        l lVar = new l();
        lVar.a = str;
        lVar.b = a.l;
        lVar.c = "track";
        lVar.e = r.b();
        H h = new H();
        h.putString("ve", str2);
        lVar.d = h;
        a(lVar);
        a(lVar, str3);
        return lVar;
    }
}
