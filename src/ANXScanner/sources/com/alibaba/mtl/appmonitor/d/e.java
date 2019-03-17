package com.alibaba.mtl.appmonitor.d;

import com.alibaba.mtl.log.d.i;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: AlarmMonitorPointSampling */
public class e extends i {
    private int o;
    private int p;

    public e(String str, int i, int i2) {
        super(str, 0);
        this.o = i;
        this.p = i2;
    }

    public boolean a(int i, Boolean bool, Map<String, String> map) {
        i.a("AlarmMonitorPointSampling", "samplingSeed:", Integer.valueOf(i), "isSuccess:", bool, "successSampling:", Integer.valueOf(this.o), "failSampling:", Integer.valueOf(this.p));
        if (!(this.e == null || map == null)) {
            for (c a : this.e) {
                Boolean a2 = a.a(i, map);
                if (a2 != null) {
                    return a2.booleanValue();
                }
            }
        }
        return a(i, bool.booleanValue());
    }

    protected boolean a(int i, boolean z) {
        if (z) {
            if (i < this.o) {
                return true;
            }
            return false;
        } else if (i >= this.p) {
            return false;
        } else {
            return true;
        }
    }

    public void b(JSONObject jSONObject) {
        super.b(jSONObject);
        this.o = this.n;
        this.p = this.n;
        try {
            Integer valueOf = Integer.valueOf(jSONObject.getInt("successSampling"));
            if (valueOf != null) {
                this.o = valueOf.intValue();
            }
            Integer valueOf2 = Integer.valueOf(jSONObject.getInt("failSampling"));
            if (valueOf2 != null) {
                this.p = valueOf2.intValue();
            }
            i.a("AlarmMonitorPointSampling", "[updateSelfSampling]", jSONObject, "successSampling:", valueOf, "failSampling", valueOf2);
        } catch (Exception e) {
        }
    }
}
