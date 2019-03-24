package com.miui.internal.hybrid.provider;

import android.graphics.Bitmap;
import android.net.http.SslError;
import miui.hybrid.HybridResourceResponse;
import miui.hybrid.HybridView;
import miui.hybrid.HybridViewClient;
import miui.hybrid.SslErrorHandler;

public abstract class AbsWebViewClient {
    protected HybridView mHybridView;
    protected HybridViewClient mHybridViewClient;

    public AbsWebViewClient(HybridViewClient hybridViewClient, HybridView hybridView) {
        this.mHybridViewClient = hybridViewClient;
        this.mHybridView = hybridView;
    }

    public Object getWebViewClient() {
        return null;
    }

    public void onPageStarted(HybridView hybridView, String str, Bitmap bitmap) {
    }

    public void onPageFinished(HybridView hybridView, String str) {
    }

    public HybridResourceResponse shouldInterceptRequest(HybridView hybridView, String str) {
        return null;
    }

    public boolean shouldOverrideUrlLoading(HybridView hybridView, String str) {
        return false;
    }

    public void onReceivedSslError(HybridView hybridView, SslErrorHandler sslErrorHandler, SslError sslError) {
    }

    public void onReceivedError(HybridView hybridView, int i, String str, String str2) {
    }

    public void onReceivedLoginRequest(HybridView hybridView, String str, String str2, String str3) {
    }
}
