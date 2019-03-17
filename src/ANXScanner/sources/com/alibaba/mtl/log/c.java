package com.alibaba.mtl.log;

import java.util.Map;

/* compiled from: UTMCVariables */
public class c {
    public static final c a = new c();
    private String H = null;
    private String I = null;
    private String J = null;
    private String K = null;
    private Map<String, String> u = null;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private boolean y = false;
    private boolean z = false;

    public static c a() {
        return a;
    }

    public synchronized void e(String str) {
        this.I = str;
    }

    public synchronized void o() {
        this.y = true;
    }

    public synchronized boolean d() {
        return this.y;
    }

    public synchronized void c(Map<String, String> map) {
        this.u = map;
    }

    /* renamed from: a */
    public synchronized Map<String, String> m16a() {
        return this.u;
    }
}
