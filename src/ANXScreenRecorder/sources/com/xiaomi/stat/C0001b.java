package com.xiaomi.stat;

import android.os.Looper;
import android.text.TextUtils;
import com.xiaomi.stat.d.m;

/* renamed from: com.xiaomi.stat.b */
public class C0001b {
    private static int A = 31;
    private static int B = 15;
    private static String[] C = null;
    private static final String D = ",";
    private static boolean E = false;
    private static boolean F = false;
    private static String G = null;
    private static boolean H = false;
    private static Object I = new Object();
    private static boolean J = false;
    public static final int a = -1;
    public static final int b = -1;
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = -1;
    public static final String g = "uploadInterval";
    public static final String h = "configNetwork";
    public static final String i = "configDelay";
    public static final String j = "time";
    public static final String k = "0.0";
    public static final String l = "0-0";
    public static final int m = 0;
    private static final String n = "pref_statistic_enabled";
    private static final String o = "pref_network_access_enabled";
    private static final String p = "pref_user_id";
    private static final String q = "pref_random_uuid";
    private static final String r = "pref_using_custom_policy_";
    private static final String s = "pref_custom_policy_state_";
    private static final String t = "pref_app_previous_version";
    private static final String u = "pref_is_first_usage";
    private static final String v = "pref_last_dau_event_time";
    private static final String w = "pref_all_sub_ids_data";
    private static final String x = "pref_instance_id";
    private static final String y = "pref_main_app_channel";
    private static final String z = "pref_instance_id_last_use_time";

    static {
        C0001b.n();
    }

    public static boolean a() {
        return A.a().a(n, true);
    }

    public static void a(boolean z) {
        A.a().b(n, z);
    }

    public static boolean b() {
        return A.a().a(o, true);
    }

    public static void b(boolean z) {
        A.a().b(o, z);
    }

    public static void c() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("don't call this on main thread");
        }
        long j = 5000;
        if (A.a().a(o)) {
            j = 1000;
        }
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }

    /* JADX WARNING: Missing block: B:16:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void d() {
        synchronized (I) {
            if (H) {
                return;
            }
            H = true;
            F = m.i();
            G = m.g();
            if (!(F || TextUtils.equals(G, "CN"))) {
                F = true;
            }
        }
    }

    public static boolean e() {
        if (!H) {
            C0001b.d();
        }
        return F;
    }

    public static void c(boolean z) {
        F = z;
    }

    public static void a(String str) {
        G = str;
    }

    public static String f() {
        return G;
    }

    public static boolean g() {
        return J;
    }

    public static void d(boolean z) {
        J = z;
    }

    public static String h() {
        return A.a().a(p, null);
    }

    public static void b(String str) {
        A.a().b(p, str);
    }

    public static void a(int i) {
        A = i;
    }

    public static int i() {
        return A;
    }

    public static void b(int i) {
        if (i <= 5) {
            i = 15;
        } else if (i > 86400) {
            i = 86400;
        }
        B = i;
    }

    public static int j() {
        return B;
    }

    public static void c(String str) {
        A.a().b(i, str);
    }

    public static String k() {
        return A.a().a(i, l);
    }

    public static void c(int i) {
        A.a().b(h, i);
    }

    public static int l() {
        return A.a().a(h, -1);
    }

    public static int m() {
        return A.a().a(g, -1);
    }

    public static void d(int i) {
        A.a().b(g, i);
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return A.a().a(r + str, false);
    }

    public static void a(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            A.a().b(r + str, z);
        }
    }

    public static int e(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return A.a().a(s + str, 0);
    }

    public static void a(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            A.a().b(s + str, i);
        }
    }

    public static void n() {
        Object a = A.a().a(w, null);
        if (!TextUtils.isEmpty(a)) {
            C = a.split(D);
        }
    }

    public static void f(String str) {
        int i;
        if (C != null) {
            String[] strArr = C;
            int length = strArr.length;
            i = 0;
            while (i < length) {
                if (!TextUtils.equals(str, strArr[i])) {
                    i++;
                } else {
                    return;
                }
            }
        }
        if (C == null) {
            A.a().b(w, str);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(C[0]);
        int length2 = C.length;
        for (i = 1; i < length2; i++) {
            stringBuilder.append(D).append(C[i]);
        }
        stringBuilder.append(D).append(str);
        A.a().b(w, stringBuilder.toString());
    }

    public static String[] o() {
        return C;
    }

    public static int p() {
        return A.a().a(t, -1);
    }

    public static void e(int i) {
        if (i > 0) {
            A.a().b(t, i);
        }
    }

    public static boolean q() {
        return A.a().a(u, true);
    }

    public static void e(boolean z) {
        A.a().b(u, z);
    }

    public static long r() {
        return A.a().a(v, -1);
    }

    public static void a(long j) {
        A.a().b(v, j);
    }

    public static String s() {
        return A.a().a(x, null);
    }

    public static void g(String str) {
        A.a().b(x, str);
    }

    public static String t() {
        return A.a().a(y, null);
    }

    public static void h(String str) {
        A.a().b(y, str);
    }

    public static boolean u() {
        return E;
    }

    public static void f(boolean z) {
        E = z;
    }

    public static long v() {
        return A.a().a(z, 0);
    }

    public static void b(long j) {
        A.a().b(z, j);
    }

    public static void i(String str) {
        A.a().b(q, str);
    }

    public static String w() {
        return A.a().a(q, null);
    }
}
