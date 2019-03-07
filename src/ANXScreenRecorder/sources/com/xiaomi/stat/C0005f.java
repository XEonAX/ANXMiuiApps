package com.xiaomi.stat;

import com.xiaomi.stat.a.c;
import com.xiaomi.stat.b.f;
import com.xiaomi.stat.d.e;

/* renamed from: com.xiaomi.stat.f */
class C0005f implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ boolean b;
    final /* synthetic */ C0004e c;

    C0005f(C0004e c0004e, String str, boolean z) {
        this.c = c0004e;
        this.a = str;
        this.b = z;
    }

    public void run() {
        e.a();
        if (this.c.a) {
            C0001b.h(this.a);
        }
        C0001b.d();
        f.a().a(C0001b.f());
        C0001b.a(this.c.c, this.b);
        if (!this.c.a) {
            C0001b.f(this.c.b);
        }
        this.c.f();
        c.a().b();
        com.xiaomi.stat.b.e.a().b().execute(new C0006g(this));
    }
}
