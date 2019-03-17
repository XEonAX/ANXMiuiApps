.class public interface abstract Lcom/ali/auth/third/login/LoginService;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "login"


# virtual methods
.method public abstract auth(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V
.end method

.method public abstract auth(Lcom/ali/auth/third/core/callback/LoginCallback;)V
.end method

.method public abstract checkSessionValid()Z
.end method

.method public abstract clear()V
.end method

.method public abstract getSession()Lcom/ali/auth/third/core/model/Session;
.end method

.method public abstract isLoginUrl(Ljava/lang/String;)Z
.end method

.method public abstract isLogoutUrl(Ljava/lang/String;)Z
.end method

.method public abstract logout(Landroid/app/Activity;Lcom/ali/auth/third/login/callback/LogoutCallback;)V
.end method

.method public abstract logout(Lcom/ali/auth/third/login/callback/LogoutCallback;)V
.end method

.method public abstract refreshCookie(Lcom/ali/auth/third/core/callback/CommonCallback;)V
.end method

.method public abstract setLoginCallback(Lcom/ali/auth/third/core/callback/LoginCallback;)V
.end method

.method public abstract setWebViewProxy(Lcom/ali/auth/third/core/WebViewProxy;)V
.end method

.method public abstract showQrCodeLogin(Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/auth/third/core/callback/LoginCallback;",
            ")V"
        }
    .end annotation
.end method
