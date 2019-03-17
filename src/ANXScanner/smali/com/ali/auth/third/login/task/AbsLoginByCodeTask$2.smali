.class Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ali/auth/third/core/model/RpcResponse;

.field final synthetic c:Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;ILcom/ali/auth/third/core/model/RpcResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;->c:Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;

    iput p2, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;->a:I

    iput-object p3, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;->b:Lcom/ali/auth/third/core/model/RpcResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0xf

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "login"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;->b:Lcom/ali/auth/third/core/model/RpcResponse;

    iget-object v4, v4, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/ali/auth/third/core/message/Message;

    move-result-object v0

    const-string v1, "AbsLoginByCodeTask"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;->c:Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;

    iget v2, v0, Lcom/ali/auth/third/core/message/Message;->code:I

    iget-object v0, v0, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->doWhenResultFail(ILjava/lang/String;)V

    return-void
.end method
