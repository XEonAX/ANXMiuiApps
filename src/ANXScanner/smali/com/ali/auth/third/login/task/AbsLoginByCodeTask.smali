.class public abstract Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;
.super Lcom/ali/auth/third/core/task/TaskWithDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/auth/third/core/task/TaskWithDialog",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/auth/third/core/task/TaskWithDialog;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->login([Ljava/lang/String;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v1

    iget v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const-string v2, "AbsLoginByCodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asyncExecute code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbb8

    if-ne v0, v2, :cond_2

    :try_start_0
    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    invoke-interface {v2, v0}, Lcom/ali/auth/third/core/service/CredentialService;->refreshWhenLogin(Lcom/ali/auth/third/core/model/LoginReturnData;)V

    :cond_0
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$1;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$1;-><init>(Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/16 v2, 0x3304

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->h5Url:Ljava/lang/String;

    const-string v2, "AbsLoginByCodeTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asyncExecute doubleCheckUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/ali/auth/third/ui/context/CallbackContext;->setActivity(Landroid/app/Activity;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "token"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->token:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "scene"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->scene:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->token:Ljava/lang/String;

    sput-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->scene:Ljava/lang/String;

    sput-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->activity:Landroid/app/Activity;

    sget v1, Lcom/ali/auth/third/login/RequestCode;->OPEN_DOUBLE_CHECK:I

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v3, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$2;-><init>(Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;ILcom/ali/auth/third/core/model/RpcResponse;)V

    invoke-interface {v2, v3}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected abstract doWhenResultFail(ILjava/lang/String;)V
.end method

.method protected abstract doWhenResultOk()V
.end method

.method protected abstract login([Ljava/lang/String;)Lcom/ali/auth/third/core/model/RpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<",
            "Lcom/ali/auth/third/core/model/LoginReturnData;",
            ">;"
        }
    .end annotation
.end method
