package com.alibaba.mtl.appmonitor.a;

import org.json.JSONObject;

/* compiled from: CountEvent */
public class b extends d {
    public int count;
    public double value;

    public synchronized void a(double d) {
        this.value += d;
        this.count++;
    }

    public synchronized JSONObject a() {
        JSONObject a;
        a = super.a();
        try {
            a.put("count", this.count);
            a.put("value", this.value);
        } catch (Exception e) {
        }
        return a;
    }

    public synchronized void fill(Object... params) {
        super.fill(params);
        this.value = 0.0d;
        this.count = 0;
    }
}
