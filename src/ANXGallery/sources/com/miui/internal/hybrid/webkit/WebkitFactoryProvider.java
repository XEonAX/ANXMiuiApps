package com.miui.internal.hybrid.webkit;

import android.content.Context;
import com.miui.internal.hybrid.provider.AbsCookieSyncManager;
import com.miui.internal.hybrid.provider.AbsWebChromeClient;
import com.miui.internal.hybrid.provider.AbsWebView;
import com.miui.internal.hybrid.provider.AbsWebViewClient;
import com.miui.internal.hybrid.provider.WebViewFactoryProvider;
import miui.hybrid.CookieManager;
import miui.hybrid.HybridChromeClient;
import miui.hybrid.HybridView;
import miui.hybrid.HybridViewClient;

public class WebkitFactoryProvider extends WebViewFactoryProvider {
    private CookieManager gr;
    private AbsCookieSyncManager gs;

    public AbsWebView createWebView(Context context, HybridView hybridView) {
        return new WebView(context, hybridView);
    }

    public AbsWebViewClient createWebViewClient(HybridViewClient hybridViewClient, HybridView hybridView) {
        return new WebViewClient(hybridViewClient, hybridView);
    }

    public AbsWebChromeClient createWebChromeClient(HybridChromeClient hybridChromeClient, HybridView hybridView) {
        return new WebChromeClient(hybridChromeClient, hybridView);
    }

    public CookieManager getCookieManager() {
        if (this.gr == null) {
            this.gr = new CookieManagerAdapter(android.webkit.CookieManager.getInstance());
        }
        return this.gr;
    }

    public AbsCookieSyncManager getCookieSyncManager() {
        if (this.gs == null) {
            this.gs = new CookieSyncManagerDelegate();
        }
        return this.gs;
    }
}
