package com.alibaba.baichuan.android.trade.page;

class d implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ c b;

    d(c cVar, String str) {
        this.b = cVar;
        this.a = str;
    }

    public void run() {
        this.b.i.a(this.b.b, this.b.c, this.b.d, this.b.e, this.b.i.getAddParamsUrl(this.a, this.b.f, this.b.a), this.b.g, this.b.a, this.b.h.isProxyWebview());
    }
}
