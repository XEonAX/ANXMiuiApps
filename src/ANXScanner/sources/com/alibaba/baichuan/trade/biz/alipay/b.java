package com.alibaba.baichuan.trade.biz.alipay;

import android.webkit.WebView;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageBusManager;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

class b implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ AlipayCallback b;
    final /* synthetic */ WebView c;
    final /* synthetic */ AlibcAlipay d;

    b(AlibcAlipay alibcAlipay, String str, AlipayCallback alipayCallback, WebView webView) {
        this.d = alibcAlipay;
        this.a = str;
        this.b = alipayCallback;
        this.c = webView;
    }

    public void run() {
        int a = AlibcAlipay.b(this.a);
        AlibcLogger.i(AlibcAlipay.TAG, "alipay支付失败，信息为：" + a);
        this.d.a("160102", "支付失败" + a);
        if (this.b != null) {
            this.b.a(KernelMessageConstants.GENERIC_SYSTEM_ERROR, "alipay支付失败，信息为：" + a);
        }
        AlibcMessageBusManager.getInstance().sendMessage(6001, this.c);
    }
}
