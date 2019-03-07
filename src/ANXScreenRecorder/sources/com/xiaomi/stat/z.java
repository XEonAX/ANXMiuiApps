package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class z implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ MiStatParams b;
    final /* synthetic */ C0004e c;

    z(C0004e c0004e, boolean z, MiStatParams miStatParams) {
        this.c = c0004e;
        this.a = z;
        this.b = miStatParams;
    }

    public void run() {
        if (C0001b.a() && this.c.g(this.a)) {
            this.c.a(l.a(this.b, this.a, this.c.b));
        }
    }
}
