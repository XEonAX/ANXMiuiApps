package com.miui.internal.webkit;

import com.miui.internal.hybrid.webkit.WebView;

public class WebViewWrapper extends WebView {
    public WebViewWrapper(android.webkit.WebView webView) {
        super(webView.getContext(), null);
        this.mWebView = webView;
    }
}
