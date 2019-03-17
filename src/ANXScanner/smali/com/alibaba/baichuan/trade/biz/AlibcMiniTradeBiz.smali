.class public Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/CountDownLatch;

.field public static channel:Ljava/lang/String;

.field public static systemVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3.1.1.209"

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->systemVersion:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->channel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static getTTID()Ljava/lang/String;
    .locals 4

    const-string v0, "2014_%s_%s@baichuan_android_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->channel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->systemVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init()Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;
    .locals 7

    const/16 v6, 0x66

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;-><init>()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->init()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/urlroute/a;->a()Lcom/alibaba/baichuan/trade/biz/urlroute/a;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->registInterceptor(Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;)V

    new-array v1, v4, [Z

    aput-boolean v5, v1, v5

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    move-result-object v2

    new-instance v3, Lcom/alibaba/baichuan/trade/biz/a;

    invoke-direct {v3, v1}, Lcom/alibaba/baichuan/trade/biz/a;-><init>([Z)V

    invoke-virtual {v2, v3}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->init(Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->init()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink$AlibcApplinkResult;->result:I

    if-eqz v2, :cond_1

    :cond_0
    const/16 v1, 0x65

    iput v1, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    const-string v1, "Applink\u521d\u59cb\u5316\u5931\u8d25"

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->getInstance()Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->init()V

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/a/a;->a:Ljava/lang/String;

    const-class v3, Lcom/alibaba/baichuan/trade/biz/core/a/a;

    invoke-static {v2, v3, v4}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->init()V

    :try_start_0
    sget-object v2, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    aget-boolean v1, v1, v5

    if-nez v1, :cond_2

    iput v6, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    const-string v1, "\u767b\u5f55\u521d\u59cb\u5316\u5931\u8d25"

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "init"

    const-string v3, "\u95ed\u9501\u8d85\u65f6"

    invoke-static {v2, v3, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v6, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    const-string v1, "\u767b\u5f55\u521d\u59cb\u5316\u6ca1\u6709\u8fd4\u56de"

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-boolean v4, v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    goto :goto_0
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 4

    sput-object p0, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->channel:Ljava/lang/String;

    const-string v0, "2014_%s_%s@baichuan_android_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->systemVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->setTTID(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->setTTID(Ljava/lang/String;)V

    return-void
.end method

.method public static turnOffDebug()V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->turnOffDebug()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->turnOffDebug()V

    return-void
.end method

.method public static turnOnDebug()V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->getInstance()Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->turnOnDebug()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->turnOnDebug()V

    return-void
.end method
