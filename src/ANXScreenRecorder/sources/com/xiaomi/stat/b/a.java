package com.xiaomi.stat.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.xiaomi.stat.A;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.I;
import com.xiaomi.stat.c.c;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.r;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import org.json.JSONObject;

public class a {
    private static final String a = "ConfigManager";
    private static final String b = "-";
    private static int c = 0;
    private static int d = 1;
    private static int e = 2;
    private static final String f = "config_request_count";
    private static final String g = "config_request_time";
    private static final String h = "config_success_requested";
    private static final int i = 1;
    private static final int j = 2;
    private static final int k = 0;
    private static final int l = -1;
    private static final int m = 0;
    private static final int n = 12;
    private static final String o = "t";
    private static final int p = 0;
    private static volatile a q = null;
    private int r = 0;
    private Context s = I.a();
    private String t;
    private BroadcastReceiver u = new b(this);

    private a() {
    }

    public static a a() {
        if (q == null) {
            synchronized (a.class) {
                if (q == null) {
                    q = new a();
                }
            }
        }
        return q;
    }

    public synchronized void a(boolean z, boolean z2) {
        int i = 0;
        synchronized (this) {
            if (!C0001b.a() || !C0001b.b()) {
                k.c(a, "update abort: statistic or network is not enabled");
            } else if (l.a()) {
                k.b(a, "updateConfig");
                if (!z2) {
                    k.b("MI_STAT_TEST", "updateConfig-InToday");
                    if (r.b(A.a().a(h, 0))) {
                        k.b(a, "Today has successfully requested key.");
                    } else if (c()) {
                        k.d(a, "config request to max count skip..");
                    }
                }
                if (!z || z2) {
                    a(0);
                } else {
                    String[] split = C0001b.k().split(b);
                    if (split.length > 1) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt2 > parseInt) {
                            i = new Random().nextInt(parseInt2 - parseInt) + parseInt;
                        }
                    }
                    a(i);
                }
            } else {
                k.b(a, "network is not connected!");
                this.r = 1;
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                this.s.registerReceiver(this.u, intentFilter);
            }
        }
    }

    private void a(int i) {
        if (i > 0) {
            try {
                Thread.sleep((long) (i * 1000));
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        b();
    }

    private String b() {
        String a;
        Throwable e;
        k.b(a, "requestConfigInner");
        this.t = f.a().b();
        try {
            Map treeMap = new TreeMap();
            treeMap.put(o, String.valueOf(e));
            treeMap.put("ai", I.b());
            a = c.a(this.t, treeMap, false);
            try {
                a(a);
            } catch (Exception e2) {
                e = e2;
                k.b(a, "requestConfigInner exception ", e);
                return a;
            }
        } catch (Throwable e3) {
            Throwable th = e3;
            a = null;
            e = th;
        }
        return a;
    }

    private void a(String str) {
        try {
            k.b(a, String.format("config result:%s", new Object[]{str}));
            d();
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("errorCode") == 0) {
                    long optLong = jSONObject.optLong(C0001b.j, 0);
                    A.a().b(h, optLong);
                    C0001b.c(jSONObject.optString(C0001b.i, C0001b.l));
                    C0001b.c(jSONObject.optInt(C0001b.h, -1));
                    C0001b.d(jSONObject.optInt(C0001b.g, 0) / 1000);
                    r.a(optLong);
                    f.a().a(jSONObject);
                    if (this.r == 1) {
                        this.s.unregisterReceiver(this.u);
                    }
                    this.r = 2;
                }
            }
        } catch (Throwable e) {
            k.e(a, "processResult exception", e);
        }
    }

    private boolean c() {
        long b = r.b();
        A a = A.a();
        try {
            if (!A.a().a(g)) {
                a.b(g, b);
                a.b(f, 1);
                return false;
            } else if (!r.b(a.a(g, 0))) {
                a.b(g, b);
                a.b(f, 0);
                return false;
            } else if (a.a(f, 0) >= 12) {
                return true;
            } else {
                return false;
            }
        } catch (Throwable e) {
            k.e(a, "isRequestCountReachMax exception", e);
            return false;
        }
    }

    private void d() {
        try {
            A a = A.a();
            a.b(f, a.a(f, 0) + 1);
        } catch (Throwable e) {
            k.e(a, "addRequestCount exception", e);
        }
    }
}
