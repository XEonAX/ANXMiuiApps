package com.miui.internal.hybrid.webkit;

import miui.hybrid.HybridSettings;

public class WebSettings extends HybridSettings {
    private android.webkit.WebSettings gp;

    public WebSettings(android.webkit.WebSettings webSettings) {
        this.gp = webSettings;
    }

    public void setJavaScriptEnabled(boolean z) {
        this.gp.setJavaScriptEnabled(z);
    }

    public void setUserAgentString(String str) {
        this.gp.setUserAgentString(str);
    }

    public String getUserAgentString() {
        return this.gp.getUserAgentString();
    }

    public void setUseWideViewPort(boolean z) {
        this.gp.setUseWideViewPort(z);
    }

    public void setSupportMultipleWindows(boolean z) {
        this.gp.setSupportMultipleWindows(z);
    }

    public void setLoadWithOverviewMode(boolean z) {
        this.gp.setLoadWithOverviewMode(z);
    }

    public void setDomStorageEnabled(boolean z) {
        this.gp.setDomStorageEnabled(z);
    }

    public void setDatabaseEnabled(boolean z) {
        this.gp.setDatabaseEnabled(z);
    }

    public void setAllowFileAccessFromFileURLs(boolean z) {
        this.gp.setAllowFileAccessFromFileURLs(z);
    }

    public void setAllowUniversalAccessFromFileURLs(boolean z) {
        this.gp.setAllowUniversalAccessFromFileURLs(z);
    }

    public void setCacheMode(int i) {
        this.gp.setCacheMode(i);
    }

    public void setJavaScriptCanOpenWindowsAutomatically(boolean z) {
        this.gp.setJavaScriptCanOpenWindowsAutomatically(z);
    }

    public void setTextZoom(int i) {
        this.gp.setTextZoom(i);
    }

    public void setGeolocationEnabled(boolean z) {
        this.gp.setGeolocationEnabled(z);
    }

    public void setAppCacheEnabled(boolean z) {
        this.gp.setAppCacheEnabled(z);
    }

    public void setAppCachePath(String str) {
        this.gp.setAppCachePath(str);
    }

    public void setGeolocationDatabasePath(String str) {
        this.gp.setGeolocationDatabasePath(str);
    }
}
