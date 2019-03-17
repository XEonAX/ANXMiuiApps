package com.alibaba.mtl.appmonitor.d;

import org.json.JSONObject;

/* compiled from: AbstractSampling */
public abstract class a<T extends JSONObject> {
    protected int n;

    public a(int i) {
        this.n = i;
    }

    protected void a(JSONObject jSONObject) {
        try {
            Integer valueOf = Integer.valueOf(jSONObject.getInt("sampling"));
            if (valueOf != null) {
                this.n = valueOf.intValue();
            }
        } catch (Exception e) {
        }
    }

    protected boolean a(int i) {
        return i < this.n;
    }
}
