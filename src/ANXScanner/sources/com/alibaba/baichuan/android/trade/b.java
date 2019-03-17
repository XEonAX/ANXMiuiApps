package com.alibaba.baichuan.android.trade;

import android.app.Application;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;

final class b implements Runnable {
    final /* synthetic */ Application a;
    final /* synthetic */ String b;
    final /* synthetic */ AlibcTradeInitCallback c;

    b(Application application, String str, AlibcTradeInitCallback alibcTradeInitCallback) {
        this.a = application;
        this.b = str;
        this.c = alibcTradeInitCallback;
    }

    public void run() {
        a.b(this.a, this.b, this.c);
    }
}
