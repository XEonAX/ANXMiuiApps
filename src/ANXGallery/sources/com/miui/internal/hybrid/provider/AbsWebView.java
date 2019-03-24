package com.miui.internal.hybrid.provider;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import miui.hybrid.HybridBackForwardList;
import miui.hybrid.HybridSettings;
import miui.hybrid.HybridView;

public abstract class AbsWebView {
    protected Context mContext;
    protected HybridView mHybridView;

    public AbsWebView(Context context, HybridView hybridView) {
        this.mContext = context;
        this.mHybridView = hybridView;
    }

    public View getBaseWebView() {
        return null;
    }

    public void setWebViewClient(AbsWebViewClient absWebViewClient) {
    }

    public void setWebChromeClient(AbsWebChromeClient absWebChromeClient) {
    }

    public void loadUrl(String str) {
    }

    public void addJavascriptInterface(Object obj, String str) {
    }

    public HybridSettings getSettings() {
        return null;
    }

    public void destroy() {
    }

    public void reload() {
    }

    public void clearCache(boolean z) {
    }

    public boolean canGoBack() {
        return false;
    }

    public boolean canGoForward() {
        return false;
    }

    public void goBack() {
    }

    public String getUrl() {
        return null;
    }

    public String getTitle() {
        return null;
    }

    public int getContentHeight() {
        return 0;
    }

    public float getScale() {
        return 1.0f;
    }

    public Context getContext() {
        return null;
    }

    public void setVisibility(int i) {
    }

    public View getRootView() {
        return null;
    }

    public HybridBackForwardList copyBackForwardList() {
        return null;
    }

    public void draw(Canvas canvas) {
    }
}
