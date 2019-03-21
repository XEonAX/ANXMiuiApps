package com.miui.gallery.hybrid.hybridclient.wrapper;

import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

public class WebChromeClientWrapper extends WebChromeClient {
    private WebChromeClient mWrappedWebChromeClient;

    public WebChromeClientWrapper(WebChromeClient wrappedWebChromeClient) {
        this.mWrappedWebChromeClient = wrappedWebChromeClient;
    }

    public void onReceivedTitle(WebView view, String title) {
        if (this.mWrappedWebChromeClient != null) {
            this.mWrappedWebChromeClient.onReceivedTitle(view, title);
        } else {
            super.onReceivedTitle(view, title);
        }
    }

    public void onGeolocationPermissionsShowPrompt(String origin, Callback callback) {
        if (this.mWrappedWebChromeClient != null) {
            this.mWrappedWebChromeClient.onGeolocationPermissionsShowPrompt(origin, callback);
        } else {
            super.onGeolocationPermissionsShowPrompt(origin, callback);
        }
    }

    public boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
        if (this.mWrappedWebChromeClient != null) {
            return this.mWrappedWebChromeClient.onJsConfirm(view, url, message, result);
        }
        return super.onJsConfirm(view, url, message, result);
    }

    public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        if (this.mWrappedWebChromeClient != null) {
            return this.mWrappedWebChromeClient.onJsAlert(view, url, message, result);
        }
        return super.onJsAlert(view, url, message, result);
    }

    public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        if (this.mWrappedWebChromeClient != null) {
            return this.mWrappedWebChromeClient.onJsPrompt(view, url, message, defaultValue, result);
        }
        return super.onJsPrompt(view, url, message, defaultValue, result);
    }

    public void onProgressChanged(WebView view, int progress) {
        if (this.mWrappedWebChromeClient != null) {
            this.mWrappedWebChromeClient.onProgressChanged(view, progress);
        } else {
            super.onProgressChanged(view, progress);
        }
    }
}
