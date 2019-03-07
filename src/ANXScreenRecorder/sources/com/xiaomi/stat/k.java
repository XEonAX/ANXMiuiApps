package com.xiaomi.stat;

import com.xiaomi.stat.a.l;
import com.xiaomi.stat.d.r;

class k implements Runnable {
    final /* synthetic */ C0004e a;

    k(C0004e c0004e) {
        this.a = c0004e;
    }

    public void run() {
        if (C0001b.a() && this.a.g()) {
            long b = r.b();
            if (this.a.a(C0001b.r(), b)) {
                C0001b.a(b);
                this.a.a(l.a());
            }
        }
    }
}
