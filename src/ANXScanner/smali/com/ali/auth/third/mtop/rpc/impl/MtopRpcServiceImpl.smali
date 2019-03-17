.class public Lcom/ali/auth/third/mtop/rpc/impl/MtopRpcServiceImpl;
.super Ljava/lang/Object;
.source "MtopRpcServiceImpl.java"

# interfaces
.implements Lcom/ali/auth/third/core/service/RpcService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/ali/auth/third/core/config/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->setTLogEnabled(Z)V

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    .line 35
    :cond_0
    invoke-static {v1, v1}, Lmtopsdk/mtop/intf/MtopSetting;->setAppKeyIndex(II)V

    .line 37
    invoke-static {}, Lcom/ali/auth/third/core/util/CommonUtils;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/MtopSetting;->setAppVersion(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    if-ne v0, v1, :cond_1

    .line 39
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 40
    const-string v0, ""

    const-string v1, ""

    const-string v2, "api.waptest.taobao.com"

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/intf/MtopSetting;->setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    new-instance v0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl;

    invoke-direct {v0}, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl;-><init>()V

    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->setLoginImpl(Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;)V

    .line 49
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    if-ne v0, v1, :cond_2

    .line 43
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 44
    const-string v0, ""

    const-string v1, "acs.wapa.taobao.com"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/intf/MtopSetting;->setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/ali/auth/third/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public invoke(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 1
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

    .prologue
    .line 58
    invoke-static {}, Lcom/ali/auth/third/mtop/rpc/a;->a()Lcom/ali/auth/third/mtop/rpc/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lcom/ali/auth/third/core/model/RpcRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/ali/auth/third/mtop/rpc/a;->a()Lcom/ali/auth/third/mtop/rpc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/core/model/RpcRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->logout()Lmtopsdk/mtop/intf/Mtop;

    .line 80
    return-void
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmtopsdk/mtop/intf/Mtop;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    .line 70
    return-void
.end method

.method public remoteBusiness(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;)V
    .locals 2
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

    .prologue
    .line 64
    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/MemberSDK;->ttid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/ali/auth/third/mtop/rpc/a;->a()Lcom/ali/auth/third/mtop/rpc/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;)V

    .line 66
    return-void
.end method
