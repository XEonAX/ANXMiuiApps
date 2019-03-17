package com.alibaba.mtl.appmonitor.d;

import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.f.b;
import com.alibaba.mtl.log.d.i;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: EventTypeSampling */
class g extends a<JSONObject> {
    private f e;
    protected int q = -1;
    protected Map<String, h> r;

    public g(f fVar, int i) {
        super(i);
        this.e = fVar;
        this.r = Collections.synchronizedMap(new HashMap());
    }

    public boolean a(int i, String str, String str2, Map<String, String> map) {
        if (this.r != null) {
            h hVar = (h) this.r.get(str);
            if (hVar != null) {
                return hVar.a(i, str2, map);
            }
        }
        if (i < this.n) {
            return true;
        }
        return false;
    }

    public void b(JSONObject jSONObject) {
        a(jSONObject);
        c(jSONObject);
        this.r.clear();
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("metrics");
            if (optJSONArray != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < optJSONArray.length()) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                        String optString = jSONObject2.optString("module");
                        if (b.c(optString)) {
                            h hVar = (h) this.r.get(optString);
                            if (hVar == null) {
                                hVar = new h(optString, this.n);
                                this.r.put(optString, hVar);
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

    protected void c(JSONObject jSONObject) {
        i.a("EventTypeSampling", "[updateEventTypeTriggerCount]", this, jSONObject);
        if (jSONObject != null) {
            try {
                int optInt = jSONObject.optInt("cacheCount");
                if (optInt > 0 && this.e != null) {
                    this.e.b(optInt);
                }
            } catch (Throwable th) {
                i.a("EventTypeSampling", "updateTriggerCount", th);
            }
        }
    }

    public void setSampling(int sampling) {
        this.n = sampling;
    }
}
