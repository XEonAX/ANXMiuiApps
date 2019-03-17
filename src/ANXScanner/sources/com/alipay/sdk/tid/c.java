package com.alipay.sdk.tid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.alipay.sdk.encrypt.b;
import java.util.Random;
import org.json.JSONObject;

public final class c {
    public static final String a = "alipay_tid_storage";
    public static final String b = "tidinfo";
    public static final String c = "tidflag";
    public static final String d = "tid";
    public static final String e = "client_key";
    public static final String f = "timestamp";
    public static final String g = "vimei";
    public static final String h = "vimsi";
    public static final String i = "com.alipay.android.app.CASHIER_TID_CHANGED";
    public static final String o = "virtualImeiAndImsi";
    public static final String p = "virtual_imei";
    public static final String q = "virtual_imsi";
    private static Context r = null;
    private static c s;
    public String j;
    public String k;
    public long l;
    public String m;
    public String n;
    private boolean t = false;

    public static class a {
        private static boolean a(String str, String str2) {
            if (c.r == null) {
                return false;
            }
            return c.r.getSharedPreferences(str, 0).contains(str2);
        }

        private static void b(String str, String str2) {
            if (c.r != null) {
                c.r.getSharedPreferences(str, 0).edit().remove(str2).apply();
            }
        }

        private static String c(String str, String str2) {
            return a(str, str2, true);
        }

        public static String a(String str, String str2, boolean z) {
            if (c.r == null) {
                return null;
            }
            String string = c.r.getSharedPreferences(str, 0).getString(str2, null);
            if (TextUtils.isEmpty(string) || !z) {
                return string;
            }
            String a = b.a(2, string, b());
            if (TextUtils.isEmpty(a)) {
                a = b.a(2, string, "!@#23457");
                if (!TextUtils.isEmpty(a)) {
                    a(str, str2, a);
                }
            }
            if (!TextUtils.isEmpty(a)) {
                return a;
            }
            String.format("LocalPreference::getLocalPreferences failed %s，%s", new Object[]{string, r2});
            return a;
        }

        private static void b(String str, String str2, String str3) {
            a(str, str2, str3);
        }

        public static void a(String str, String str2, String str3) {
            if (c.r != null) {
                SharedPreferences sharedPreferences = c.r.getSharedPreferences(str, 0);
                Object a = b.a(1, str3, b());
                if (TextUtils.isEmpty(a)) {
                    String.format("LocalPreference::putLocalPreferences failed %s，%s", new Object[]{str3, r1});
                }
                sharedPreferences.edit().putString(str2, a).apply();
            }
        }

        private static String a() {
            return "!@#23457";
        }

        private static String b() {
            String str = "";
            try {
                str = c.r.getApplicationContext().getPackageName();
            } catch (Throwable th) {
            }
            if (TextUtils.isEmpty(str)) {
                str = "unknow";
            }
            return (str + "00000000").substring(0, 8);
        }
    }

    public static synchronized c a(Context context) {
        c cVar;
        String str = null;
        boolean z = false;
        synchronized (c.class) {
            if (s == null) {
                s = new c();
            }
            if (r == null) {
                c cVar2 = s;
                if (context != null) {
                    r = context.getApplicationContext();
                }
                if (!cVar2.t) {
                    String str2;
                    String a;
                    Long l;
                    String str3;
                    cVar2.t = true;
                    try {
                        String str4 = a;
                        str2 = c;
                        if (r != null) {
                            z = r.getSharedPreferences(str4, 0).contains(str2);
                        }
                        if (!z) {
                            a.a(a, c, "true");
                            b a2 = b.a();
                            str4 = a2.a;
                            str2 = a2.b;
                            Long valueOf = Long.valueOf(0);
                            a = a.a(o, p, false);
                            String a3 = a.a(o, q, false);
                            String.format("TidCompatible::SyncTid02: %s，%s，%s，%s，%s", new Object[]{str4, str2, valueOf, a, a3});
                            if (TextUtils.isEmpty(str4) || str4.length() == 64) {
                                if (TextUtils.isEmpty(a) && !TextUtils.isEmpty(a3)) {
                                    a = i();
                                }
                                if (!a(str4, str2, a, a3)) {
                                    cVar2.j = str4;
                                    cVar2.k = str2;
                                    cVar2.m = a;
                                    cVar2.n = a3;
                                    if (valueOf == null) {
                                        cVar2.l = System.currentTimeMillis();
                                    } else {
                                        cVar2.l = valueOf.longValue();
                                    }
                                    cVar2.o();
                                }
                            }
                        }
                    } catch (Exception e) {
                    }
                    Long valueOf2 = Long.valueOf(System.currentTimeMillis());
                    try {
                        Object a4 = a.a(a, b, true);
                        if (TextUtils.isEmpty(a4)) {
                            l = valueOf2;
                            str2 = str;
                            str3 = str;
                            a = str;
                        } else {
                            JSONObject jSONObject = new JSONObject(a4);
                            str3 = jSONObject.optString("tid", "");
                            try {
                                str2 = jSONObject.optString(e, "");
                                try {
                                    l = Long.valueOf(jSONObject.optLong("timestamp", System.currentTimeMillis()));
                                    try {
                                        a = jSONObject.optString(g, "");
                                        try {
                                            str = jSONObject.optString(h, "");
                                        } catch (Exception e2) {
                                        }
                                    } catch (Exception e3) {
                                        a = str;
                                    }
                                } catch (Exception e4) {
                                    l = valueOf2;
                                    a = str;
                                }
                            } catch (Exception e5) {
                                l = valueOf2;
                                str2 = str;
                                a = str;
                            }
                        }
                    } catch (Exception e6) {
                        l = valueOf2;
                        str2 = str;
                        str3 = str;
                        a = str;
                    }
                    new StringBuilder("TidStorage.load ").append(str3).append(" ").append(str2).append(" ").append(l).append(" ").append(a).append(" ").append(str);
                    if (a(str3, str2, a, str)) {
                        cVar2.d();
                    } else {
                        cVar2.j = str3;
                        cVar2.k = str2;
                        cVar2.l = l.longValue();
                        cVar2.m = a;
                        cVar2.n = str;
                    }
                }
            }
            cVar = s;
        }
        return cVar;
    }

    private void b(Context context) {
        String str = null;
        boolean z = false;
        if (context != null) {
            r = context.getApplicationContext();
        }
        if (!this.t) {
            String str2;
            String a;
            Long l;
            String str3;
            this.t = true;
            try {
                String str4 = a;
                str2 = c;
                if (r != null) {
                    z = r.getSharedPreferences(str4, 0).contains(str2);
                }
                if (!z) {
                    a.a(a, c, "true");
                    b a2 = b.a();
                    str4 = a2.a;
                    str2 = a2.b;
                    Long valueOf = Long.valueOf(0);
                    a = a.a(o, p, false);
                    String a3 = a.a(o, q, false);
                    String.format("TidCompatible::SyncTid02: %s，%s，%s，%s，%s", new Object[]{str4, str2, valueOf, a, a3});
                    if (TextUtils.isEmpty(str4) || str4.length() == 64) {
                        if (TextUtils.isEmpty(a) && !TextUtils.isEmpty(a3)) {
                            a = i();
                        }
                        if (!a(str4, str2, a, a3)) {
                            this.j = str4;
                            this.k = str2;
                            this.m = a;
                            this.n = a3;
                            if (valueOf == null) {
                                this.l = System.currentTimeMillis();
                            } else {
                                this.l = valueOf.longValue();
                            }
                            o();
                        }
                    }
                }
            } catch (Exception e) {
            }
            Long valueOf2 = Long.valueOf(System.currentTimeMillis());
            try {
                Object a4 = a.a(a, b, true);
                if (TextUtils.isEmpty(a4)) {
                    l = valueOf2;
                    str2 = str;
                    str3 = str;
                    a = str;
                } else {
                    JSONObject jSONObject = new JSONObject(a4);
                    str3 = jSONObject.optString("tid", "");
                    try {
                        str2 = jSONObject.optString(e, "");
                        try {
                            l = Long.valueOf(jSONObject.optLong("timestamp", System.currentTimeMillis()));
                            try {
                                a = jSONObject.optString(g, "");
                                try {
                                    str = jSONObject.optString(h, "");
                                } catch (Exception e2) {
                                }
                            } catch (Exception e3) {
                                a = str;
                            }
                        } catch (Exception e4) {
                            l = valueOf2;
                            a = str;
                        }
                    } catch (Exception e5) {
                        l = valueOf2;
                        str2 = str;
                        a = str;
                    }
                }
            } catch (Exception e6) {
                l = valueOf2;
                str2 = str;
                str3 = str;
                a = str;
            }
            new StringBuilder("TidStorage.load ").append(str3).append(" ").append(str2).append(" ").append(l).append(" ").append(a).append(" ").append(str);
            if (a(str3, str2, a, str)) {
                d();
                return;
            }
            this.j = str3;
            this.k = str2;
            this.l = l.longValue();
            this.m = a;
            this.n = str;
        }
    }

    public final String a() {
        new StringBuilder("TidStorage.getTid ").append(this.j);
        return this.j;
    }

    public final String b() {
        new StringBuilder("TidStorage.getClientKey ").append(this.k);
        return this.k;
    }

    private String f() {
        new StringBuilder("TidStorage.getVirtualImei ").append(this.m);
        return this.m;
    }

    private String g() {
        new StringBuilder("TidStorage.getVirtualImsi ").append(this.n);
        return this.n;
    }

    private void h() {
        Long l;
        String str;
        String str2;
        String str3;
        String str4 = null;
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        try {
            Object a = a.a(a, b, true);
            if (TextUtils.isEmpty(a)) {
                l = valueOf;
                str = str4;
                str2 = str4;
                str3 = str4;
            } else {
                JSONObject jSONObject = new JSONObject(a);
                str2 = jSONObject.optString("tid", "");
                try {
                    str = jSONObject.optString(e, "");
                    try {
                        l = Long.valueOf(jSONObject.optLong("timestamp", System.currentTimeMillis()));
                        try {
                            str3 = jSONObject.optString(g, "");
                            try {
                                str4 = jSONObject.optString(h, "");
                            } catch (Exception e) {
                            }
                        } catch (Exception e2) {
                            str3 = str4;
                        }
                    } catch (Exception e3) {
                        l = valueOf;
                        str3 = str4;
                    }
                } catch (Exception e4) {
                    l = valueOf;
                    str = str4;
                    str3 = str4;
                }
            }
        } catch (Exception e5) {
            l = valueOf;
            str = str4;
            str2 = str4;
            str3 = str4;
        }
        new StringBuilder("TidStorage.load ").append(str2).append(" ").append(str).append(" ").append(l).append(" ").append(str3).append(" ").append(str4);
        if (a(str2, str, str3, str4)) {
            d();
            return;
        }
        this.j = str2;
        this.k = str;
        this.l = l.longValue();
        this.m = str3;
        this.n = str4;
    }

    private static boolean a(String str, String str2, String str3, String str4) {
        return TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4);
    }

    public final boolean c() {
        return TextUtils.isEmpty(this.j) || TextUtils.isEmpty(this.k) || TextUtils.isEmpty(this.m) || TextUtils.isEmpty(this.n);
    }

    public final void d() {
        this.j = "";
        String toHexString = Long.toHexString(System.currentTimeMillis());
        if (toHexString.length() > 10) {
            toHexString = toHexString.substring(toHexString.length() - 10);
        }
        this.k = toHexString;
        this.l = System.currentTimeMillis();
        this.m = i();
        this.n = i();
        toHexString = a;
        String str = b;
        if (r != null) {
            r.getSharedPreferences(toHexString, 0).edit().remove(str).apply();
        }
    }

    private static String i() {
        return Long.toHexString(System.currentTimeMillis()) + (new Random().nextInt(9000) + 1000);
    }

    private static String j() {
        String toHexString = Long.toHexString(System.currentTimeMillis());
        if (toHexString.length() > 10) {
            return toHexString.substring(toHexString.length() - 10);
        }
        return toHexString;
    }

    private void k() {
        String.format("TidStorage::delete > %s，%s，%s，%s，%s", new Object[]{this.j, this.k, Long.valueOf(this.l), this.m, this.n});
        d();
    }

    private boolean l() {
        return c();
    }

    private Long m() {
        return Long.valueOf(this.l);
    }

    public final void a(String str, String str2) {
        new StringBuilder("tid=").append(str).append(",clientKey=").append(str2);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.j = str;
            this.k = str2;
            this.l = System.currentTimeMillis();
            o();
        }
    }

    private static void n() {
    }

    private void a(String str, String str2, String str3, String str4, Long l) {
        if (!a(str, str2, str3, str4)) {
            this.j = str;
            this.k = str2;
            this.m = str3;
            this.n = str4;
            if (l == null) {
                this.l = System.currentTimeMillis();
            } else {
                this.l = l.longValue();
            }
            o();
        }
    }

    private void o() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tid", this.j);
            jSONObject.put(e, this.k);
            jSONObject.put("timestamp", this.l);
            jSONObject.put(g, this.m);
            jSONObject.put(h, this.n);
            a.a(a, b, jSONObject.toString());
        } catch (Exception e) {
        }
    }

    private static boolean p() {
        String str = a;
        String str2 = c;
        if (r == null) {
            return false;
        }
        return r.getSharedPreferences(str, 0).contains(str2);
    }

    private void q() {
        boolean z;
        String str = a;
        String str2 = c;
        if (r == null) {
            z = false;
        } else {
            z = r.getSharedPreferences(str, 0).contains(str2);
        }
        if (!z) {
            a.a(a, c, "true");
            b a = b.a();
            str2 = a.a;
            String str3 = a.b;
            Long valueOf = Long.valueOf(0);
            str = a.a(o, p, false);
            String a2 = a.a(o, q, false);
            String.format("TidCompatible::SyncTid02: %s，%s，%s，%s，%s", new Object[]{str2, str3, valueOf, str, a2});
            if (TextUtils.isEmpty(str2) || str2.length() == 64) {
                if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(a2)) {
                    str = i();
                }
                if (!a(str2, str3, str, a2)) {
                    this.j = str2;
                    this.k = str3;
                    this.m = str;
                    this.n = a2;
                    if (valueOf == null) {
                        this.l = System.currentTimeMillis();
                    } else {
                        this.l = valueOf.longValue();
                    }
                    o();
                }
            }
        }
    }
}
