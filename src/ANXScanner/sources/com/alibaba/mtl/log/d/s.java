package com.alibaba.mtl.log.d;

import java.util.Map;

/* compiled from: UTAdapter */
public class s {
    public static void send(Map<String, String> args) {
        try {
            Object a = o.a("com.ut.mini.UTAnalytics", "getInstance");
            if (a != null) {
                a = o.a(a, "getDefaultTracker");
                if (a != null) {
                    o.a(a, "send", new Object[]{args}, Map.class);
                }
            }
        } catch (Exception e) {
        }
    }
}
