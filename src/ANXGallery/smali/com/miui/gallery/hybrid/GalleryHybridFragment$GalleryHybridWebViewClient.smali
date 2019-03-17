.class Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;
.super Lmiui/webkit/WebViewClient;
.source "GalleryHybridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/GalleryHybridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryHybridWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-direct {p0}, Lmiui/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p2, "x1"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$600(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    const-string v0, "GalleryHybridFragment"

    const-string v1, "onPageFinished: already detached, do nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->onRefreshComplete()V

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    if-eq v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onError(ZLcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onStopLoading(Z)V

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Lmiui/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 219
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$800(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "GalleryHybridFragment"

    const-string v1, "onReceivedError: already detached, do nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/pulltorefresh/PullToRefreshWebView;->onRefreshComplete()V

    .line 250
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->SERVICE_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    invoke-static {v0, v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$402(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->NETWORK_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    invoke-static {v0, v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$402(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 259
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 260
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 200
    const-string v1, "GalleryHybridFragment"

    const-string/jumbo v2, "shouldOverrideUrlLoading: already detached, do nothing"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    sget-object v2, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->OK:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    invoke-static {v1, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$402(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    .line 205
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setProgress(I)V

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridWebViewClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onStartLoading(Z)V

    .line 208
    invoke-static {p2}, Lcom/miui/gallery/request/HostManager;->isGalleryUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
