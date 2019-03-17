package com.alibaba.baichuan.android.trade.c;

import com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback;

final class e implements Runnable {
    final /* synthetic */ AlibcTradeCallback a;
    final /* synthetic */ int b;
    final /* synthetic */ String c;

    e(AlibcTradeCallback alibcTradeCallback, int i, String str) {
        this.a = alibcTradeCallback;
        this.b = i;
        this.c = str;
    }

    public void run() {
        this.a.onFailure(this.b, this.c);
    }
}
