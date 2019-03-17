package com.alibaba.baichuan.trade.common.webview;

import android.graphics.Bitmap;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.common.webview.jsbridge.a;
import java.util.ArrayList;
import java.util.List;

public class AlibcWebViewService {
    private static List<IAlibcWebChromeClient> a = new ArrayList();
    private static List<IAlibcWebViewClient> b = new ArrayList();

    public interface IAlibcWebViewClient {
        void onPageFinished(WebView webView, String str);

        void onPageStarted(WebView webView, String str, Bitmap bitmap);

        void onReceivedError(WebView webView, int i, String str, String str2);

        boolean shouldOverrideUrlLoading(WebView webView, String str, boolean z);
    }

    public interface IAlibcWebChromeClient {
        boolean onConsoleMessage(WebView webView, ConsoleMessage consoleMessage, boolean z);

        void onExceededDatabaseQuota(WebView webView, String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater);

        void onGeolocationPermissionsShowPrompt(WebView webView, String str, Callback callback);

        boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult, boolean z);

        void onProgressChanged(WebView webView, int i);

        void onReceivedTitle(WebView webView, String str);
    }

    public static boolean onConsoleMessage(WebView webView, ConsoleMessage consoleMessage, boolean z) {
        boolean a = !z ? a.a().a(webView, consoleMessage) : false;
        for (IAlibcWebChromeClient iAlibcWebChromeClient : a) {
            boolean z2 = a || z;
            iAlibcWebChromeClient.onConsoleMessage(webView, consoleMessage, z2);
        }
        return a;
    }

    public static void onExceededDatabaseQuota(WebView webView, String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        a.a().a(webView, str, str2, j, j2, j3, quotaUpdater);
        for (IAlibcWebChromeClient onExceededDatabaseQuota : a) {
            onExceededDatabaseQuota.onExceededDatabaseQuota(webView, str, str2, j, j2, j3, quotaUpdater);
        }
    }

    public static void onGeolocationPermissionsShowPrompt(WebView webView, String str, Callback callback) {
        a.a().a(webView, str, callback);
        for (IAlibcWebChromeClient onGeolocationPermissionsShowPrompt : a) {
            onGeolocationPermissionsShowPrompt.onGeolocationPermissionsShowPrompt(webView, str, callback);
        }
    }

    public static boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult, boolean z) {
        boolean a = !z ? a.a().a(webView, str, str2, str3, jsPromptResult) : false;
        for (IAlibcWebChromeClient iAlibcWebChromeClient : a) {
            boolean z2 = a || z;
            iAlibcWebChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult, z2);
        }
        return a;
    }

    public static boolean onPageFinished(WebView webView, String str) {
        for (IAlibcWebViewClient onPageFinished : b) {
            onPageFinished.onPageFinished(webView, str);
        }
        return false;
    }

    public static boolean onPageStarted(WebView webView, String str, Bitmap bitmap) {
        for (IAlibcWebViewClient onPageStarted : b) {
            onPageStarted.onPageStarted(webView, str, bitmap);
        }
        return false;
    }

    public static void onProgressChanged(WebView webView, int i) {
        a.a().a(webView, i);
        for (IAlibcWebChromeClient onProgressChanged : a) {
            onProgressChanged.onProgressChanged(webView, i);
        }
    }

    public static boolean onReceivedError(WebView webView, int i, String str, String str2) {
        for (IAlibcWebViewClient onReceivedError : b) {
            onReceivedError.onReceivedError(webView, i, str, str2);
        }
        return false;
    }

    public static void onReceivedTitle(WebView webView, String str) {
        a.a().a(webView, str);
        for (IAlibcWebChromeClient onReceivedTitle : a) {
            onReceivedTitle.onReceivedTitle(webView, str);
        }
    }

    public static void registAliWebViewChromeClient(IAlibcWebChromeClient iAlibcWebChromeClient) {
        a.add(iAlibcWebChromeClient);
    }

    public static void registAliWebViewClient(IAlibcWebViewClient iAlibcWebViewClient) {
        b.add(iAlibcWebViewClient);
    }

    public static boolean shouldOverrideUrlLoading(WebView webView, String str, boolean z) {
        boolean a = !z ? AlibcUrlBus.a(webView, str) : false;
        for (IAlibcWebViewClient iAlibcWebViewClient : b) {
            boolean z2 = a || z;
            iAlibcWebViewClient.shouldOverrideUrlLoading(webView, str, z2);
        }
        return a;
    }

    public static void unRegistAliWebViewChromeClient(IAlibcWebChromeClient iAlibcWebChromeClient) {
        a.remove(iAlibcWebChromeClient);
    }

    public static void unRegistAliWebViewClient(IAlibcWebViewClient iAlibcWebViewClient) {
        b.remove(iAlibcWebViewClient);
    }
}
