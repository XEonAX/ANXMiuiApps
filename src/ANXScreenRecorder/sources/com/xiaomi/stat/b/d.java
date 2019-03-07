package com.xiaomi.stat.b;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.stat.A;
import com.xiaomi.stat.C0000a;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.C0003d;
import com.xiaomi.stat.I;
import com.xiaomi.stat.c.c;
import com.xiaomi.stat.d.e;
import com.xiaomi.stat.d.g;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.r;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class d {
    private static final Object a = new Object();
    private static final String b = " http://data.mistat.xiaomi.com/idservice/deviceid_get";
    private static final String c = "DeviceIdManager";
    private static final String d = "ia";
    private static final String e = "ib";
    private static final String f = "md";
    private static final String g = "mm";
    private static final String h = "bm";
    private static final String i = "aa";
    private static final String j = "ai";
    private static final int k = 0;
    private static final int l = 1;
    private static final int m = 2;
    private static final int n = 3;
    private static final int o = 4;
    private static final int p = 5;
    private static final int q = 6;
    private static final int r = 1;
    private static final String s = "pref_key_device_id";
    private static final String t = "pref_key_restore_ts";
    private static d u;
    private String v = A.a().a(s, "");
    private Context w = I.a();

    private d() {
    }

    public static d a() {
        if (u == null) {
            synchronized (a) {
                if (u == null) {
                    u = new d();
                }
            }
        }
        return u;
    }

    public synchronized String b() {
        if (C0001b.e()) {
            this.v = e.d();
        } else if (!d()) {
            e();
        }
        return this.v;
    }

    public String c() {
        return this.v;
    }

    public String a(boolean z) {
        if (z) {
            return e.d();
        }
        String r = e.r(I.a());
        if (TextUtils.isEmpty(r)) {
            return e.d();
        }
        return r;
    }

    private void e() {
        if (!C0001b.a() || !C0001b.b()) {
            k.c(c, "request abort: statistic or network is not enabled");
        } else if (l.a()) {
            int i = 1;
            while (i <= 3 && f() && i != 3) {
                try {
                    Thread.sleep(10000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                i++;
            }
        } else {
            k.b(c, "network is not connected!");
        }
    }

    private boolean f() {
        try {
            Object a = c.a(b, h(), true);
            k.b(c, a);
            if (TextUtils.isEmpty(a)) {
                return true;
            }
            JSONObject jSONObject = new JSONObject(a);
            long optLong = jSONObject.optLong("timestamp");
            int optInt = jSONObject.optInt("code");
            String optString = jSONObject.optString("device_id");
            if (optInt != 1) {
                return true;
            }
            this.v = optString;
            A a2 = A.a();
            if (!TextUtils.isEmpty(this.v)) {
                a2.b(s, optString);
                a2.b(t, optLong);
            }
            r.a(optLong);
            return false;
        } catch (Throwable e) {
            k.b(c, "[getDeviceIdLocal IOException]:", e);
            return true;
        } catch (Throwable e2) {
            k.b(c, "[getDeviceIdLocal JSONException]:", e2);
            return true;
        }
    }

    public boolean d() {
        CharSequence a = A.a().a(s, null);
        return (TextUtils.isEmpty(a) || TextUtils.isEmpty(this.v) || !this.v.equals(a)) ? false : true;
    }

    private String[] g() {
        return new String[]{e.b(this.w), e.e(this.w), e.h(this.w), e.k(this.w), e.n(this.w), e.q(this.w), e.p(this.w)};
    }

    private HashMap<String, String> h() {
        HashMap<String, String> hashMap = new HashMap();
        String[] g = g();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ia", g[0]);
            jSONObject.put("ib", g[1]);
            jSONObject.put("md", g[2]);
            jSONObject.put(g, g[3]);
            jSONObject.put("bm", g[4]);
            jSONObject.put("aa", g[5]);
            jSONObject.put("ai", g[6]);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        k.b(c, "[pay-load]:" + jSONObject.toString());
        byte[] bArr = new byte[0];
        try {
            bArr = h.a().a(jSONObject.toString().getBytes("utf-8"));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        Object obj = null;
        if (bArr != null) {
            obj = com.xiaomi.stat.d.d.a(g.a(bArr, true).getBytes());
        }
        hashMap.put(C0003d.b, C0000a.g);
        String str = C0003d.e;
        if (obj == null) {
            obj = "";
        }
        hashMap.put(str, obj);
        hashMap.put("ai", I.b());
        hashMap.put(C0003d.aj, "0");
        hashMap.put(C0003d.ak, h.a().c());
        hashMap.put(C0003d.g, h.a().b());
        return hashMap;
    }
}
