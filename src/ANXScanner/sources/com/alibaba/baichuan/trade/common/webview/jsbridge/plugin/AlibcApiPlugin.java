package com.alibaba.baichuan.trade.common.webview.jsbridge.plugin;

import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;

public abstract class AlibcApiPlugin {
    protected boolean isAlive = true;
    protected WebView mWebView;
    public Object paramObj;

    public abstract boolean execute(String str, String str2, AlibcJsCallbackContext alibcJsCallbackContext);

    public void initialize(Context context, WebView webView) {
        initialize(context, webView, null);
    }

    public void initialize(Context context, WebView webView, Object obj) {
        this.mWebView = webView;
        this.paramObj = obj;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onDestroy() {
        this.isAlive = false;
    }

    public void onPause() {
        this.isAlive = false;
    }

    public void onResume() {
        this.isAlive = true;
    }

    public void onScrollChanged(int i, int i2, int i3, int i4) {
    }
}
