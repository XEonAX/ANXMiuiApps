.class public Lcom/ali/auth/third/core/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/ali/auth/third/core/callback/InitResultCallback;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/core/callback/InitResultCallback;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ali/auth/third/core/task/a;->a:Lcom/ali/auth/third/core/callback/InitResultCallback;

    iput-object p2, p0, Lcom/ali/auth/third/core/task/a;->b:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/core/task/a;)Lcom/ali/auth/third/core/callback/InitResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/task/a;->a:Lcom/ali/auth/third/core/callback/InitResultCallback;

    return-object v0
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

.method private a(Lcom/ali/auth/third/core/registry/a;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "init"

    const-string v3, "registerStorage"

    invoke-static {v0, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/ali/auth/third/core/context/KernelContext;->isMini:Z

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->SDK_VERSION_STD:Ljava/lang/String;

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->sdkVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    const-string v0, "com.ali.auth.third.securityguard.SecurityGuardWrapper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ali/auth/third/core/service/StorageService;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v4}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    const-class v0, Lcom/ali/auth/third/core/service/StorageService;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Lcom/ali/auth/third/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/StorageService;

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->storageService:Lcom/ali/auth/third/core/service/StorageService;

    move v0, v2

    :goto_2
    return v0

    :cond_0
    const-string v0, "com.ali.auth.third.core.storage.CommonStorageServiceImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private b(Lcom/ali/auth/third/core/registry/a;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "init"

    const-string v3, "registerRpc"

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "com.ali.auth.third.mtop.rpc.impl.MtopRpcServiceImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "com.ali.auth.third.mtop.rpc.impl.MtopRpcServiceImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ali/auth/third/core/service/RpcService;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-interface {p1, v3, v2, v4}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v2

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "com.ali.auth.third.core.rpc.CommRpcServiceImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_2
.end method

.method private c()V
    .locals 1

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/auth/third/core/device/DeviceInfo;->init(Landroid/content/Context;)V

    return-void
.end method

.method private c(Lcom/ali/auth/third/core/registry/a;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "init"

    const-string v3, "registerUserTrack"

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.ali.auth.third.ut.UserTrackerImpl"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v3, v2, v4}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/ali/auth/third/core/service/UserTrackerService;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-interface {p1, v3, v2, v4}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    :goto_2
    return v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "com.ali.auth.third.core.ut.UserTracer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    move v0, v1

    goto :goto_2
.end method

.method private d()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->wrapServiceRegistry()V

    invoke-static {}, Lcom/ali/auth/third/core/config/ConfigManager;->getInstance()Lcom/ali/auth/third/core/config/ConfigManager;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/auth/third/core/task/a;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ali/auth/third/core/config/ConfigManager;->init(I)V

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->serviceRegistry:Lcom/ali/auth/third/core/registry/a;

    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/task/a;->b(Lcom/ali/auth/third/core/registry/a;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/task/a;->a(Lcom/ali/auth/third/core/registry/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/task/a;->c(Lcom/ali/auth/third/core/registry/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "plugin.vendor"

    const-string v4, "kernel"

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/ali/auth/third/core/service/MemberExecutorService;

    aput-object v5, v4, v1

    const-class v5, Ljava/util/concurrent/ExecutorService;

    aput-object v5, v4, v2

    sget-object v5, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    invoke-interface {v0, v4, v5, v3}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/ali/auth/third/core/service/CredentialService;

    aput-object v4, v3, v1

    sget-object v4, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    const-string v5, "scop"

    const-string v6, "system"

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/ali/auth/third/core/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    const-class v3, Lcom/ali/auth/third/core/service/CredentialService;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/ali/auth/third/core/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/CredentialService;

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->credentialService:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_2
    sget-boolean v1, Lcom/ali/auth/third/core/context/KernelContext;->isMini:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->g()Z

    :cond_3
    const-string v1, "init"

    const-string v2, "INIT SUCCESS"

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    const-string v0, "init"

    const-string v1, "register login service"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "com.ali.auth.third.login.LoginLifecycleAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.ali.auth.third.login.LoginLifecycleAdapter"

    const-string v2, "init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/ali/auth/third/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    const/4 v0, 0x1

    const-string v1, "init"

    const-string v2, "register offline login service"

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "com.ali.auth.third.offline.login.LoginLifecycleAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.ali.auth.third.offline.login.LoginLifecycleAdapter"

    const-string v3, "init"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/ali/auth/third/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ali/auth/third/core/context/KernelContext;->supportOfflineLogin:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 5

    const-string v0, "init"

    const-string v1, "register account link service"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "com.ali.auth.third.accountlink.AccountLinkLifecycleAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.ali.auth.third.accountlink.AccountLinkLifecycleAdapter"

    const-string v2, "init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/ali/auth/third/core/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->i()J

    move-result-wide v0

    const-string v2, "init"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeStamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v0, Lcom/ali/auth/third/core/context/KernelContext;->timestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/ali/auth/third/core/task/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "init"

    const-string v1, " INIT FAILURE"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/core/task/a$1;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/core/task/a$1;-><init>(Lcom/ali/auth/third/core/task/a;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "init"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->executorService:Lcom/ali/auth/third/core/service/MemberExecutorService;

    new-instance v1, Lcom/ali/auth/third/core/task/a$2;

    invoke-direct {v1, p0}, Lcom/ali/auth/third/core/task/a$2;-><init>(Lcom/ali/auth/third/core/task/a;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/service/MemberExecutorService;->postUITask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    const-string v0, "init"

    const-string v1, "INIT SUCCESS"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private i()J
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "init"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    instance-of v0, p1, Lcom/ali/auth/third/core/exception/AlibabaSDKException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ali/auth/third/core/exception/AlibabaSDKException;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->getSDKMessage()Lcom/ali/auth/third/core/message/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ali/auth/third/core/exception/AlibabaSDKException;

    invoke-virtual {p1}, Lcom/ali/auth/third/core/exception/AlibabaSDKException;->getSDKMessage()Lcom/ali/auth/third/core/message/Message;

    move-result-object v0

    iget v1, v0, Lcom/ali/auth/third/core/message/Message;->code:I

    iget-object v0, v0, Lcom/ali/auth/third/core/message/Message;->message:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/ali/auth/third/core/task/a;->a:Lcom/ali/auth/third/core/callback/InitResultCallback;

    invoke-static {v2, v1, v0}, Lcom/ali/auth/third/core/util/CommonUtils;->onFailure(Lcom/ali/auth/third/core/callback/FailureCallback;ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x271a

    invoke-static {p1}, Lcom/ali/auth/third/core/util/CommonUtils;->toString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ali/auth/third/core/config/ConfigManager;->SDK_VERSION:Lcom/ali/auth/third/core/config/Version;

    invoke-virtual {v3}, Lcom/ali/auth/third/core/config/Version;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->c()V

    sget-boolean v1, Lcom/ali/auth/third/core/context/KernelContext;->syncInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ali/auth/third/core/context/KernelContext;->syncInitialized:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "init"

    const-string v2, "fail to sync start"

    invoke-static {v1, v2, v0}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-direct {p0}, Lcom/ali/auth/third/core/task/a;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/ali/auth/third/core/task/a;->b()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "init"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/core/task/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/ali/auth/third/core/task/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/auth/third/core/task/a;->b()V

    throw v0
.end method
