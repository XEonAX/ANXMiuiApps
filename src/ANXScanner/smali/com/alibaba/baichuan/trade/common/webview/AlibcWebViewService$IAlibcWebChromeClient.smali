.class public interface abstract Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAlibcWebChromeClient"
.end annotation


# virtual methods
.method public abstract onConsoleMessage(Landroid/webkit/WebView;Landroid/webkit/ConsoleMessage;Z)Z
.end method

.method public abstract onExceededDatabaseQuota(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end method

.method public abstract onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;Z)Z
.end method

.method public abstract onProgressChanged(Landroid/webkit/WebView;I)V
.end method

.method public abstract onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method
