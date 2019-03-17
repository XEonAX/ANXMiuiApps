package com.alibaba.baichuan.trade.biz.alipay;

import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.utils.AlibcURLCheck;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus.IUrlInterceptor;

public class d implements IUrlInterceptor {
    public static final String[] a = new String[]{"^http(s)?://(maliprod|mclient)\\.alipay\\.com/w/(trade_pay|batch_payment)\\.do(.*)$", "^http(s)?://(mobileclientgw|maliprod)\\.stable\\.alipay\\.net/w/(trade_pay|batch_payment)\\.do(.*)$", "^http(s)?://(maliprod|mclient)\\.alipay\\.com/(trade_pay|batch_payment)\\.do(.*)$", "^http(s)?://(mobileclientgw|maliprod)\\.stable\\.alipay\\.net/(trade_pay|batch_payment)\\.do(.*)$"};
    private static d b;

    private d() {
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (b == null) {
                b = new d();
            }
            dVar = b;
        }
        return dVar;
    }

    private boolean a(WebView webView, String str) {
        return AlibcAlipay.getInstance().openAlipay(new e(this, AlibcTradeContextManager.getContext(webView)), webView, str);
    }

    public boolean interceptor(WebView webView, String str) {
        return (AlibcConfigService.getInstance().shouldUseAlipay(true) && AlibcURLCheck.regular.check(a, str)) ? a(webView, str) : false;
    }
}
