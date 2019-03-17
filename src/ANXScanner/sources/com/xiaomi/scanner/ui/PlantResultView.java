package com.xiaomi.scanner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.util.JavaScriptProxy;
import com.xiaomi.scanner.util.Util;

public class PlantResultView extends FrameLayout {
    private WebView mWebView = ((WebView) findViewById(R.id.plant_web));

    private static class CustomWebChromeClient extends WebChromeClient {
        private CustomWebChromeClient() {
        }

        /* synthetic */ CustomWebChromeClient(AnonymousClass1 x0) {
            this();
        }
    }

    private static class CustomWebViewClient extends WebViewClient {
        private CustomWebViewClient() {
        }

        /* synthetic */ CustomWebViewClient(AnonymousClass1 x0) {
            this();
        }

        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            super.onReceivedSslError(view, handler, error);
        }

        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            return super.shouldOverrideUrlLoading(view, request);
        }

        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
        }

        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
        }
    }

    public PlantResultView(@NonNull Context context, final OnClickListener onClickListener, String url) {
        int i;
        super(context);
        LayoutInflater.from(context).inflate(R.layout.layout_plant_result, this);
        setWebSetting();
        this.mWebView.loadUrl(url);
        findViewById(R.id.close_plant).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (onClickListener != null) {
                    onClickListener.onClick(v);
                }
            }
        });
        setBackgroundResource(17170432);
        if (!Util.hasNativageBar || Utils.isFullScreenDevice()) {
            i = 0;
        } else {
            i = Utils.getNavigationBarHeight();
        }
        setPadding(0, 0, 0, i);
    }

    private void setWebSetting() {
        WebSettings settings = this.mWebView.getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        settings.setAppCacheEnabled(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(true);
        if (VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        this.mWebView.setLayerType(1, null);
        this.mWebView.addJavascriptInterface(new JavaScriptProxy(), JavaScriptProxy.XIAOMI_SCANNER);
        this.mWebView.setWebChromeClient(new CustomWebChromeClient());
        this.mWebView.setWebViewClient(new CustomWebViewClient());
    }

    public void onDestroy() {
        removeAllViews();
        if (this.mWebView != null) {
            this.mWebView.clearAnimation();
            this.mWebView.destroy();
        }
        this.mWebView = null;
    }
}
