package com.kingsoft.iciba.a;

import com.kingsoft.iciba.a.a.a;
import java.util.ArrayList;

final class g implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ ArrayList b;
    private /* synthetic */ a c;
    private /* synthetic */ e d;

    g(e eVar, String str, ArrayList arrayList, a aVar) {
        this.d = eVar;
        this.a = str;
        this.b = arrayList;
        this.c = aVar;
    }

    public final void run() {
        synchronized (this.d.d) {
            this.d.d.add(new h(this.d, this.a, this.b, this.c));
            this.d.d.notify();
        }
    }
}
