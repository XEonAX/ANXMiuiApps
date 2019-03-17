.class public Lcom/ali/auth/third/core/cookies/a;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/ali/auth/third/core/WebViewProxy;
    .locals 1

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->mWebViewProxy:Lcom/ali/auth/third/core/WebViewProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->mWebViewProxy:Lcom/ali/auth/third/core/WebViewProxy;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ali/auth/third/core/a/a;->a()Lcom/ali/auth/third/core/a/a;

    move-result-object v0

    goto :goto_0
.end method
