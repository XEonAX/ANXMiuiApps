package com.alibaba.mtl.appmonitor.a;

import com.alibaba.mtl.appmonitor.c.d;
import com.alibaba.mtl.appmonitor.c.e;
import com.alibaba.mtl.appmonitor.f.b;
import com.alibaba.wireless.security.open.nocaptcha.INoCaptchaComponent;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AlarmEvent */
public class a extends d {
    public int f = 0;
    public int g = 0;
    /* renamed from: g */
    public Map<String, String> f49g;
    public Map<String, Integer> h;

    public synchronized void e() {
        this.f++;
    }

    public synchronized void f() {
        this.g++;
    }

    public synchronized void a(String str, String str2) {
        int i = 100;
        synchronized (this) {
            if (!b.d(str)) {
                if (this.g == null) {
                    this.g = new HashMap();
                }
                if (this.h == null) {
                    this.h = new HashMap();
                }
                if (b.c(str2)) {
                    if (str2.length() <= 100) {
                        i = str2.length();
                    }
                    this.g.put(str, str2.substring(0, i));
                }
                if (this.h.containsKey(str)) {
                    this.h.put(str, Integer.valueOf(((Integer) this.h.get(str)).intValue() + 1));
                } else {
                    this.h.put(str, Integer.valueOf(1));
                }
            }
        }
    }

    public synchronized JSONObject a() {
        JSONObject a;
        a = super.a();
        try {
            a.put("successCount", this.f);
            a.put("failCount", this.g);
            if (this.h != null) {
                JSONArray jSONArray = (JSONArray) com.alibaba.mtl.appmonitor.c.a.a().a(d.class, new Object[0]);
                for (Entry entry : this.h.entrySet()) {
                    JSONObject jSONObject = (JSONObject) com.alibaba.mtl.appmonitor.c.a.a().a(e.class, new Object[0]);
                    String str = (String) entry.getKey();
                    jSONObject.put(INoCaptchaComponent.errorCode, str);
                    jSONObject.put("errorCount", entry.getValue());
                    if (this.g.containsKey(str)) {
                        jSONObject.put("errorMsg", this.g.get(str));
                    }
                    jSONArray.put(jSONObject);
                }
                a.put("errors", jSONArray);
            }
        } catch (Exception e) {
        }
        return a;
    }

    public synchronized void clean() {
        super.clean();
        this.f = 0;
        this.g = 0;
        if (this.g != null) {
            this.g.clear();
        }
        if (this.h != null) {
            this.h.clear();
        }
    }
}
