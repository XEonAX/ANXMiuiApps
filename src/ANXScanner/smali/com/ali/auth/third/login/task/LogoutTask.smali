.class public Lcom/ali/auth/third/login/task/LogoutTask;
.super Lcom/ali/auth/third/core/task/TaskWithDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/auth/third/core/task/TaskWithDialog",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/auth/third/login/callback/LogoutCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ali/auth/third/login/callback/LogoutCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/auth/third/core/task/TaskWithDialog;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/ali/auth/third/login/task/LogoutTask;->a:Lcom/ali/auth/third/login/callback/LogoutCallback;

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/login/task/LogoutTask;)Lcom/ali/auth/third/login/callback/LogoutCallback;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LogoutTask;->a:Lcom/ali/auth/third/login/callback/LogoutCallback;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    const-string v0, "logout task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "into logout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-virtual {v2}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->getInternalSession()Lcom/ali/auth/third/core/model/InternalSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/auth/third/core/model/InternalSession;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->getInternalSession()Lcom/ali/auth/third/core/model/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/login/LoginComponent;->INSTANCE:Lcom/ali/auth/third/login/LoginComponent;

    invoke-static {}, Lcom/ali/auth/third/login/LoginComponent;->logout()Lcom/ali/auth/third/core/model/RpcResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    sget-object v0, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/CredentialService;->logout()Lcom/ali/auth/third/core/model/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    invoke-virtual {v1, v0}, Lcom/ali/auth/third/core/model/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ali/auth/third/login/a/a;->d:Lcom/ali/auth/third/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/RpcService;->logout()V

    sget-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v0}, Lcom/ali/auth/third/core/util/CommonUtils;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/login/task/LogoutTask$1;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/login/task/LogoutTask$1;-><init>(Lcom/ali/auth/third/login/task/LogoutTask;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ali/auth/third/login/task/LogoutTask;->a:Lcom/ali/auth/third/login/callback/LogoutCallback;

    invoke-static {v1, v0}, Lcom/ali/auth/third/core/util/CommonUtils;->onFailure(Lcom/ali/auth/third/core/callback/FailureCallback;Lcom/ali/auth/third/core/model/ResultCode;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    sget-object v0, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/CredentialService;->logout()Lcom/ali/auth/third/core/model/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    invoke-virtual {v1, v0}, Lcom/ali/auth/third/core/model/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ali/auth/third/login/a/a;->d:Lcom/ali/auth/third/core/service/RpcService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/RpcService;->logout()V

    sget-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v0}, Lcom/ali/auth/third/core/util/CommonUtils;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/login/task/LogoutTask$1;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/login/task/LogoutTask$1;-><init>(Lcom/ali/auth/third/login/task/LogoutTask;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ali/auth/third/login/task/LogoutTask;->a:Lcom/ali/auth/third/login/callback/LogoutCallback;

    invoke-static {v1, v0}, Lcom/ali/auth/third/core/util/CommonUtils;->onFailure(Lcom/ali/auth/third/core/callback/FailureCallback;Lcom/ali/auth/third/core/model/ResultCode;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    sget-object v1, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v1}, Lcom/ali/auth/third/core/service/CredentialService;->logout()Lcom/ali/auth/third/core/model/ResultCode;

    move-result-object v1

    sget-object v2, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    invoke-virtual {v2, v1}, Lcom/ali/auth/third/core/model/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/ali/auth/third/login/a/a;->d:Lcom/ali/auth/third/core/service/RpcService;

    invoke-interface {v1}, Lcom/ali/auth/third/core/service/RpcService;->logout()V

    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v1}, Lcom/ali/auth/third/core/util/CommonUtils;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    sget-object v1, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v2, Lcom/ali/auth/third/login/task/LogoutTask$1;

    invoke-direct {v2, p0}, Lcom/ali/auth/third/login/task/LogoutTask$1;-><init>(Lcom/ali/auth/third/login/task/LogoutTask;)V

    invoke-interface {v1, v2}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_1
    throw v0

    :cond_3
    iget-object v2, p0, Lcom/ali/auth/third/login/task/LogoutTask;->a:Lcom/ali/auth/third/login/callback/LogoutCallback;

    invoke-static {v2, v1}, Lcom/ali/auth/third/core/util/CommonUtils;->onFailure(Lcom/ali/auth/third/core/callback/FailureCallback;Lcom/ali/auth/third/core/model/ResultCode;)V

    goto :goto_1
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/LogoutTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LogoutTask;->a:Lcom/ali/auth/third/login/callback/LogoutCallback;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/model/ResultCode;->create(I[Ljava/lang/Object;)Lcom/ali/auth/third/core/model/ResultCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/util/CommonUtils;->onFailure(Lcom/ali/auth/third/core/callback/FailureCallback;Lcom/ali/auth/third/core/model/ResultCode;)V

    return-void
.end method
