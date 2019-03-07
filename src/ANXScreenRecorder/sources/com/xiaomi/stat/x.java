package com.xiaomi.stat;

import com.xiaomi.stat.a.l;

class x implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ MiStatParams d;
    final /* synthetic */ C0004e e;

    x(C0004e c0004e, boolean z, String str, String str2, MiStatParams miStatParams) {
        this.e = c0004e;
        this.a = z;
        this.b = str;
        this.c = str2;
        this.d = miStatParams;
    }

    public void run() {
        if (C0001b.a() && this.e.g(this.a)) {
            this.e.a(l.a(this.b, this.c, this.d, this.e.b, this.a));
        }
    }
}
