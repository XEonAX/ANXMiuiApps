.class public Lcom/ali/auth/third/login/LoginLifecycleAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "Member.LoginLifecycleAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Member.LoginLifecycleAdapter"

    const-string v1, "LoginLifecycle init "

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/ali/auth/third/core/service/RpcService;

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/RpcService;

    sput-object v0, Lcom/ali/auth/third/login/a/a;->d:Lcom/ali/auth/third/core/service/RpcService;

    const-class v0, Lcom/ali/auth/third/core/service/CredentialService;

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/CredentialService;

    sput-object v0, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    const-class v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/ali/auth/third/login/a/a;->e:Ljava/util/concurrent/ExecutorService;

    const-class v0, Lcom/ali/auth/third/core/service/StorageService;

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/StorageService;

    sput-object v0, Lcom/ali/auth/third/login/a/a;->c:Lcom/ali/auth/third/core/service/StorageService;

    new-instance v0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;

    invoke-direct {v0}, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;-><init>()V

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/ali/auth/third/ui/support/ActivityResultHandler;

    aput-object v2, v1, v4

    const-string v2, "requestCodeKey"

    sget v3, Lcom/ali/auth/third/login/RequestCode;->OPEN_H5_LOGIN:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/ali/auth/third/ui/support/ActivityResultHandler;

    aput-object v2, v1, v4

    const-string v2, "requestCodeKey"

    sget v3, Lcom/ali/auth/third/login/RequestCode;->OPEN_TAOBAO:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/ali/auth/third/ui/support/ActivityResultHandler;

    aput-object v2, v1, v4

    const-string v2, "requestCodeKey"

    sget v3, Lcom/ali/auth/third/login/RequestCode;->OPEN_DOUBLE_CHECK:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/ali/auth/third/ui/support/ActivityResultHandler;

    aput-object v2, v1, v4

    const-string v2, "requestCodeKey"

    sget v3, Lcom/ali/auth/third/login/RequestCode;->OPEN_QR_LOGIN:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/ali/auth/third/ui/support/ActivityResultHandler;

    aput-object v2, v1, v4

    const-string v2, "requestCodeKey"

    sget v3, Lcom/ali/auth/third/login/RequestCode;->OPEN_QR_LOGIN_CONFIRM:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ali/auth/third/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    const-string v0, "$isv_scope$"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/ali/auth/third/login/LoginServiceImpl;

    invoke-direct {v1}, Lcom/ali/auth/third/login/LoginServiceImpl;-><init>()V

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lcom/ali/auth/third/login/LoginService;

    aput-object v3, v2, v4

    invoke-static {v2, v1, v0}, Lcom/ali/auth/third/core/context/KernelContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/ali/auth/third/core/registry/ServiceRegistration;

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/auth/third/login/util/LoginStatus;->init(Landroid/content/Context;)V

    return-void
.end method
