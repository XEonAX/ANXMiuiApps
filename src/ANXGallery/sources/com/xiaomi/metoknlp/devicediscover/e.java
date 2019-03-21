package com.xiaomi.metoknlp.devicediscover;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: DeviceInfo */
final class e {
    private final long A;
    private final String B;
    private final String C;
    private final List D;
    private final String r;
    private final String s;
    private final String t;
    private final String u;
    private final double v;
    private final double w;
    private final String x;
    private final String y;
    private final long z;

    /* synthetic */ e(c cVar, h hVar) {
        this(cVar);
    }

    private e(c cVar) {
        this.r = cVar.r;
        this.s = cVar.s;
        this.t = cVar.t;
        this.u = cVar.u;
        this.v = cVar.v;
        this.w = cVar.w;
        this.x = cVar.x;
        this.y = cVar.y;
        this.z = cVar.z;
        this.A = cVar.A;
        this.B = cVar.B;
        this.C = cVar.C;
        this.D = cVar.D;
    }

    public JSONObject y() {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject, "m", this.r);
        a(jSONObject, "i", this.s);
        a(jSONObject, "a", this.t);
        a(jSONObject, "o", this.u);
        a(jSONObject, "lg", Double.valueOf(this.v));
        a(jSONObject, "lt", Double.valueOf(this.w));
        a(jSONObject, "am", this.x);
        a(jSONObject, "as", this.y);
        a(jSONObject, "ast", Long.valueOf(this.z));
        a(jSONObject, "ad", Long.valueOf(this.A));
        a(jSONObject, "ds", this.B);
        a(jSONObject, "dm", this.C);
        JSONArray jSONArray = new JSONArray();
        for (String put : this.D) {
            jSONArray.put(put);
        }
        a(jSONObject, "devices", jSONArray);
        return jSONObject;
    }

    private void a(JSONObject jSONObject, String str, Object obj) {
        if (jSONObject != null && obj != null) {
            if (!(obj instanceof String)) {
                try {
                    jSONObject.put(str, obj);
                } catch (JSONException e) {
                }
            } else if (!((String) obj).isEmpty()) {
                try {
                    jSONObject.put(str, obj);
                } catch (JSONException e2) {
                }
            }
        }
    }
}
