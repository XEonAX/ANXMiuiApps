package com.miui.internal.hybrid.webkit;

import android.net.Uri;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.miui.internal.hybrid.provider.AbsWebChromeClient;
import miui.hybrid.GeolocationPermissions;
import miui.hybrid.HybridChromeClient;
import miui.hybrid.HybridView;

public class WebChromeClient extends AbsWebChromeClient {

    class InternalWebChromeClient extends android.webkit.WebChromeClient {
        InternalWebChromeClient() {
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return WebChromeClient.this.onJsAlert(WebChromeClient.this.mHybridView, str, str2, new JsResult(jsResult));
        }

        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return WebChromeClient.this.onJsConfirm(WebChromeClient.this.mHybridView, str, str2, new JsResult(jsResult));
        }

        public void onProgressChanged(WebView webView, int i) {
            WebChromeClient.this.onProgressChanged(WebChromeClient.this.mHybridView, i);
        }

        public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
            WebChromeClient.this.onGeolocationPermissionsShowPrompt(str, new GeolocationPermissionsCallback(callback));
        }

        public void onReceivedTitle(WebView webView, String str) {
            WebChromeClient.this.onReceivedTitle(WebChromeClient.this.mHybridView, str);
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
            WebChromeClient.this.openFileChooser(new ValueCallback(valueCallback), str, str2);
        }
    }

    public WebChromeClient(HybridChromeClient hybridChromeClient, HybridView hybridView) {
        super(hybridChromeClient, hybridView);
    }

    public Object getWebChromeClient() {
        return new InternalWebChromeClient();
    }

    public boolean onJsAlert(HybridView hybridView, String str, String str2, miui.hybrid.JsResult jsResult) {
        return this.mHybridChromeClient.onJsAlert(hybridView, str, str2, jsResult);
    }

    public boolean onJsConfirm(HybridView hybridView, String str, String str2, miui.hybrid.JsResult jsResult) {
        return this.mHybridChromeClient.onJsConfirm(hybridView, str, str2, jsResult);
    }

    public void onProgressChanged(HybridView hybridView, int i) {
        this.mHybridChromeClient.onProgressChanged(hybridView, i);
    }

    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        this.mHybridChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
    }

    public void onReceivedTitle(HybridView hybridView, String str) {
        this.mHybridChromeClient.onReceivedTitle(hybridView, str);
    }

    public void openFileChooser(miui.hybrid.ValueCallback<Uri> valueCallback, String str, String str2) {
        this.mHybridChromeClient.openFileChooser(valueCallback, str, str2);
    }
}
