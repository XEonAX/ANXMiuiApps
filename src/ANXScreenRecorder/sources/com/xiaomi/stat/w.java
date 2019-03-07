package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class w implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;
    final /* synthetic */ MiStatParams d;
    final /* synthetic */ C0004e e;

    w(C0004e c0004e, String str, long j, long j2, MiStatParams miStatParams) {
        this.e = c0004e;
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = miStatParams;
    }

    public void run() {
        if (C0001b.a() && this.e.g(false)) {
            this.e.a(l.a(this.a, this.b - this.c, this.b, this.d, this.e.b));
        }
    }
}
