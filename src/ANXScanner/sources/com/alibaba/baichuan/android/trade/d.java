package com.alibaba.baichuan.android.trade;

import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;

final class d implements Runnable {
    final /* synthetic */ AlibcTradeInitCallback a;

    d(AlibcTradeInitCallback alibcTradeInitCallback) {
        this.a = alibcTradeInitCallback;
    }

    public void run() {
        this.a.onSuccess();
        for (AlibcTradeInitCallback onSuccess : a.pendingInitCallbacks) {
            onSuccess.onSuccess();
        }
        a.pendingInitCallbacks.clear();
        a.b();
    }
}
