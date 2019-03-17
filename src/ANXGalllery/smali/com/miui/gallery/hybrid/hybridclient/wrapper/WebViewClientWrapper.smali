.class public Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;
.super Lmiui/webkit/WebViewClient;
.source "WebViewClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/webkit/WebViewClient;"
    }
.end annotation


# instance fields
.field private mWrappedWebViewClient:Lmiui/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Lmiui/webkit/WebViewClient;)V
    .locals 0
    .param p1, "wrappedWebViewClient"    # Lmiui/webkit/WebViewClient;

    .prologue
    .line 14
    invoke-direct {p0}, Lmiui/webkit/WebViewClient;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    .line 16
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lmiui/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/wrapper/WebViewClientWrapper;->mWrappedWebViewClient:Lmiui/webkit/WebViewClient;

    .line 21
    invoke-virtual {v0, p1, p2}, Lmiui/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
