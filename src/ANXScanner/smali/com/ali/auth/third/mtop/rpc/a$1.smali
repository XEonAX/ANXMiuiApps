.class Lcom/ali/auth/third/mtop/rpc/a$1;
.super Ljava/lang/Object;
.source "MTOPWrapper.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/ali/auth/third/mtop/rpc/a;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/mtop/rpc/a;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->c:Lcom/ali/auth/third/mtop/rpc/a;

    iput-object p2, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->a:Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;

    iput-object p3, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 187
    const-string v0, "-1"

    .line 188
    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->a:Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;

    iget-object v2, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->c:Lcom/ali/auth/third/mtop/rpc/a;

    iget-object v3, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->b:Ljava/lang/Class;

    invoke-static {v2, p2, v3}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/mtop/rpc/a;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;->onError(Ljava/lang/String;Lcom/ali/auth/third/core/model/RpcResponse;)V

    .line 192
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->a:Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;

    iget-object v1, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->c:Lcom/ali/auth/third/mtop/rpc/a;

    iget-object v2, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->b:Ljava/lang/Class;

    invoke-static {v1, p2, v2}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/mtop/rpc/a;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;->onSuccess(Lcom/ali/auth/third/core/model/RpcResponse;)V

    .line 183
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 196
    const-string v0, "-1"

    .line 197
    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->a:Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;

    iget-object v2, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->c:Lcom/ali/auth/third/mtop/rpc/a;

    iget-object v3, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->b:Ljava/lang/Class;

    invoke-static {v2, p2, v3}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/mtop/rpc/a;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;->onSystemError(Ljava/lang/String;Lcom/ali/auth/third/core/model/RpcResponse;)V
    :try_end_0
    .catch Lcom/ali/auth/third/core/rpc/protocol/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    iget-object v1, p0, Lcom/ali/auth/third/mtop/rpc/a$1;->a:Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;->onSystemError(Ljava/lang/String;Lcom/ali/auth/third/core/model/RpcResponse;)V

    goto :goto_0
.end method
