.class public interface abstract Lcom/taobao/tao/remotebusiness/auth/IRemoteAuth;
.super Ljava/lang/Object;
.source "IRemoteAuth.java"


# virtual methods
.method public abstract authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/taobao/tao/remotebusiness/auth/AuthListener;)V
.end method

.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract isAuthInfoValid()Z
.end method

.method public abstract isAuthorizing()Z
.end method
