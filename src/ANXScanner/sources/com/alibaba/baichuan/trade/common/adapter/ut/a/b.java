package com.alibaba.baichuan.trade.common.adapter.ut.a;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.http.HttpHelper;

class b implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ a b;

    b(a aVar, String str) {
        this.b = aVar;
        this.a = str;
    }

    public void run() {
        AlibcLogger.d("Aplus", HttpHelper.getHttp(this.a));
    }
}
