.class public Lcom/ali/auth/third/login/task/LoginByIVTokenTask;
.super Lcom/ali/auth/third/core/task/AbsAsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/auth/third/core/task/AbsAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/auth/third/core/callback/LoginCallback;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/AbsAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a:Lcom/ali/auth/third/core/callback/LoginCallback;

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)Lcom/ali/auth/third/core/callback/LoginCallback;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a:Lcom/ali/auth/third/core/callback/LoginCallback;

    return-object v0
.end method

.method private a()V
    .locals 2

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$2;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$2;-><init>(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;-><init>(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ali/auth/third/core/util/CommonUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/auth/third/core/model/RpcResponse;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/RpcResponse;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const-string v1, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v1}, Lcom/ali/auth/third/core/util/ResourceUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    iget v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(ILjava/lang/String;)V

    :goto_0
    return-object v4

    :cond_0
    sget-object v0, Lcom/ali/auth/third/login/LoginComponent;->INSTANCE:Lcom/ali/auth/third/login/LoginComponent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/auth/third/login/LoginComponent;->loginByIVToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/model/ResultCode;->SYSTEM_EXCEPTION:Lcom/ali/auth/third/core/model/ResultCode;

    iget v0, v0, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->SYSTEM_EXCEPTION:Lcom/ali/auth/third/core/model/ResultCode;

    iget-object v1, v1, Lcom/ali/auth/third/core/model/ResultCode;->message:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const/16 v2, 0xbb8

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/ali/auth/third/core/context/KernelContext;->credentialService:Lcom/ali/auth/third/core/service/CredentialService;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    invoke-interface {v1, v0}, Lcom/ali/auth/third/core/service/CredentialService;->refreshWhenLogin(Lcom/ali/auth/third/core/model/LoginReturnData;)V

    invoke-direct {p0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a()V

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doFinally()V
    .locals 0

    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 4

    const/16 v0, 0x271a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/ali/auth/third/core/message/Message;

    move-result-object v1

    const-string v0, "login"

    invoke-static {v0, v1, p1}, Lcom/ali/auth/third/core/trace/SDKLogger;->log(Ljava/lang/String;Lcom/ali/auth/third/core/message/Message;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    const-string v3, "10010"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v3, "exception"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    sget-object v3, Lcom/ali/auth/third/login/UTConstants;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/ali/auth/third/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    iget v0, v1, Lcom/ali/auth/third/core/message/Message;->code:I

    iget-object v1, v1, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(ILjava/lang/String;)V

    return-void
.end method
