.class public interface abstract Lcom/ali/auth/third/core/service/RpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract invoke(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ali/auth/third/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract invoke(Lcom/ali/auth/third/core/model/RpcRequest;)Ljava/lang/String;
.end method

.method public abstract logout()V
.end method

.method public abstract registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remoteBusiness(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<*>;>(",
            "Lcom/ali/auth/third/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;",
            ")V"
        }
    .end annotation
.end method
