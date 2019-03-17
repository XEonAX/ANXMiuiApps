package com.alibaba.baichuan.trade.common.webview;

import android.graphics.Bitmap;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;

public interface IAlibcWebview {
    boolean onConsoleMessage(ConsoleMessage consoleMessage);

    void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater);

    void onGeolocationPermissionsShowPrompt(String str, Callback callback);

    boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult);

    void onPageFinished(WebView webView, String str);

    void onPageStarted(WebView webView, String str, Bitmap bitmap);

    void onProgressChanged(WebView webView, int i);

    void onReceivedError(WebView webView, int i, String str, String str2);

    void onReceivedTitle(WebView webView, String str);

    boolean shouldOverrideUrlLoading(WebView webView, String str);
}
