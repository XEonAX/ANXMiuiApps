package com.alibaba.baichuan.trade.common.webview.jsbridge;

import android.webkit.WebView;

final class d implements Runnable {
    final /* synthetic */ WebView a;
    final /* synthetic */ String b;

    d(WebView webView, String str) {
        this.a = webView;
        this.b = str;
    }

    public void run() {
        AlibcJsCallbackContext.evaluateJavascript(this.a, this.b);
    }
}
