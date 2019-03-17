package com.alibaba.baichuan.android.trade.c;

import com.alibaba.baichuan.android.trade.c.a.a;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback;

final class d implements Runnable {
    final /* synthetic */ AlibcTradeCallback a;
    final /* synthetic */ a b;

    d(AlibcTradeCallback alibcTradeCallback, a aVar) {
        this.a = alibcTradeCallback;
        this.b = aVar;
    }

    public void run() {
        this.a.onFailure(this.b.a, this.b.c);
    }
}
