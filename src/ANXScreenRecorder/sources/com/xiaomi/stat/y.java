package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class y implements Runnable {
    final /* synthetic */ Throwable a;
    final /* synthetic */ String b;
    final /* synthetic */ boolean c;
    final /* synthetic */ C0004e d;

    y(C0004e c0004e, Throwable th, String str, boolean z) {
        this.d = c0004e;
        this.a = th;
        this.b = str;
        this.c = z;
    }

    public void run() {
        if (C0001b.a() && this.d.g(false)) {
            this.d.a(l.a(this.a, this.b, this.c, this.d.b));
        }
    }
}
