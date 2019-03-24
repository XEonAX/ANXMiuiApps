.class public Lcom/miui/internal/hybrid/webkit/WebView;
.super Lcom/miui/internal/hybrid/provider/AbsWebView;
.source "SourceFile"


# instance fields
.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebView;-><init>(Landroid/content/Context;Lmiui/hybrid/HybridView;)V

    .line 27
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 28
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 73
    return-void
.end method

.method public copyBackForwardList()Lmiui/hybrid/HybridBackForwardList;
    .locals 2

    .line 127
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 63
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 133
    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Lmiui/hybrid/HybridSettings;
    .locals 2

    .line 57
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebSettings;

    iget-object v1, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/hybrid/webkit/WebSettings;-><init>(Landroid/webkit/WebSettings;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 88
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public reload()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 68
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public setWebChromeClient(Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->getWebChromeClient()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 43
    return-void
.end method

.method public setWebViewClient(Lcom/miui/internal/hybrid/provider/AbsWebViewClient;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->getWebViewClient()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    return-void
.end method
