package com.xiaomi.stat.b;

import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.stat.A;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import com.xiaomi.stat.c.c;
import com.xiaomi.stat.d.a;
import com.xiaomi.stat.d.b;
import com.xiaomi.stat.d.d;
import com.xiaomi.stat.d.g;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.o;
import com.xiaomi.stat.d.r;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class h {
    private static final String a = "SecretKeyManager";
    private static final String b = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r";
    private static final String c = "sid";
    private static final String d = "sk";
    private static final String e = "rt";
    private static final String f = "rc";
    private static final String g = "request_history";
    private static final String h = "last_aes_content";
    private static final String i = "last_success_time";
    private static final String j = "4ef8b4ac42dbc3f95320b73ae0edbd43";
    private static final String k = "050f03d86eeafeb29cf38986462d957c";
    private static final int l = 1;
    private static final int m = 2;
    private static final String n = "1";
    private static final String o = "0";
    private static final int p = 7;
    private static final int q = 15;
    private static volatile h r = null;
    private Context s = I.a();
    private byte[] t;
    private byte[] u;
    private String v;

    private h() {
        d();
    }

    public static h a() {
        if (r == null) {
            synchronized (h.class) {
                if (r == null) {
                    r = new h();
                }
            }
        }
        return r;
    }

    private void d() {
        this.u = a.a();
        if (this.u == null || this.u.length <= 0) {
            this.u = a.a(k);
        }
        String concat = g.a(this.u, true).concat("_").concat(String.valueOf(r.b()));
        try {
            concat = g.a(concat.getBytes("utf-8"), true);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.t = a.a(a.a(concat), j);
    }

    public synchronized byte[] a(byte[] bArr) {
        byte[] bArr2;
        if (bArr == null) {
            k.b(a, "encrypt content is empty");
            bArr2 = null;
        } else {
            bArr2 = a.a(bArr, e());
        }
        return bArr2;
    }

    private String e() {
        String optString;
        CharSequence charSequence = null;
        if (VERSION.SDK_INT >= 18) {
            JSONObject g = g();
            if (g != null) {
                optString = g.optString("sk");
                charSequence = g.optString("sid");
                if (!TextUtils.isEmpty(optString) || TextUtils.isEmpty(charSequence)) {
                    return g.a(this.u, true);
                }
                return optString;
            }
        }
        optString = null;
        if (!TextUtils.isEmpty(optString)) {
        }
        return g.a(this.u, true);
    }

    public synchronized String b() {
        String str = null;
        synchronized (this) {
            CharSequence optString;
            if (VERSION.SDK_INT >= 18) {
                JSONObject g = g();
                if (g != null) {
                    String optString2 = g.optString("sid");
                    str = optString2;
                    optString = g.optString("sk");
                    if (TextUtils.isEmpty(str) || TextUtils.isEmpty(optString)) {
                        str = g.a(this.t, true);
                    }
                }
            }
            optString = null;
            str = g.a(this.t, true);
        }
        return str;
    }

    public synchronized void a(boolean z) {
        if (!C0001b.a() || !C0001b.b()) {
            k.c(a, "update abort: statistic or network is not enabled");
        } else if (l.a()) {
            int i = 1;
            while (i <= 3 && b(z) && i != 3) {
                try {
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                i++;
            }
        } else {
            k.b(a, "network not connected!");
        }
    }

    private boolean b(boolean z) {
        if (VERSION.SDK_INT < 18) {
            k.b(a, "under 4.3,use randomly generated key");
            return false;
        }
        if (j()) {
            k();
        }
        JSONObject g = g();
        if (g != null) {
            CharSequence optString = g.optString("sid");
            if (!(TextUtils.isEmpty(g.optString("sk")) || TextUtils.isEmpty(optString) || z)) {
                k.b(a, "key and sid already requested successfully in recent 7 days!");
                return false;
            }
        }
        g = h();
        long optLong = g.optLong(e);
        int optInt = g.optInt("rc");
        if (!r.b(optLong) || optInt < 15 || z) {
            return f();
        }
        k.b(a, "request count > max count today, skip...");
        return false;
    }

    private boolean f() {
        Throwable e;
        boolean z = false;
        try {
            byte[] a = a.a();
            String a2 = d.a(o.a(d.a(b), a));
            i();
            Map hashMap = new HashMap();
            hashMap.put("skey_rsa", a2);
            a2 = c.a(f.a().d(), hashMap, false);
            if (!TextUtils.isEmpty(a2)) {
                k.b(a, "result:" + a2);
                JSONObject jSONObject = new JSONObject(a2);
                a2 = jSONObject.optString("msg");
                int optInt = jSONObject.optInt("code");
                long optLong = jSONObject.optLong("curTime");
                jSONObject = jSONObject.optJSONObject("result");
                if (optInt == 1 && jSONObject != null) {
                    try {
                        String optString = jSONObject.optString("sid");
                        String a3 = a.a(jSONObject.optString("key"), a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("sk", a3);
                        jSONObject2.put("sid", optString);
                        this.v = jSONObject2.toString();
                        A.a().b("last_aes_content", b.a(this.s, jSONObject2.toString()));
                        A.a().b("last_success_time", optLong);
                        r.a(optLong);
                        return false;
                    } catch (Exception e2) {
                        e = e2;
                    }
                } else if (optInt == 2) {
                    k.b(a, "update secret-key failed: " + a2);
                }
            }
            return true;
        } catch (Throwable e3) {
            Throwable th = e3;
            z = true;
            e = th;
            k.e(a, "updateSecretKey e", e);
            return z;
        }
    }

    private JSONObject g() {
        Object a = A.a().a("last_aes_content", "");
        try {
            if (!TextUtils.isEmpty(a)) {
                String str;
                if (TextUtils.isEmpty(this.v)) {
                    String b = b.b(this.s, a);
                    this.v = b;
                    str = b;
                } else {
                    str = this.v;
                }
                return new JSONObject(str);
            }
        } catch (Throwable e) {
            k.e(a, "decodeFromAndroidKeyStore e", e);
        }
        return null;
    }

    private JSONObject h() {
        try {
            Object a = A.a().a("request_history", "");
            if (!TextUtils.isEmpty(a)) {
                return new JSONObject(a);
            }
        } catch (Throwable e) {
            k.e(a, "getRequestHistory e", e);
        }
        return new JSONObject();
    }

    private void i() {
        try {
            JSONObject h = h();
            long optLong = h.optLong(e);
            int optInt = h.optInt("rc");
            if (r.b(optLong)) {
                h.put("rc", optInt + 1);
            } else {
                h.put("rc", 1);
            }
            h.put(e, r.b());
            A.a().b("request_history", h.toString());
        } catch (Throwable e) {
            k.b(a, "updateSecretKey e", e);
        }
    }

    private boolean j() {
        long a = A.a().a("last_success_time", 0);
        return a != 0 && r.a(a, 604800000);
    }

    private void k() {
        A a = A.a();
        this.v = null;
        a.b("last_aes_content");
        a.b("last_success_time");
    }

    private synchronized boolean l() {
        boolean z = true;
        synchronized (this) {
            JSONObject g = g();
            if (g != null) {
                CharSequence optString = g.optString("sk");
                CharSequence optString2 = g.optString("sid");
                if (!(TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2))) {
                    z = false;
                }
            }
        }
        return z;
    }

    public String c() {
        if (VERSION.SDK_INT < 18 || l()) {
            return "1";
        }
        return "0";
    }
}
