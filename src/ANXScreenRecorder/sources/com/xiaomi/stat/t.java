package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class t implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ C0004e d;

    t(C0004e c0004e, String str, long j, long j2) {
        this.d = c0004e;
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    public void run() {
        if (C0001b.a() && this.d.g()) {
            this.d.a(l.a(this.a, this.b, this.c));
        }
    }
}
