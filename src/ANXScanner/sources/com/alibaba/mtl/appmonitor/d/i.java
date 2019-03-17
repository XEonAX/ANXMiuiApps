package com.alibaba.mtl.appmonitor.d;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: MonitorPointSampling */
class i extends a<JSONObject> {
    protected List<c> e;
    private String p;

    public i(String str, int i) {
        super(i);
        this.p = str;
    }

    public boolean a(int i, Map<String, String> map) {
        if (!(this.e == null || map == null)) {
            for (c a : this.e) {
                Boolean a2 = a.a(i, map);
                if (a2 != null) {
                    return a2.booleanValue();
                }
            }
        }
        return a(i);
    }

    public void b(JSONObject jSONObject) {
        a(jSONObject);
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("extra");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    c cVar = new c(this.n);
                    if (this.e == null) {
                        this.e = new ArrayList();
                    }
                    this.e.add(cVar);
                    cVar.b(jSONObject2);
                }
            }
        } catch (Exception e) {
        }
    }
}
