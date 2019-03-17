.class public Lcom/alibaba/baichuan/trade/biz/login/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Lcom/alibaba/baichuan/trade/biz/login/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^http(s)?://login\\.(.*)\\.taobao.com/login\\.htm(.*)$"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://login\\.tmall\\.com(.*)$"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "^http(s)?://login.taobao.com/member/login.jhtml(.*)$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "^http(s)?://login\\.(.*)\\.taobao\\.com/logout(.*)$"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->b:[Ljava/lang/String;

    const-string v0, "https://h5.m.taobao.com/"

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/baichuan/trade/biz/login/d;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/login/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->d:Lcom/alibaba/baichuan/trade/biz/login/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/login/d;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/login/d;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->d:Lcom/alibaba/baichuan/trade/biz/login/d;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->d:Lcom/alibaba/baichuan/trade/biz/login/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/login/d;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/d;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "AlibcLoginInterceptor"

    const-string v2, "\u62e6\u622a\u5230loginUrl"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getLoginDegarade(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AlibcLoginInterceptor"

    const-string v2, "loginDegarade = false,\u76f4\u63a5\u91c7\u7528H5\u8fdb\u884c\u767b\u5f55"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "AlibcLoginInterceptor"

    const-string v1, "\u8c03\u7528login sdk\u63a5\u53e3"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/login/f;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/f;-><init>(Lcom/alibaba/baichuan/trade/biz/login/d;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->showLogin(Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/webkit/WebView;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appkey"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getSession()Lcom/ali/auth/third/core/model/Session;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/auth/third/core/model/Session;->openId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utdid"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ttid"

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->getTTID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ybhpss"

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/d;->c(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOWLOGIN:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private c(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    const-string v2, "ybhpss"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    const-string v1, "ybhpss"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public interceptor(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/login/d;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/login/d;->a(Landroid/webkit/WebView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/login/d;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AlibcLoginInterceptor"

    const-string v1, "\u62e6\u622a\u5230logoutUrl,\u8c03\u7528login sdk\u767b\u51fa\u63a5\u53e3"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/login/e;

    invoke-direct {v1, p0}, Lcom/alibaba/baichuan/trade/biz/login/e;-><init>(Lcom/alibaba/baichuan/trade/biz/login/d;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->logout(Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/login/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
