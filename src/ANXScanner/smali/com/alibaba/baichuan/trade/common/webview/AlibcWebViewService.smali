.class public Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;,
        Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onConsoleMessage(Landroid/webkit/WebView;Landroid/webkit/ConsoleMessage;Z)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Landroid/webkit/WebView;Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_2
    invoke-interface {v0, p0, p1, v3}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;->onConsoleMessage(Landroid/webkit/WebView;Landroid/webkit/ConsoleMessage;Z)Z

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static onExceededDatabaseQuota(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 13

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;->onExceededDatabaseQuota(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onGeolocationPermissionsShowPrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;->onGeolocationPermissionsShowPrompt(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;Z)Z
    .locals 10

    const/4 v8, 0x0

    if-nez p5, :cond_3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    move v7, v0

    :goto_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;

    if-nez v7, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;Z)Z

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :cond_2
    return v7

    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method public static onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Landroid/webkit/WebView;I)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static registAliWebViewChromeClient(Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;)V
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static registAliWebViewClient(Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;)V
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-static {p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;

    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_2
    invoke-interface {v0, p0, p1, v3}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static unRegistAliWebViewChromeClient(Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebChromeClient;)V
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unRegistAliWebViewClient(Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;)V
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
