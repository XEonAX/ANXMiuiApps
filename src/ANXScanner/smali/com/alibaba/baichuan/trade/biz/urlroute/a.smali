.class public Lcom/alibaba/baichuan/trade/biz/urlroute/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;


# static fields
.field static final a:[Ljava/lang/String;

.field private static b:Lcom/alibaba/baichuan/trade/biz/urlroute/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/cm/snap/index\\.html(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/order\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/cart\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/bag\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/mlapp/cart\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/cart/order\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/mlapp/olist\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "^http(s)?://shop\\.(.*)\\.taobao\\.com/shop/shopIndex\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^http(s)?://shop\\.(.*)\\.taobao\\.com/shop/shop_index\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "^http(s)?://h5\\.(.*)\\.taobao\\.com/trade/detail\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "^http(s)?://buy\\.(.*)\\.tmall\\.(com|hk)/order/confirmOrderWap\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "^http(s)?://((?!(login|buy|s.click))\\.)(.*)\\.tmall\\.com(.*)$"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "^http(s)?://buy\\.(.*)\\.tmall\\.(com|hk)/order/confirm_order_wap\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "^http(s)?://cart\\.(.*)\\.tmall\\.(com|hk)/cart/myCart\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "^http(s)?://h5\\.(.*)\\.tmall\\.(com|hk)/awp/base/order\\.htm(.*)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "^http(s)?://h5\\.(.*)\\.tmall\\.(com|hk)/cart/order\\.htm(.*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/urlroute/a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/baichuan/trade/biz/urlroute/a;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/urlroute/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/urlroute/a;->b:Lcom/alibaba/baichuan/trade/biz/urlroute/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/urlroute/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/urlroute/a;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/urlroute/a;->b:Lcom/alibaba/baichuan/trade/biz/urlroute/a;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/urlroute/a;->b:Lcom/alibaba/baichuan/trade/biz/urlroute/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public interceptor(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "AlibcTradeParamInterceptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fdb\u5165\u5230\u52a0\u53c2\u6570\u62e6\u622a\u5668,url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/urlroute/a;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AlibcTradeParamInterceptor"

    const-string v2, "\u8be5url\u4e0d\u6ee1\u8db3\u5339\u914d\u89c4\u5219"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    const-string v2, "AlibcTradeParamInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62e6\u622a\u52a0\u53c2\u7684\u53c2\u6570\u4e3a, urlParams = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;

    invoke-direct {v2, p2}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;->getAddParamsUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "AlibcTradeParamInterceptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u53c2\u6570\u540e\u7684url\u4e0e\u539f\u6765\u7684url\u4e0d\u4e00\u6837,\u91cd\u65b0\u8c03\u7528webview.loadUrl,\u65b0\u7684url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
