package com.alibaba.baichuan.trade.common.messagebus;

class a implements Runnable {
    final /* synthetic */ AlibcMessageListner a;
    final /* synthetic */ int b;
    final /* synthetic */ Object c;
    final /* synthetic */ a d;

    a(a aVar, AlibcMessageListner alibcMessageListner, int i, Object obj) {
        this.d = aVar;
        this.a = alibcMessageListner;
        this.b = i;
        this.c = obj;
    }

    public void run() {
        this.a.onMessageEvent(this.b, this.c);
    }
}
