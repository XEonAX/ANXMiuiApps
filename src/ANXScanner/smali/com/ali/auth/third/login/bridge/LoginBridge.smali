.class public Lcom/ali/auth/third/login/bridge/LoginBridge;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public auth(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/ali/auth/third/ui/webview/BridgeMethod;
    .end annotation

    new-instance v0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;

    invoke-direct {v0, p1}, Lcom/ali/auth/third/login/task/LoginByUsernameTask;-><init>(Lcom/ali/auth/third/ui/context/a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bindByUsername(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/ali/auth/third/ui/webview/BridgeMethod;
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "loginInfo"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ali/auth/third/login/task/BindByUsernameTask;

    invoke-direct {v1, p1}, Lcom/ali/auth/third/login/task/BindByUsernameTask;-><init>(Lcom/ali/auth/third/ui/context/a;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ali/auth/third/login/task/BindByUsernameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public loginByQrCode(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/ali/auth/third/ui/webview/BridgeMethod;
    .end annotation

    new-instance v0, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;

    invoke-direct {v0, p1}, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;-><init>(Lcom/ali/auth/third/ui/context/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/login/task/LoginByQrCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loginByUsername(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/ali/auth/third/ui/webview/BridgeMethod;
    .end annotation

    new-instance v0, Lcom/ali/auth/third/login/task/LoginByUsernameTask;

    invoke-direct {v0, p1}, Lcom/ali/auth/third/login/task/LoginByUsernameTask;-><init>(Lcom/ali/auth/third/ui/context/a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/login/task/LoginByUsernameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public qrLoginConfirm(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/ali/auth/third/ui/webview/BridgeMethod;
    .end annotation

    new-instance v0, Lcom/ali/auth/third/login/task/QrLoginConfirmTask;

    invoke-direct {v0, p1}, Lcom/ali/auth/third/login/task/QrLoginConfirmTask;-><init>(Lcom/ali/auth/third/ui/context/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/login/task/QrLoginConfirmTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public unbindByUsername(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/ali/auth/third/ui/webview/BridgeMethod;
    .end annotation

    return-void
.end method
