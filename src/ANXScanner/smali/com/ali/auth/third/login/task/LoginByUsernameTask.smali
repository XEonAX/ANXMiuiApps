.class public Lcom/ali/auth/third/login/task/LoginByUsernameTask;
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
.field private a:Lcom/ali/auth/third/ui/context/a;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/context/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/AbsAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

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

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "code"

    iget v3, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ali/auth/third/login/LoginComponent;->INSTANCE:Lcom/ali/auth/third/login/LoginComponent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/login/LoginComponent;->loginByUserName(Ljava/lang/String;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const/16 v2, 0xbb8

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    invoke-interface {v2, v0}, Lcom/ali/auth/third/core/service/CredentialService;->refreshWhenLogin(Lcom/ali/auth/third/core/model/LoginReturnData;)V

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    iget v1, v1, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    iget v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const/16 v2, 0x32d2

    if-ne v0, v2, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "code"

    iget v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "message"

    iget-object v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v4, "checkCodeId"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "checkCodeUrl"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "data"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const/16 v2, 0x32d3

    if-ne v0, v2, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "code"

    iget v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "message"

    iget-object v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const-string v4, "checkCodeId"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "checkCodeUrl"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->checkCodeUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "data"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const/16 v2, 0x3304

    if-ne v0, v2, :cond_9

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "code"

    iget v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "message"

    iget-object v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_7

    const-string v4, "doubleCheckUrl"

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->h5Url:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v0, "data"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->token:Ljava/lang/String;

    sput-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/LoginReturnData;->scene:Ljava/lang/String;

    sput-object v0, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    iget v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v3, v1, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "message"

    iget-object v1, v1, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-class v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    sget-object v1, Lcom/ali/auth/third/login/UTConstants;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/auth/third/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a([Ljava/lang/String;)Ljava/lang/Void;

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

    move-result-object v0

    instance-of v1, p1, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ali/auth/third/core/message/Message;

    invoke-direct {v1}, Lcom/ali/auth/third/core/message/Message;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;->getCode()I

    move-result v0

    iput v0, v1, Lcom/ali/auth/third/core/message/Message;->code:I

    check-cast p1, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-virtual {p1}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    move-object v0, v1

    :cond_0
    const-string v1, "login"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "code"

    iget v3, v0, Lcom/ali/auth/third/core/message/Message;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v0, v0, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
