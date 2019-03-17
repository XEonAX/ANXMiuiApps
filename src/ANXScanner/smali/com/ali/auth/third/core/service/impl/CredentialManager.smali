.class public Lcom/ali/auth/third/core/service/impl/CredentialManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/core/service/CredentialService;


# static fields
.field public static final INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Lcom/ali/auth/third/core/model/InternalSession;

.field public internalSessionStoreKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    new-instance v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-direct {v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;-><init>()V

    sput-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "internal_session"

    iput-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->internalSessionStoreKey:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    iput-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    new-instance v1, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/User;-><init>()V

    iput-object v1, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ali/auth/third/core/util/ReflectionUtils;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->serviceRegistry:Lcom/ali/auth/third/core/registry/a;

    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a(Lcom/ali/auth/third/core/registry/a;)V

    :cond_0
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    const-string v1, "loginEnvironmentIndex"

    invoke-interface {v0, v1, v3}, Lcom/ali/auth/third/core/service/StorageService;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/auth/third/core/config/Environment;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    const-string v2, "loginEnvironmentIndex"

    invoke-interface {v0, v2, v1, v3}, Lcom/ali/auth/third/core/service/StorageService;->putValue(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/auth/third/core/service/StorageService;->removeValue(Ljava/lang/String;Z)V

    new-instance v0, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    iput-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    new-instance v1, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/User;-><init>()V

    iput-object v1, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/auth/third/core/service/StorageService;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/ali/auth/third/core/service/StorageService;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->createInternalSession(Ljava/lang/String;)Lcom/ali/auth/third/core/model/InternalSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    iput-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    new-instance v1, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/User;-><init>()V

    iput-object v1, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    goto :goto_0
.end method

.method private a(Lcom/ali/auth/third/core/model/InternalSession;)V
    .locals 4

    iput-object p1, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    iget-object v1, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->internalSessionStoreKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/ali/auth/third/core/util/SystemUtils;->toInternalSessionJSON(Lcom/ali/auth/third/core/model/InternalSession;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/auth/third/core/service/StorageService;->putValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/ali/auth/third/core/registry/a;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/ali/auth/third/core/context/KernelContext;->isMini:Z

    sget-object v1, Lcom/ali/auth/third/core/context/KernelContext;->SDK_VERSION_STD:Ljava/lang/String;

    sput-object v1, Lcom/ali/auth/third/core/context/KernelContext;->sdkVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    const-string v0, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/ali/auth/third/core/service/StorageService;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    const-class v0, Lcom/ali/auth/third/core/service/StorageService;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ali/auth/third/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/StorageService;

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    :goto_2
    return-void

    :cond_0
    const-string v0, "com.ali.auth.third.core.storage.CommonStorageServiceImpl"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public adjustSessionExpireTime(JJ)J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v2, v0, p3

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    sub-long/2addr v0, p3

    add-long/2addr p1, v0

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    const-wide/32 v2, 0x15180

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public createInternalSession(Ljava/lang/String;)Lcom/ali/auth/third/core/model/InternalSession;
    .locals 6

    new-instance v1, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->sid:Ljava/lang/String;

    const-string v0, "expireIn"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/ali/auth/third/core/model/InternalSession;->expireIn:J

    new-instance v3, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v3}, Lcom/ali/auth/third/core/model/User;-><init>()V

    const-string v0, "user"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "avatarUrl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ali/auth/third/core/model/User;->avatarUrl:Ljava/lang/String;

    const-string v4, "userId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    const-string v4, "nick"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ali/auth/third/core/model/User;->nick:Ljava/lang/String;

    const-string v4, "openId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ali/auth/third/core/model/User;->openId:Ljava/lang/String;

    const-string v4, "openSid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ali/auth/third/core/model/User;->openSid:Ljava/lang/String;

    const-string v4, "deviceTokenKey"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ali/auth/third/core/model/User;->deviceTokenKey:Ljava/lang/String;

    const-string v4, "deviceTokenSalt"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/auth/third/core/model/User;->deviceTokenSalt:Ljava/lang/String;

    iget-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/ali/auth/third/core/service/RpcService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/RpcService;

    iget-object v4, v1, Lcom/ali/auth/third/core/model/InternalSession;->sid:Ljava/lang/String;

    iget-object v5, v3, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Lcom/ali/auth/third/core/service/RpcService;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v3, v1, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    const-string v0, "loginTime"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ali/auth/third/core/model/InternalSession;->loginTime:J

    const-string v0, "mobile"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->mobile:Ljava/lang/String;

    const-string v0, "loginId"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->loginId:Ljava/lang/String;

    const-string v0, "autoLoginToken"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->autoLoginToken:Ljava/lang/String;

    const-string v0, "topAccessToken"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->topAccessToken:Ljava/lang/String;

    const-string v0, "topExpireTime"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->topExpireTime:Ljava/lang/String;

    const-string v0, "topAuthCode"

    invoke-static {v2, v0}, Lcom/ali/auth/third/core/util/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->topAuthCode:Ljava/lang/String;

    const-string v0, "otherInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/auth/third/core/util/JSONUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/auth/third/core/model/InternalSession;->otherInfo:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getInternalSession()Lcom/ali/auth/third/core/model/InternalSession;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    return-object v0
.end method

.method public getSession()Lcom/ali/auth/third/core/model/Session;
    .locals 2

    new-instance v1, Lcom/ali/auth/third/core/model/Session;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/Session;-><init>()V

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    if-nez v0, :cond_5

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->userid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    if-nez v0, :cond_6

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->nick:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    if-nez v0, :cond_7

    :cond_2
    const-string v0, ""

    :goto_2
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->avatarUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    if-nez v0, :cond_8

    :cond_3
    const-string v0, ""

    :goto_3
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->openId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    if-nez v0, :cond_9

    :cond_4
    const-string v0, ""

    :goto_4
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->openSid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_5
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->topAccessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_6
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->topAuthCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_7
    iput-object v0, v1, Lcom/ali/auth/third/core/model/Session;->topExpireTime:Ljava/lang/String;

    return-object v1

    :cond_5
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->nick:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->avatarUrl:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->openId:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->openSid:Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->topAccessToken:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->topAuthCode:Ljava/lang/String;

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->topExpireTime:Ljava/lang/String;

    goto :goto_7
.end method

.method public isSessionValid()Z
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    const-string v3, "func isSessionValid"

    invoke-static {v0, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    const-string v1, "isSessionValid()  internalSession is null"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-wide v4, v0, Lcom/ali/auth/third/core/model/InternalSession;->loginTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-wide v4, v0, Lcom/ali/auth/third/core/model/InternalSession;->expireIn:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    const-string v1, "isSessionValid()  loginTime is 0 or expireIn is 0"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSessionValid()  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-wide v8, v0, Lcom/ali/auth/third/core/model/InternalSession;->expireIn:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v10

    iget-object v0, p0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->b:Lcom/ali/auth/third/core/model/InternalSession;

    iget-wide v6, v0, Lcom/ali/auth/third/core/model/InternalSession;->expireIn:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public logout()Lcom/ali/auth/third/core/model/ResultCode;
    .locals 2

    sget-object v0, Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;->INSTANCE:Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;->clearCookies()V

    new-instance v0, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    new-instance v1, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/User;-><init>()V

    iput-object v1, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a(Lcom/ali/auth/third/core/model/InternalSession;)V

    sget-object v0, Lcom/ali/auth/third/core/model/ResultCode;->SUCCESS:Lcom/ali/auth/third/core/model/ResultCode;

    return-object v0
.end method

.method public refreshWhenLogin(Lcom/ali/auth/third/core/model/LoginReturnData;)V
    .locals 11

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/ali/auth/third/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v9}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/ali/auth/third/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/ali/auth/third/core/model/LoginDataModel;

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/util/JSONUtils;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ali/auth/third/core/model/LoginDataModel;

    move-object v8, v0

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->externalCookies:[Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->externalCookies:[Ljava/lang/String;

    new-instance v10, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v10}, Lcom/ali/auth/third/core/model/User;-><init>()V

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->userId:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->nick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->nick:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->nick:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->openId:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->openId:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->openSid:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->openSid:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->headPicLink:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->avatarUrl:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->email:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->email:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->loginServiceExt:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->loginServiceExt:Ljava/util/Map;

    const-string v3, "1688ext"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_3

    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->loginServiceExt:Ljava/util/Map;

    const-string v4, "1688ext"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const-string v2, "loginId"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->cbuLoginId:Ljava/lang/String;

    const-string v2, "memberId"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->memberId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    :try_start_4
    iget-object v2, p1, Lcom/ali/auth/third/core/model/LoginReturnData;->deviceToken:Lcom/ali/auth/third/core/model/DeviceTokenRO;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ali/auth/third/core/model/LoginReturnData;->deviceToken:Lcom/ali/auth/third/core/model/DeviceTokenRO;

    iget-object v2, v2, Lcom/ali/auth/third/core/model/DeviceTokenRO;->salt:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->deviceTokenSalt:Ljava/lang/String;

    iget-object v2, p1, Lcom/ali/auth/third/core/model/LoginReturnData;->deviceToken:Lcom/ali/auth/third/core/model/DeviceTokenRO;

    iget-object v2, v2, Lcom/ali/auth/third/core/model/DeviceTokenRO;->key:Ljava/lang/String;

    iput-object v2, v10, Lcom/ali/auth/third/core/model/User;->deviceTokenKey:Ljava/lang/String;

    :cond_4
    new-instance v2, Lcom/ali/auth/third/core/model/HistoryAccount;

    iget-object v3, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->userId:Ljava/lang/String;

    iget-object v4, v10, Lcom/ali/auth/third/core/model/User;->deviceTokenKey:Ljava/lang/String;

    iget-object v5, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->nick:Ljava/lang/String;

    iget-object v6, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->phone:Ljava/lang/String;

    iget-object v7, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->email:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/ali/auth/third/core/model/HistoryAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/auth/third/core/history/AccountHistoryManager;->getInstance()Lcom/ali/auth/third/core/history/AccountHistoryManager;

    move-result-object v3

    iget-object v4, v10, Lcom/ali/auth/third/core/model/User;->deviceTokenSalt:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/ali/auth/third/core/history/AccountHistoryManager;->putLoginHistory(Lcom/ali/auth/third/core/model/HistoryAccount;Ljava/lang/String;)V

    iput-object v10, v9, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-wide v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->loginTime:J

    iput-wide v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->loginTime:J

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->sid:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->sid:Ljava/lang/String;

    iget-wide v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->expires:J

    iget-wide v4, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->loginTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->adjustSessionExpireTime(JJ)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->expireIn:J

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->loginPhone:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->mobile:Ljava/lang/String;

    iget-object v2, p1, Lcom/ali/auth/third/core/model/LoginReturnData;->showLoginId:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->loginId:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->autoLoginToken:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->autoLoginToken:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->topAccessToken:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->topAccessToken:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->topAuthCode:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->topAuthCode:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->topExpireTime:Ljava/lang/String;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->topExpireTime:Ljava/lang/String;

    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->extendAttribute:Ljava/util/Map;

    iput-object v2, v9, Lcom/ali/auth/third/core/model/InternalSession;->otherInfo:Ljava/util/Map;

    const-class v2, Lcom/ali/auth/third/core/service/RpcService;

    invoke-static {v2}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ali/auth/third/core/service/RpcService;

    iget-object v3, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->sid:Ljava/lang/String;

    iget-object v4, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->userId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/ali/auth/third/core/service/RpcService;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v3, 0x0

    :try_start_5
    iget-object v2, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->extendAttribute:Ljava/util/Map;

    const-string v4, "ssoDomainList"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v4, v2, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    :try_start_6
    sget-object v3, Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;->INSTANCE:Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;

    iget-object v4, v8, Lcom/ali/auth/third/core/model/LoginDataModel;->cookies:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;->injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    const-string v2, "session"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/ali/auth/third/core/model/InternalSession;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a(Lcom/ali/auth/third/core/model/InternalSession;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_7
    sget-object v3, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    move-object v2, v3

    goto :goto_3

    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

.method public refreshWhenOfflineLogin(Lcom/ali/auth/third/core/model/AccountContract;)V
    .locals 4

    new-instance v0, Lcom/ali/auth/third/core/model/InternalSession;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/InternalSession;-><init>()V

    new-instance v1, Lcom/ali/auth/third/core/model/User;

    invoke-direct {v1}, Lcom/ali/auth/third/core/model/User;-><init>()V

    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    invoke-virtual {p1}, Lcom/ali/auth/third/core/model/AccountContract;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ali/auth/third/core/service/StorageService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/auth/third/core/model/User;->nick:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ali/auth/third/core/model/AccountContract;->getOpenid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/auth/third/core/model/User;->openId:Ljava/lang/String;

    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    invoke-virtual {p1}, Lcom/ali/auth/third/core/model/AccountContract;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ali/auth/third/core/service/StorageService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->a(Lcom/ali/auth/third/core/model/InternalSession;)V

    return-void
.end method
