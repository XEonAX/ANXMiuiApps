package com.alibaba.baichuan.trade.biz.applink;

import android.app.Activity;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.context.AlibcResultType;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;

class a implements Runnable {
    final /* synthetic */ WebView a;
    final /* synthetic */ AlibcAppLinkInterceptor b;

    a(AlibcAppLinkInterceptor alibcAppLinkInterceptor, WebView webView) {
        this.b = alibcAppLinkInterceptor;
        this.a = webView;
    }

    public void run() {
        AlibcTradeContext context = AlibcTradeContextManager.getContext(this.a);
        AlibcTradeResult alibcTradeResult = new AlibcTradeResult();
        alibcTradeResult.resultType = AlibcResultType.TYPECART;
        context.callback.onTradeSuccess(alibcTradeResult);
        if (context != null && context.activity != null && context.activity.get() != null) {
            ((Activity) context.activity.get()).finish();
        }
    }
}
