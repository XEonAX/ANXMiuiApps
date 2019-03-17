package com.alibaba.mtl.appmonitor.a;

import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;
import com.alibaba.mtl.appmonitor.c.e;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Event */
public abstract class d implements b {
    public int e;
    public String o;
    public String p;
    public String s;

    public JSONObject a() {
        JSONObject jSONObject = (JSONObject) a.a().a(e.class, new Object[0]);
        try {
            jSONObject.put("page", this.o);
            jSONObject.put("monitorPoint", this.p);
            if (this.s != null) {
                jSONObject.put("arg", this.s);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public void clean() {
        this.e = 0;
        this.o = null;
        this.p = null;
        this.s = null;
    }

    public void fill(Object... params) {
        this.e = ((Integer) params[0]).intValue();
        this.o = (String) params[1];
        this.p = (String) params[2];
        if (params.length > 3 && params[3] != null) {
            this.s = (String) params[3];
        }
    }
}
