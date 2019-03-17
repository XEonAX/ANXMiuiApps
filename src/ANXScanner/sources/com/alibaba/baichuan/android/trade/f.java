package com.alibaba.baichuan.android.trade;

import android.app.Application;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;

final class f implements Runnable {
    final /* synthetic */ Application a;
    final /* synthetic */ AlibcTradeInitCallback b;

    f(Application application, AlibcTradeInitCallback alibcTradeInitCallback) {
        this.a = application;
        this.b = alibcTradeInitCallback;
    }

    public void run() {
        AlibcTradeSDK.b(this.a, this.b);
    }
}
