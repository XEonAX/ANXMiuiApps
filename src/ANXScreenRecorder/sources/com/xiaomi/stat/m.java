package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class m implements Runnable {
    final /* synthetic */ HttpEvent a;
    final /* synthetic */ C0004e b;

    m(C0004e c0004e, HttpEvent httpEvent) {
        this.b = c0004e;
        this.a = httpEvent;
    }

    public void run() {
        if (C0001b.a() && this.b.g(false)) {
            this.b.a(l.a(this.a, this.b.b));
        }
    }
}
