.class public Lmtopsdk/mtop/global/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKConfig"

.field private static appKey:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static authCode:Ljava/lang/String;

.field private static callFactory:Lmtopsdk/network/Call$Factory;

.field private static final config:Lmtopsdk/mtop/global/SDKConfig;

.field private static context:Landroid/content/Context;

.field private static dailyAppkeyIndex:I

.field private static deviceId:Ljava/lang/String;

.field private static envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private static onlineAppKeyIndex:I

.field private static securityBodyDataEx$2bbb0a39:Lmtopsdk/common/a/a;

.field private static sign:Lmtopsdk/a/a;

.field private static ttid:Ljava/lang/String;

.field private static utdid:Ljava/lang/String;


# instance fields
.field private updateUnitInfolock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Lmtopsdk/mtop/global/SDKConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SDKConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->config:Lmtopsdk/mtop/global/SDKConfig;

    .line 39
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 45
    sput v1, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    .line 47
    sput v1, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    .line 74
    new-instance v0, Lmtopsdk/network/DefaultCallFactory;

    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lmtopsdk/network/DefaultCallFactory;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->callFactory:Lmtopsdk/network/Call$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    .line 32
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->config:Lmtopsdk/mtop/global/SDKConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalCallFactory()Lmtopsdk/network/Call$Factory;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->callFactory:Lmtopsdk/network/Call$Factory;

    return-object v0
.end method

.method public getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGlobalDailyAppKeyIndex()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    return v0
.end method

.method public getGlobalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object v0
.end method

.method public getGlobalOnlineAppKeyIndex()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    return v0
.end method

.method public getGlobalSecurityBodyDataEx$66fb986()Lmtopsdk/common/a/a;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->securityBodyDataEx$2bbb0a39:Lmtopsdk/common/a/a;

    return-object v0
.end method

.method public getGlobalSign()Lmtopsdk/a/a;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->sign:Lmtopsdk/a/a;

    return-object v0
.end method

.method public getGlobalTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 139
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->appKey:Ljava/lang/String;

    .line 140
    const-string v0, "appKey"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object p0
.end method

.method public setGlobalAppVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3

    .prologue
    .line 243
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->appVersion:Ljava/lang/String;

    .line 244
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalAppVersion]set appVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    return-object p0
.end method

.method public setGlobalAuthCode(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3

    .prologue
    .line 201
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->authCode:Ljava/lang/String;

    .line 202
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalAuthCode]set authCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-object p0
.end method

.method public setGlobalCallFactory(Lmtopsdk/network/Call$Factory;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->callFactory:Lmtopsdk/network/Call$Factory;

    .line 260
    :cond_0
    return-object p0
.end method

.method public setGlobalContext(Landroid/content/Context;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    .line 91
    :cond_0
    return-object p0
.end method

.method public setGlobalDailyAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 114
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    .line 115
    return-object p0
.end method

.method public setGlobalDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 155
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->deviceId:Ljava/lang/String;

    .line 156
    const-string v0, "deviceId"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object p0
.end method

.method public setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 234
    :cond_0
    return-object p0
.end method

.method public setGlobalOnlineAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 124
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    .line 125
    return-object p0
.end method

.method public setGlobalSecurityBodyDataEx$7df5f4c5(Lmtopsdk/common/a/a;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3

    .prologue
    .line 213
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->securityBodyDataEx$2bbb0a39:Lmtopsdk/common/a/a;

    .line 214
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalSecurityBodyDataEx]set ISecurityBodyDataEx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-object p0
.end method

.method public setGlobalSign(Lmtopsdk/a/a;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 105
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->sign:Lmtopsdk/a/a;

    .line 106
    return-object p0
.end method

.method public setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 191
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->ttid:Ljava/lang/String;

    .line 192
    const-string v0, "ttid"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object p0
.end method

.method public setGlobalUtdid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3

    .prologue
    .line 172
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->utdid:Ljava/lang/String;

    .line 173
    const-string v0, "utdid"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setGlobalUtdid] utdid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-object p0
.end method
