package com.alibaba.baichuan.android.trade;

import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;

final class c implements Runnable {
    final /* synthetic */ AlibcTradeInitCallback a;

    c(AlibcTradeInitCallback alibcTradeInitCallback) {
        this.a = alibcTradeInitCallback;
    }

    public void run() {
        this.a.onSuccess();
    }
}
