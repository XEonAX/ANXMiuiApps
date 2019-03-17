.class public abstract Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;
.super Ljava/lang/Object;


# instance fields
.field protected isAlive:Z

.field protected mWebView:Landroid/webkit/WebView;

.field public paramObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->isAlive:Z

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)Z
.end method

.method public initialize(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->initialize(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->mWebView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->paramObj:Ljava/lang/Object;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->isAlive:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->isAlive:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->isAlive:Z

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    return-void
.end method
