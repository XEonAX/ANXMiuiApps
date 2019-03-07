package com.xiaomi.stat;

import com.xiaomi.stat.a.c;

/* renamed from: com.xiaomi.stat.i */
class C0008i implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ C0004e b;

    C0008i(C0004e c0004e, boolean z) {
        this.b = c0004e;
        this.a = z;
    }

    public void run() {
        int i = 2;
        if (C0001b.d(this.b.c)) {
            if (!(this.a || C0001b.e(this.b.c) == 2)) {
                c.a().a(this.b.c);
            }
            String b = this.b.c;
            if (this.a) {
                i = 1;
            }
            C0001b.a(b, i);
        }
    }
}
