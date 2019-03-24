package com.miui.internal.hybrid.provider;

import android.content.Context;
import miui.hybrid.CookieManager;
import miui.hybrid.HybridChromeClient;
import miui.hybrid.HybridView;
import miui.hybrid.HybridViewClient;

public class WebViewFactoryProvider {
    public AbsWebView createWebView(Context context, HybridView hybridView) {
        return null;
    }

    public AbsWebViewClient createWebViewClient(HybridViewClient hybridViewClient, HybridView hybridView) {
        return null;
    }

    public AbsWebChromeClient createWebChromeClient(HybridChromeClient hybridChromeClient, HybridView hybridView) {
        return null;
    }

    public CookieManager getCookieManager() {
        return null;
    }

    public AbsCookieSyncManager getCookieSyncManager() {
        return null;
    }
}
