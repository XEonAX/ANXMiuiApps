package com.alibaba.mtl.appmonitor.d;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: AccurateSampling */
public class c extends a<JSONObject> {
    private Map<String, b> q = new HashMap();

    public c(int i) {
        super(i);
    }

    public void b(JSONObject jSONObject) {
        a(jSONObject);
    }

    public Boolean a(int i, Map<String, String> map) {
        if (map == null || this.q == null) {
            return null;
        }
        for (String str : this.q.keySet()) {
            if (!((b) this.q.get(str)).b((String) map.get(str))) {
                return null;
            }
        }
        return Boolean.valueOf(a(i));
    }
}
