.class Lcom/ali/auth/third/ui/LoginWebViewActivity$1;
.super Lcom/ali/auth/third/ui/webview/BaseWebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/LoginWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/ui/LoginWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/LoginWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {p0}, Lcom/ali/auth/third/ui/webview/BaseWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/ali/auth/third/ui/webview/BaseWebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadResource url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/ali/auth/third/ui/webview/BaseWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/ali/auth/third/ui/webview/BaseWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/ali/auth/third/ui/LoginWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v2}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->a(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lcom/ali/auth/third/login/LoginService;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/ali/auth/third/login/LoginService;->isLoginUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/ali/auth/third/login/task/RefreshSidTask;

    iget-object v2, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v2}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->b(Lcom/ali/auth/third/ui/LoginWebViewActivity;)Lcom/ali/auth/third/ui/webview/AuthWebView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ali/auth/third/login/task/RefreshSidTask;-><init>(Landroid/webkit/WebView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ali/auth/third/login/task/RefreshSidTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-virtual {v2, p2}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginWebViewActivity$1;->a:Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-static {v0, v1}, Lcom/ali/auth/third/ui/LoginWebViewActivity;->a(Lcom/ali/auth/third/ui/LoginWebViewActivity;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/ali/auth/third/ui/webview/AuthWebView;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/ali/auth/third/ui/webview/AuthWebView;

    invoke-virtual {p1, p2}, Lcom/ali/auth/third/ui/webview/AuthWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
