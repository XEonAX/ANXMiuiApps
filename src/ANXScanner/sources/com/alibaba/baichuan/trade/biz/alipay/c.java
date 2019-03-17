package com.alibaba.baichuan.trade.biz.alipay;

import android.app.Activity;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageBusManager;

class c implements Runnable {
    final /* synthetic */ AlipayCallback a;
    final /* synthetic */ AliPayResult b;
    final /* synthetic */ WebView c;
    final /* synthetic */ AlibcAlipay d;

    c(AlibcAlipay alibcAlipay, AlipayCallback alipayCallback, AliPayResult aliPayResult, WebView webView) {
        this.d = alibcAlipay;
        this.a = alipayCallback;
        this.b = aliPayResult;
        this.c = webView;
    }

    public void run() {
        if (this.a != null) {
            this.a.a(this.b);
        }
        AlibcTradeContext context = AlibcTradeContextManager.getContext(this.c);
        boolean z = true;
        if (!(context == null || context.showParam == null)) {
            z = context.showParam.isClose();
        }
        if ((this.c.getContext() instanceof Activity) && z) {
            ((Activity) this.c.getContext()).finish();
        } else {
            AlibcMessageBusManager.getInstance().sendMessage(6002, this.c);
        }
    }
}
