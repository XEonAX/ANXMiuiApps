package com.alibaba.mtl.appmonitor.d;

import com.alibaba.mtl.appmonitor.f.b;
import com.alibaba.mtl.log.d.i;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AlarmSampling */
public class f extends g {
    String TAG = "AlarmSampling";
    private int o = 0;
    private int p = 0;

    public f(com.alibaba.mtl.appmonitor.a.f fVar, int i) {
        super(fVar, i);
        this.o = i;
        this.p = i;
    }

    public boolean a(int i, String str, String str2, Boolean bool, Map<String, String> map) {
        boolean z = true;
        i.a(this.TAG, "samplingSeed:", Integer.valueOf(i), "isSuccess:", bool, "successSampling:", Integer.valueOf(this.o), "failSampling:" + this.p);
        if (this.r != null) {
            h hVar = (h) this.r.get(str);
            if (hVar != null && (hVar instanceof d)) {
                return ((d) hVar).a(i, str2, bool, map);
            }
        }
        if (bool.booleanValue()) {
            return i < this.o;
        } else {
            if (i >= this.p) {
                z = false;
            }
            return z;
        }
    }

    public void b(JSONObject jSONObject) {
        a(jSONObject);
        c(jSONObject);
        this.r.clear();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("metrics");
            if (jSONArray != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < jSONArray.length()) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String string = jSONObject2.getString("module");
                        if (b.c(string)) {
                            h hVar = (h) this.r.get(string);
                            if (hVar == null) {
                                hVar = new d(string, this.o, this.p);
                                this.r.put(string, hVar);
                            }
                            hVar.b(jSONObject2);
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    protected void a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.o = this.n;
        this.p = this.n;
        try {
            Integer valueOf = Integer.valueOf(jSONObject.getInt("successSampling"));
            if (valueOf != null) {
                this.o = valueOf.intValue();
            }
            valueOf = Integer.valueOf(jSONObject.getInt("failSampling"));
            if (valueOf != null) {
                this.p = valueOf.intValue();
            }
        } catch (Exception e) {
        }
    }

    public void setSampling(int sampling) {
        super.setSampling(sampling);
        this.o = sampling;
        this.p = sampling;
    }
}
