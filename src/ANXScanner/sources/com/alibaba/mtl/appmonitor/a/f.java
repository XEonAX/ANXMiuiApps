package com.alibaba.mtl.appmonitor.a;

import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.mtl.log.d.i;

/* compiled from: EventType */
public enum f {
    ALARM(65501, 30, "alarmData", 5000),
    COUNTER(65502, 30, "counterData", 5000),
    OFFLINE_COUNTER(65133, 30, "counterData", 5000),
    STAT(65503, 30, "statData", 5000);
    
    static String TAG;
    private int e;
    private int h;
    private int i;
    private int j;
    private int k;
    private boolean m;
    private String t;

    public static f[] a() {
        return (f[]) ALARM.clone();
    }

    static {
        TAG = "EventType";
    }

    private f(int i, int i2, String str, int i3) {
        this.i = 25;
        this.j = Opcodes.GETFIELD;
        this.e = i;
        this.h = i2;
        this.m = true;
        this.t = str;
        this.k = i3;
    }

    /* renamed from: a */
    public int m4a() {
        return this.e;
    }

    public boolean isOpen() {
        return this.m;
    }

    public void b(boolean z) {
        this.m = z;
    }

    public int b() {
        return this.h;
    }

    public void b(int i) {
        i.a(TAG, "[setTriggerCount]", this.t, i + "");
        this.h = i;
    }

    public static f a(int i) {
        f[] a = a();
        for (f fVar : a) {
            if (fVar != null && fVar.a() == i) {
                return fVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public String m5a() {
        return this.t;
    }

    public int c() {
        return this.i;
    }

    public int d() {
        return this.j;
    }

    public void setStatisticsInterval(int statisticsInterval) {
        this.i = statisticsInterval;
        this.j = statisticsInterval;
    }

    public int e() {
        return this.k;
    }

    public void c(int i) {
        this.k = i;
    }
}
