.class public Lcom/miui/internal/hybrid/webkit/WebViewClient;
.super Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;-><init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;-><init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/HybridViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 33
    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/hybrid/HybridViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/hybrid/HybridViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 53
    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/hybrid/HybridViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
