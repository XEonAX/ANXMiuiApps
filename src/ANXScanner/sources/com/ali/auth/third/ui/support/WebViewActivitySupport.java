package com.ali.auth.third.ui.support;

import android.webkit.WebView;
import com.ali.auth.third.core.trace.SDKLogger;

public class WebViewActivitySupport {
    private static final String a = WebViewActivitySupport.class.getSimpleName();
    public String lastReloadUrl;

    private static class a {
        private static final WebViewActivitySupport a = new WebViewActivitySupport();
    }

    private WebViewActivitySupport() {
        this.lastReloadUrl = "";
    }

    public static WebViewActivitySupport getInstance() {
        return a.a;
    }

    public void safeReload(WebView webView) {
        String url = webView.getUrl();
        SDKLogger.d(a, "reload url: " + url);
        if (url == null) {
            webView.loadUrl(this.lastReloadUrl);
        } else {
            webView.reload();
        }
    }
}
