.class public Lcom/ali/auth/third/login/task/LoginByQrCodeTask;
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

    iput-object p1, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "qrCodeInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "at"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v0, Lcom/ali/auth/third/login/LoginComponent;->INSTANCE:Lcom/ali/auth/third/login/LoginComponent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/auth/third/login/LoginComponent;->loginByQRCode(Ljava/lang/String;J)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/16 v2, 0x271a

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_1
    iget v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    const/16 v2, 0xbb8

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    invoke-interface {v1, v0}, Lcom/ali/auth/third/core/service/CredentialService;->refreshWhenLogin(Lcom/ali/auth/third/core/model/LoginReturnData;)V

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ali/auth/third/ui/QrLoginActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    iget v1, v1, Lcom/ali/auth/third/core/model/ResultCode;->code:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/context/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ali/auth/third/ui/QRView;->mLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/ui/QRView;->mLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;

    sget-object v1, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v1}, Lcom/ali/auth/third/core/service/CredentialService;->getSession()Lcom/ali/auth/third/core/model/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/callback/LoginCallback;->onSuccess(Lcom/ali/auth/third/core/model/Session;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/auth/third/ui/QRView;->mLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/16 v2, 0x36ce

    if-ne v1, v2, :cond_4

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x36cf

    if-ne v1, v2, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    const/16 v3, 0x271a

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "message"

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "code"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    iget-object v0, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/ui/context/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a([Ljava/lang/String;)Ljava/lang/Void;

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

    const-string v1, "login"

    invoke-static {v1, v0, p1}, Lcom/ali/auth/third/core/trace/SDKLogger;->log(Ljava/lang/String;Lcom/ali/auth/third/core/message/Message;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->a:Lcom/ali/auth/third/ui/context/a;

    iget v2, v0, Lcom/ali/auth/third/core/message/Message;->code:I

    iget-object v0, v0, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ali/auth/third/ui/context/a;->a(ILjava/lang/String;)V

    return-void
.end method
