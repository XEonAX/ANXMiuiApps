package com.miui.internal.hybrid.webkit;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.miui.internal.hybrid.provider.AbsWebViewClient;
import miui.hybrid.HybridResourceResponse;
import miui.hybrid.HybridView;
import miui.hybrid.HybridViewClient;

public class WebViewClient extends AbsWebViewClient {

    class InternalWebViewClient extends android.webkit.WebViewClient {
        InternalWebViewClient() {
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebViewClient.this.onPageStarted(WebViewClient.this.mHybridView, str, bitmap);
        }

        public void onPageFinished(WebView webView, String str) {
            WebViewClient.this.onPageFinished(WebViewClient.this.mHybridView, str);
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            HybridResourceResponse shouldInterceptRequest = WebViewClient.this.shouldInterceptRequest(WebViewClient.this.mHybridView, str);
            return shouldInterceptRequest == null ? null : new WebResourceResponce(shouldInterceptRequest);
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return WebViewClient.this.shouldOverrideUrlLoading(WebViewClient.this.mHybridView, str);
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebViewClient.this.onReceivedSslError(WebViewClient.this.mHybridView, new SslErrorHandler(sslErrorHandler), sslError);
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            WebViewClient.this.onReceivedError(WebViewClient.this.mHybridView, i, str, str2);
        }

        public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
            WebViewClient.this.onReceivedLoginRequest(WebViewClient.this.mHybridView, str, str2, str3);
        }
    }

    public WebViewClient(HybridViewClient hybridViewClient, HybridView hybridView) {
        super(hybridViewClient, hybridView);
    }

    public Object getWebViewClient() {
        return new InternalWebViewClient();
    }

    public void onPageStarted(HybridView hybridView, String str, Bitmap bitmap) {
        this.mHybridViewClient.onPageStarted(hybridView, str, bitmap);
    }

    public void onPageFinished(HybridView hybridView, String str) {
        this.mHybridViewClient.onPageFinished(hybridView, str);
    }

    public HybridResourceResponse shouldInterceptRequest(HybridView hybridView, String str) {
        return this.mHybridViewClient.shouldInterceptRequest(hybridView, str);
    }

    public boolean shouldOverrideUrlLoading(HybridView hybridView, String str) {
        return this.mHybridViewClient.shouldOverrideUrlLoading(hybridView, str);
    }

    public void onReceivedSslError(HybridView hybridView, miui.hybrid.SslErrorHandler sslErrorHandler, SslError sslError) {
        this.mHybridViewClient.onReceivedSslError(hybridView, sslErrorHandler, sslError);
    }

    public void onReceivedError(HybridView hybridView, int i, String str, String str2) {
        this.mHybridViewClient.onReceivedError(hybridView, i, str, str2);
    }

    public void onReceivedLoginRequest(HybridView hybridView, String str, String str2, String str3) {
        this.mHybridViewClient.onReceivedLoginRequest(hybridView, str, str2, str3);
    }
}
