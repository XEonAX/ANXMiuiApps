.class public Lcom/alibaba/baichuan/trade/biz/alipay/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/alibaba/baichuan/trade/biz/alipay/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^http(s)?://(maliprod|mclient)\\.alipay\\.com/w/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "^http(s)?://(mobileclientgw|maliprod)\\.stable\\.alipay\\.net/w/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "^http(s)?://(maliprod|mclient)\\.alipay\\.com/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "^http(s)?://(mobileclientgw|maliprod)\\.stable\\.alipay\\.net/(trade_pay|batch_payment)\\.do(.*)$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/d;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/baichuan/trade/biz/alipay/d;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/alipay/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/d;->b:Lcom/alibaba/baichuan/trade/biz/alipay/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/alipay/d;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/d;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/d;->b:Lcom/alibaba/baichuan/trade/biz/alipay/d;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/alipay/d;->b:Lcom/alibaba/baichuan/trade/biz/alipay/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->getInstance()Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;

    move-result-object v1

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/alipay/e;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/baichuan/trade/biz/alipay/e;-><init>(Lcom/alibaba/baichuan/trade/biz/alipay/d;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V

    invoke-virtual {v1, v2, p1, p2}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->openAlipay(Lcom/alibaba/baichuan/trade/biz/alipay/AlipayCallback;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public interceptor(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->shouldUseAlipay(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/alipay/d;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/alipay/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
