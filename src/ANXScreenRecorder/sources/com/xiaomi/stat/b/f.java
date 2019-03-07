package com.xiaomi.stat.b;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import com.xiaomi.stat.A;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import com.xiaomi.stat.d.h;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.m;
import com.xiaomi.stat.d.r;
import java.util.HashMap;
import org.json.JSONObject;

public class f {
    private static final String a = "RDM";
    private static final Object b = new Object();
    private static final String c = "CN";
    private static final String d = "INTL";
    private static final String e = "IN";
    private static final String f = "data.mistat.xiaomi.com";
    private static final String g = "data.mistat.intl.xiaomi.com";
    private static final String h = "data.mistat.india.xiaomi.com";
    private static final String i = "region-url";
    private static final String j = "/map_domain";
    private static final String k = "region";
    private static HashMap<String, String> l = new HashMap();
    private static f r;
    private String m = c;
    private String n = f;
    private String o = null;
    private String p;
    private g q;

    static {
        l.put(c, f);
        l.put(d, g);
        l.put(e, h);
    }

    private f() {
        a(I.a());
    }

    public static f a() {
        if (r == null) {
            synchronized (b) {
                if (r == null) {
                    r = new f();
                }
            }
        }
        return r;
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("Cannot clone instance of this class");
    }

    private static void e() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            k.e(a, "can not init in main thread!", null);
        }
    }

    public void a(Context context) {
        e();
        this.q = new g();
        this.p = context.getFilesDir().getPath();
        if (C0001b.e()) {
            Object g = m.g();
            k.b(a, "[SystemRegion]:" + g);
            Object a = A.a().a("region", null);
            if (!TextUtils.isEmpty(g)) {
                this.m = g;
            }
            if (!TextUtils.isEmpty(a)) {
                this.m = a;
            }
            l = this.q.a(l, (HashMap) h.a(this.p.concat(j)));
            String str = (String) l.get(this.m);
            if (!TextUtils.isEmpty(str)) {
                this.n = str;
            }
        } else {
            this.m = c;
            this.n = f;
        }
        k.b(a, "[file-dir]:" + this.p + "\n[CurrentRegion]:" + this.m + "\n[domain]:" + this.n);
    }

    String b() {
        return b("get_all_config");
    }

    public String c() {
        return b("mistats/v3");
    }

    public String d() {
        return b("key_get");
    }

    private String b(String str) {
        String str2;
        int i = I.a().getApplicationInfo().targetSdkVersion;
        if (C0001b.e()) {
            str2 = "https://";
        } else if (VERSION.SDK_INT < 28 || i < 28) {
            str2 = "http://";
        } else {
            str2 = "https://";
        }
        return str2.concat(this.n).concat("/").concat(str);
    }

    public void a(String str) {
        d(str);
        c(str);
    }

    public void a(boolean z) {
        if (z) {
            Object obj;
            this.m = d;
            this.n = g;
            if (TextUtils.isEmpty(this.o)) {
                obj = this.m;
            } else {
                String obj2 = this.o;
            }
            if (!TextUtils.isEmpty(obj2)) {
                String str = (String) l.get(obj2);
                if (!TextUtils.isEmpty(str)) {
                    this.m = obj2;
                    this.n = str;
                    return;
                }
                return;
            }
            return;
        }
        this.m = c;
        this.n = f;
    }

    private boolean c(String str) {
        boolean z;
        if (l.keySet().contains(str)) {
            this.m = str;
            this.n = (String) l.get(this.m);
            z = true;
        } else {
            this.m = d;
            this.n = (String) l.get(this.m);
            k.d(a, "unknown region,set to unknown(singapore)'s domain");
            z = false;
        }
        A.a().b("region", str);
        return z;
    }

    private void d(String str) {
        this.o = str;
    }

    public void a(JSONObject jSONObject) {
        Object obj;
        HashMap a = this.q.a(i, jSONObject);
        if (TextUtils.isEmpty(this.o)) {
            obj = this.m;
        } else {
            String obj2 = this.o;
        }
        if (a != null) {
            l = this.q.a(l, a);
            if (!TextUtils.isEmpty(obj2)) {
                String str = (String) l.get(obj2);
                if (!TextUtils.isEmpty(str)) {
                    this.m = obj2;
                    this.n = str;
                }
            }
            h.a(l, this.p.concat(j));
        }
    }

    public boolean b(Context context) {
        return r.b(A.a().a("key_update_time", 0)) || !C0001b.e();
    }
}
