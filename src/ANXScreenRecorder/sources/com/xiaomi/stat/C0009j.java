package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

/* renamed from: com.xiaomi.stat.j */
class C0009j implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ C0004e c;

    C0009j(C0004e c0004e, int i, int i2) {
        this.c = c0004e;
        this.a = i;
        this.b = i2;
    }

    public void run() {
        if (C0001b.a() && this.c.g()) {
            C0001b.e(this.a);
            this.c.a(l.a(this.b));
        }
    }
}
