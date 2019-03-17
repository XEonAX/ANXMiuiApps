.class public interface abstract Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/Pailitao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchImageCallback"
.end annotation


# virtual methods
.method public abstract onScrollChanged(Z)V
.end method

.method public abstract onSearchError(Lcom/alibaba/imagesearch/SearchResult;)V
.end method

.method public abstract onSearchFinished(Lcom/alibaba/imagesearch/SearchResult;)V
.end method

.method public abstract onWebViewJumpWithoutNetwork(Landroid/webkit/WebView;)Z
.end method

.method public abstract onWebViewPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onWebViewReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end method

.method public abstract onWebViewReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
.end method

.method public abstract onWebViewReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract shouldOpenInDifferentWebView()Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;
.end method
