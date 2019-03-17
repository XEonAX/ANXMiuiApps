.class public interface abstract Lcom/ali/auth/third/core/service/CredentialService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getSession()Lcom/ali/auth/third/core/model/Session;
.end method

.method public abstract isSessionValid()Z
.end method

.method public abstract logout()Lcom/ali/auth/third/core/model/ResultCode;
.end method

.method public abstract refreshWhenLogin(Lcom/ali/auth/third/core/model/LoginReturnData;)V
.end method

.method public abstract refreshWhenOfflineLogin(Lcom/ali/auth/third/core/model/AccountContract;)V
.end method
