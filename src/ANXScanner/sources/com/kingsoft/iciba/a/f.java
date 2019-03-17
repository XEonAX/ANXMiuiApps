package com.kingsoft.iciba.a;

import com.kingsoft.iciba.a.a.a;

final class f implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ a b;
    private /* synthetic */ e c;

    f(e eVar, String str, a aVar) {
        this.c = eVar;
        this.a = str;
        this.b = aVar;
    }

    public final void run() {
        synchronized (this.c.d) {
            this.c.d.add(new h(this.c, this.a, null, this.b));
            this.c.d.notify();
        }
    }
}
