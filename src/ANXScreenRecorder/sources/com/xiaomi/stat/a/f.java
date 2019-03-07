package com.xiaomi.stat.a;

import java.util.ArrayList;

class f implements Runnable {
    final /* synthetic */ ArrayList a;
    final /* synthetic */ c b;

    f(c cVar, ArrayList arrayList) {
        this.b = cVar;
        this.a = arrayList;
    }

    public void run() {
        this.b.b(this.a);
    }
}
