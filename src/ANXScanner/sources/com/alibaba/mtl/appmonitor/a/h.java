package com.alibaba.mtl.appmonitor.a;

import com.alibaba.mtl.appmonitor.c.b;
import java.util.HashMap;
import java.util.Map;

/* compiled from: UTEvent */
public class h implements b {
    public int e;
    public Map<String, String> n;
    public String u;
    public String v;
    public String w;
    public String x;

    public void clean() {
        this.u = null;
        this.e = 0;
        this.v = null;
        this.w = null;
        this.x = null;
        if (this.n != null) {
            this.n.clear();
        }
    }

    public void fill(Object... params) {
        if (this.n == null) {
            this.n = new HashMap();
        }
    }
}
