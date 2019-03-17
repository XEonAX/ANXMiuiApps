.class public Lcom/xiaomi/scanner/ui/PlantResultView;
.super Landroid/widget/FrameLayout;
.source "PlantResultView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/PlantResultView$CustomWebViewClient;,
        Lcom/xiaomi/scanner/ui/PlantResultView$CustomWebChromeClient;
    }
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030041

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f0d00fd

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/PlantResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    .line 37
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/PlantResultView;->setWebSetting()V

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    const v0, 0x7f0d00fe

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/PlantResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/scanner/ui/PlantResultView$1;

    invoke-direct {v2, p0, p2}, Lcom/xiaomi/scanner/ui/PlantResultView$1;-><init>(Lcom/xiaomi/scanner/ui/PlantResultView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const/high16 v0, 0x1060000

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/PlantResultView;->setBackgroundResource(I)V

    .line 48
    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/xiaomi/scanner/ui/PlantResultView;->setPadding(IIII)V

    .line 49
    return-void

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method private setWebSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 53
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 54
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 56
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 61
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/scanner/util/JavaScriptProxy;

    invoke-direct {v2}, Lcom/xiaomi/scanner/util/JavaScriptProxy;-><init>()V

    const-string v3, "xiaomiScanner"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/scanner/ui/PlantResultView$CustomWebChromeClient;

    invoke-direct {v2, v5}, Lcom/xiaomi/scanner/ui/PlantResultView$CustomWebChromeClient;-><init>(Lcom/xiaomi/scanner/ui/PlantResultView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 69
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/scanner/ui/PlantResultView$CustomWebViewClient;

    invoke-direct {v2, v5}, Lcom/xiaomi/scanner/ui/PlantResultView$CustomWebViewClient;-><init>(Lcom/xiaomi/scanner/ui/PlantResultView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PlantResultView;->removeAllViews()V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearAnimation()V

    .line 76
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView;->mWebView:Landroid/webkit/WebView;

    .line 79
    return-void
.end method
