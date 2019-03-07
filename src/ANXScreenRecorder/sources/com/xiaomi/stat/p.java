package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class p implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ C0004e c;

    p(C0004e c0004e, String str, String str2) {
        this.c = c0004e;
        this.a = str;
        this.b = str2;
    }

    public void run() {
        if (C0001b.a() && this.c.g(false)) {
            this.c.a(l.a(this.a, this.b, this.c.b));
        }
    }
}
