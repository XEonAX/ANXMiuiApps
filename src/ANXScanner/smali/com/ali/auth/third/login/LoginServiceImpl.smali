.class public Lcom/ali/auth/third/login/LoginServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/login/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/auth/third/login/LoginServiceImpl$a;
    }
.end annotation


# instance fields
.field private transient a:[Ljava/util/regex/Pattern;

.field private transient b:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 3

    const-string v0, "login"

    const-string v1, "auth goLogin"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p2, Lcom/ali/auth/third/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 3

    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->getInternalSession()Lcom/ali/auth/third/core/model/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->autoLoginToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->getInternalSession()Lcom/ali/auth/third/core/model/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ali/auth/third/core/service/impl/CredentialManager;->INSTANCE:Lcom/ali/auth/third/core/service/impl/CredentialManager;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/service/impl/CredentialManager;->getInternalSession()Lcom/ali/auth/third/core/model/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/auth/third/core/model/InternalSession;->user:Lcom/ali/auth/third/core/model/User;

    iget-object v0, v0, Lcom/ali/auth/third/core/model/User;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "login"

    const-string v1, "auth auto login"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/auth/third/login/task/LoginByReTokenTask;

    const/4 v1, 0x0

    new-instance v2, Lcom/ali/auth/third/login/LoginServiceImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/ali/auth/third/login/LoginServiceImpl$3;-><init>(Lcom/ali/auth/third/login/LoginServiceImpl;Lcom/ali/auth/third/core/callback/LoginCallback;)V

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/login/task/LoginByReTokenTask;-><init>(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/login/task/LoginByReTokenTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/ali/auth/third/core/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/auth/third/login/LoginServiceImpl;Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/auth/third/login/LoginServiceImpl;->a(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/login/LoginServiceImpl;Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/auth/third/login/LoginServiceImpl;->a(Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/auth/third/core/callback/LoginCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "login"

    const-string v1, "goQrCodeLogin start"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p2, Lcom/ali/auth/third/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "login_type"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "params"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/ali/auth/third/core/util/JSONUtils;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/ali/auth/third/core/callback/LoginCallback;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "login"

    const-string v2, "auth static field is null"

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x2772

    const-string v2, "NullPointException"

    invoke-interface {p1, v0, v2}, Lcom/ali/auth/third/core/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "withNoActivity"

    const-string v4, "true"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    const-string v4, "auth"

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/ali/auth/third/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v1, v2}, Lcom/ali/auth/third/login/util/LoginStatus;->compareAndSetLogining(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "login"

    const-string v2, "auth sdk is Logining, return"

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ali/auth/third/core/util/CommonUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "login"

    const-string v2, "auth network not available"

    invoke-static {v0, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2773

    const-string v2, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v2}, Lcom/ali/auth/third/core/util/ResourceUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/ali/auth/third/core/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public auth(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 2

    const-string v0, "login"

    const-string v1, "auth start"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ali/auth/third/login/LoginServiceImpl;->b(Lcom/ali/auth/third/core/callback/LoginCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "login"

    const-string v1, "AutnEnvriment invalid"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ali/auth/third/login/LoginServiceImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ali/auth/third/login/LoginServiceImpl$1;-><init>(Lcom/ali/auth/third/login/LoginServiceImpl;Lcom/ali/auth/third/core/callback/LoginCallback;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/ali/auth/third/login/LoginServiceImpl;->a(Lcom/ali/auth/third/core/callback/LoginCallback;)V

    goto :goto_0
.end method

.method public auth(Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ali/auth/third/login/LoginServiceImpl;->auth(Landroid/app/Activity;Lcom/ali/auth/third/core/callback/LoginCallback;)V

    return-void
.end method

.method public checkSessionValid()Z
    .locals 1

    sget-object v0, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/CredentialService;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/auth/third/ui/context/CallbackContext;->loginCallback:Ljava/lang/Object;

    return-void
.end method

.method public getSession()Lcom/ali/auth/third/core/model/Session;
    .locals 1

    sget-object v0, Lcom/ali/auth/third/login/a/a;->b:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/CredentialService;->getSession()Lcom/ali/auth/third/core/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->a:[Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/auth/third/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/auth/third/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    const-string v2, "[,]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->a:[Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->a:[Ljava/util/regex/Pattern;

    array-length v3, v1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->a:[Ljava/util/regex/Pattern;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->a:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public isLogoutUrl(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->b:[Ljava/util/regex/Pattern;

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/auth/third/core/config/ConfigManager;->LOGOUT_URLS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/ali/auth/third/core/config/ConfigManager;->LOGOUT_URLS:Ljava/lang/String;

    const-string v2, "[,]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v1, v1, [Ljava/util/regex/Pattern;

    iput-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->b:[Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->b:[Ljava/util/regex/Pattern;

    array-length v3, v1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->b:[Ljava/util/regex/Pattern;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ali/auth/third/login/LoginServiceImpl;->b:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public logout(Landroid/app/Activity;Lcom/ali/auth/third/login/callback/LogoutCallback;)V
    .locals 3

    const-class v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    const-string v1, "logout"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/auth/third/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/ali/auth/third/login/task/LogoutTask;

    invoke-direct {v0, p1, p2}, Lcom/ali/auth/third/login/task/LogoutTask;-><init>(Landroid/app/Activity;Lcom/ali/auth/third/login/callback/LogoutCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/login/task/LogoutTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public logout(Lcom/ali/auth/third/login/callback/LogoutCallback;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "withNoActivity"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    const-string v2, "logout"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/ali/auth/third/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ali/auth/third/login/LoginServiceImpl;->logout(Landroid/app/Activity;Lcom/ali/auth/third/login/callback/LogoutCallback;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshCookie(Lcom/ali/auth/third/core/callback/CommonCallback;)V
    .locals 3

    new-instance v0, Lcom/ali/auth/third/login/LoginServiceImpl$a;

    invoke-direct {v0, p0, p1}, Lcom/ali/auth/third/login/LoginServiceImpl$a;-><init>(Lcom/ali/auth/third/login/LoginServiceImpl;Lcom/ali/auth/third/core/callback/CommonCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ali/auth/third/login/LoginServiceImpl$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setLoginCallback(Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 0

    sput-object p1, Lcom/ali/auth/third/ui/context/CallbackContext;->mGlobalLoginCallback:Lcom/ali/auth/third/core/callback/LoginCallback;

    return-void
.end method

.method public setWebViewProxy(Lcom/ali/auth/third/core/WebViewProxy;)V
    .locals 0

    sput-object p1, Lcom/ali/auth/third/core/context/KernelContext;->mWebViewProxy:Lcom/ali/auth/third/core/WebViewProxy;

    return-void
.end method

.method public showQrCodeLogin(Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/auth/third/core/callback/LoginCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/ali/auth/third/login/LoginServiceImpl;->b(Lcom/ali/auth/third/core/callback/LoginCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ali/auth/third/login/LoginServiceImpl$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/ali/auth/third/login/LoginServiceImpl$2;-><init>(Lcom/ali/auth/third/login/LoginServiceImpl;Lcom/ali/auth/third/core/callback/LoginCallback;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/ali/auth/third/login/LoginServiceImpl;->a(Lcom/ali/auth/third/core/callback/LoginCallback;)V

    goto :goto_0
.end method
