.class Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalWebViewClient"
.end annotation


# instance fields
.field final synthetic gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->b(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->a(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->f(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->g(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 94
    new-instance p1, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;

    invoke-direct {p1, p2}, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 95
    iget-object p2, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->e(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p2, v0, p1, p3}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 96
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->c(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object p1

    .line 84
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;

    invoke-direct {p2, p1}, Lcom/miui/internal/hybrid/webkit/WebResourceResponce;-><init>(Lmiui/hybrid/HybridResourceResponse;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/WebViewClient$InternalWebViewClient;->gq:Lcom/miui/internal/hybrid/webkit/WebViewClient;

    invoke-static {v0}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->d(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/hybrid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
