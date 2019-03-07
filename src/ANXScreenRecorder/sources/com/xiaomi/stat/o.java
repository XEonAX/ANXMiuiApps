package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class o implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ long c;
    final /* synthetic */ long d;
    final /* synthetic */ C0004e e;

    o(C0004e c0004e, int i, int i2, long j, long j2) {
        this.e = c0004e;
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
    }

    public void run() {
        if (C0001b.a() && this.e.g()) {
            this.e.a(l.a(this.a, this.b, this.c, this.d));
        }
    }
}
