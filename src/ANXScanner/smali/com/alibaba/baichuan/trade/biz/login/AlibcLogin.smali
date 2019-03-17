.class public Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin$a;
    }
.end annotation


# static fields
.field public static final LOGIN_INIT_AD:I = 0x1

.field public static final LOGIN_INIT_SUCCESS:I = 0x0

.field public static final LOGIN_SUCCESS:I = 0x2

.field public static final LOGOUT_SUCCESS:I = 0x3


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/ali/auth/third/login/LoginService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a:I

    const-string v0, "context\u5bf9\u8c61\u4e3a\u7a7a\u5bfc\u81f4\u5931\u8d25"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->b:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->c:I

    const-string v0, "loginService\u5bf9\u8c61\u4e3a\u7a7a\u5bfc\u81f4\u5931\u8d25"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/baichuan/trade/biz/login/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)Lcom/ali/auth/third/login/LoginService;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/ali/auth/third/login/LoginService;)Lcom/ali/auth/third/login/LoginService;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    return-object p1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/common/Environment;->TEST:Lcom/alibaba/baichuan/trade/common/Environment;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/common/Environment;->PRE:Lcom/alibaba/baichuan/trade/common/Environment;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->ONLINE:Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "Login"

    const-string v1, "\u767b\u5f55\u53d6\u6d88"

    const-string v2, "140102"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Login"

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    const-string v2, "140101"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->c:I

    return v0
.end method

.method private b()V
    .locals 1

    const-string v0, "Login"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->b()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin$a;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    return-object v0
.end method


# virtual methods
.method public getSession()Lcom/ali/auth/third/core/model/Session;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    invoke-interface {v0}, Lcom/ali/auth/third/login/LoginService;->getSession()Lcom/ali/auth/third/core/model/Session;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized init(Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AlibcLogin"

    const-string v1, "\u521d\u59cb\u5316AlibcLogin"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "AlibcLogin"

    const-string v1, "AlibcLogin \u5df2\u7ecf\u521d\u59cb\u5316\u8fc7\u4e86"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onSuccess(I)V

    :cond_1
    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    if-nez v0, :cond_2

    const-string v0, "AlibcLogin"

    const-string v1, "AlibcTradeCommon.context \u4e3a\u7a7a,\u5bfc\u81f4\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a:I

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a()V

    const-string v0, "AlibcLogin"

    const-string v1, "\u521d\u59cb\u5316 MemberSDK"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/login/a;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/a;-><init>(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/MemberSDK;->init(Landroid/content/Context;Lcom/ali/auth/third/core/callback/InitResultCallback;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/d;->a()Lcom/alibaba/baichuan/trade/biz/login/d;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->registInterceptor(Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    invoke-interface {v0}, Lcom/ali/auth/third/login/LoginService;->checkSessionValid()Z

    move-result v0

    goto :goto_0
.end method

.method public logout(Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V
    .locals 2

    const-string v0, "AlibcLogin"

    const-string v1, "\u767b\u51fa\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "AlibcLogin"

    const-string v1, "\u6ca1\u6709\u521d\u59cb\u5316\u6210\u529f\u6216\u8005loginService=null,\u5bfc\u81f4\u8c03\u7528\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->c:I

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "AlibcLogin"

    const-string v1, "\u8c03\u7528loginService.logout\u8fdb\u884c\u767b\u51fa"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/login/c;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/c;-><init>(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/login/LoginService;->logout(Lcom/ali/auth/third/login/callback/LogoutCallback;)V

    goto :goto_0
.end method

.method public showLogin(Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V
    .locals 2

    const-string v0, "AlibcLogin"

    const-string v1, "\u767b\u5f55\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "AlibcLogin"

    const-string v1, "\u6ca1\u6709\u521d\u59cb\u5316\u6210\u529f\u6216\u8005loginService=null,\u5bfc\u81f4\u8c03\u7528\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->c:I

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "AlibcLogin"

    const-string v1, "\u8c03\u7528loginService.auth\u8fdb\u884c\u6388\u6743"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->f:Lcom/ali/auth/third/login/LoginService;

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/login/b;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/b;-><init>(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/login/LoginService;->auth(Lcom/ali/auth/third/core/callback/LoginCallback;)V

    goto :goto_0
.end method

.method public turnOffDebug()V
    .locals 0

    invoke-static {}, Lcom/ali/auth/third/core/MemberSDK;->turnOffDebug()V

    return-void
.end method

.method public turnOnDebug()V
    .locals 0

    invoke-static {}, Lcom/ali/auth/third/core/MemberSDK;->turnOnDebug()V

    return-void
.end method
