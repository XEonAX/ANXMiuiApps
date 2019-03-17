package com.kingsoft.iciba.powerwordocrjar;

class s implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ boolean b;
    final /* synthetic */ n c;

    s(n nVar, String str, boolean z) {
        this.c = nVar;
        this.a = str;
        this.b = z;
    }

    public void run() {
        this.c.f = System.currentTimeMillis();
        j jVar = new j(0, this.a, this.c.a(this.a));
        jVar.e = this.b;
        jVar.a(this.c.l);
        h.a().a(jVar, this.c.l, true);
    }
}
