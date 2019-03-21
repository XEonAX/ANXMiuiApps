package com.miui.gallery.hybrid.hybridclient.wrapper;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import miui.webkit.WebViewClient;

public class WebViewClientWrapper extends WebViewClient {
    private WebViewClient mWrappedWebViewClient;

    public WebViewClientWrapper(WebViewClient wrappedWebViewClient) {
        this.mWrappedWebViewClient = wrappedWebViewClient;
    }

    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (this.mWrappedWebViewClient != null) {
            return this.mWrappedWebViewClient.shouldOverrideUrlLoading(view, url);
        }
        return super.shouldOverrideUrlLoading(view, url);
    }

    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        if (this.mWrappedWebViewClient != null) {
            this.mWrappedWebViewClient.onPageStarted(view, url, favicon);
        } else {
            super.onPageStarted(view, url, favicon);
        }
    }

    public void onPageFinished(WebView view, String url) {
        if (this.mWrappedWebViewClient != null) {
            this.mWrappedWebViewClient.onPageFinished(view, url);
        } else {
            super.onPageFinished(view, url);
        }
    }

    public void onReceivedLoginRequest(WebView view, String realm, String account, String args) {
        if (this.mWrappedWebViewClient != null) {
            this.mWrappedWebViewClient.onReceivedLoginRequest(view, realm, account, args);
        } else {
            super.onReceivedLoginRequest(view, realm, account, args);
        }
    }

    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        if (this.mWrappedWebViewClient != null) {
            this.mWrappedWebViewClient.onReceivedError(view, errorCode, description, failingUrl);
        } else {
            super.onReceivedError(view, errorCode, description, failingUrl);
        }
    }

    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        if (this.mWrappedWebViewClient != null) {
            this.mWrappedWebViewClient.onReceivedSslError(view, handler, error);
        } else {
            super.onReceivedSslError(view, handler, error);
        }
    }
}
