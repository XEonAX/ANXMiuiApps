package com.xiaomi.mistatistic.sdk.controller.asyncjobs;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.f;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.controller.l.b;
import com.xiaomi.mistatistic.sdk.controller.m;
import com.xiaomi.mistatistic.sdk.controller.o;
import com.xiaomi.mistatistic.sdk.controller.s;
import com.xiaomi.mistatistic.sdk.controller.t;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RemoteDataUploadJob */
public class c implements com.xiaomi.mistatistic.sdk.controller.e.a {
    private a a;
    private String b;
    private int c;
    private int d = 0;
    private boolean e = false;

    /* compiled from: RemoteDataUploadJob */
    public interface a {
        void a(boolean z, String str, boolean z2);
    }

    public c(int i, String str, a aVar, int i2, boolean z) {
        this.d = i;
        this.a = aVar;
        this.b = str;
        this.c = i2;
        this.e = z;
    }

    public void execute() {
        int i = 1;
        try {
            int f = s.a().f();
            long e = s.a().e();
            Map treeMap = new TreeMap();
            Context a = d.a();
            String str = BuildSetting.isTestNetworkEnabled() ? "http://test.data.mistat.xiaomi.srv/mistats/v2" : "http://data.mistat.xiaomi.com/mistats/v2";
            t.a(a, str, treeMap);
            String c = this.e ? g.c(a) : g.a(a);
            if (this.e) {
                i = 0;
            } else if (BuildSetting.isInternationalBuild() || t.c()) {
                i = 2;
            }
            treeMap.put("channel", d.d());
            treeMap.put("device_id", c);
            treeMap.put("id_type", String.valueOf(i));
            treeMap.put("policy", String.valueOf(f));
            treeMap.put("interval", String.valueOf(e));
            j.a("RDUJ", String.format("upload policy:%d, upload interval:%d, mistat upload version:%d, upload %d events.", new Object[]{Integer.valueOf(f), Long.valueOf(e), Integer.valueOf(5), Integer.valueOf(this.c)}));
            CharSequence e2 = d.e();
            if (!TextUtils.isEmpty(e2)) {
                treeMap.put("version", e2);
            }
            j.b("RDUJ", String.format("stat_value:%s", new Object[]{this.b}));
            treeMap.put("stat_value", com.xiaomi.mistatistic.sdk.controller.c.a(this.b, a(d.b(), d.c(), c), a(c, d.c(), d.b())));
            treeMap.put("mistatv", String.valueOf(5));
            treeMap.put("size", String.valueOf(this.c));
            l.a(str, treeMap, new b() {
                public void a(String str) {
                    boolean z = false;
                    try {
                        z = c.this.a(str);
                    } catch (Throwable e) {
                        j.a("RDUJ", "Upload MiStat data failed: ", e);
                    }
                    c.this.a.a(z, c.this.b, c.this.e);
                }
            });
        } catch (Exception e3) {
            j.d("RDUJ", "RemoteDataUploadJob exception: " + e3.getMessage());
            this.a.a(false, this.b, this.e);
        }
    }

    private boolean a(String str) throws JSONException {
        j.c("RDUJ", "Upload complete, result: " + (str == null ? "" : str.trim()));
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("status");
                a(jSONObject);
                b(jSONObject);
                if ("ok".equals(string)) {
                    return true;
                }
                j.c("RDUJ", "result status isn't ok, " + string);
            } catch (Throwable e) {
                j.a("RDUJ", "parseUploadingResult exception ", e);
            }
        }
        return false;
    }

    private void a(JSONObject jSONObject) throws JSONException {
        Context a = d.a();
        if (jSONObject.has("data")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2.has("configVersion") && !jSONObject2.getString("configVersion").equals(m.a(a, "configVersion", "0.0"))) {
                f.a(a).a(false);
            }
        }
    }

    private void b(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("data")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            if (jSONObject2.has("delay")) {
                long j = jSONObject2.getLong("delay");
                if (this.d == 1) {
                    o.a(j);
                }
            }
        }
    }

    private String a(String str, String str2, String str3) {
        return t.b(String.format("seed:%s-%s-%s", new Object[]{str, str2, str3})).substring(0, 16);
    }
}
