package com.alibaba.mtl.appmonitor.c;

import org.json.JSONArray;

/* compiled from: ReuseJSONArray */
public class d extends JSONArray implements b {
    public void clean() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length()) {
                Object opt = opt(i2);
                if (opt != null && (opt instanceof b)) {
                    a.a().a((b) opt);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void fill(Object... params) {
    }
}
