.class public Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;


# static fields
.field public static final RE_ADDCART_SUCCESS_URLS:[Ljava/lang/String;

.field public static final RE_DETAIL_URLS:[Ljava/lang/String;

.field public static final RE_SHOP_URLS:[Ljava/lang/String;

.field public static final RE_TBOPEN_URLS:[Ljava/lang/String;

.field private static a:Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/baichuanWebViewBridge?(.*)addCart=success(.*)$"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_ADDCART_SUCCESS_URLS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://shop(.*)\\.(.*)\\.taobao.com/shop/shopIndex.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_SHOP_URLS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_DETAIL_URLS:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "^tbopen://m.taobao\\.com/tbopen/index\\.htm(.*)$"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_TBOPEN_URLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alisdk://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nativeTaobao/handleraction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/applink/a;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/a;-><init>(Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    const-string v0, "taobao"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->isApplinkSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Auto:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->isForceH5()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;

    invoke-direct {v0, p2}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;-><init>(Ljava/lang/String;)V

    const-string v1, "shop_id"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v6, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v5, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    iget-object v1, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_2

    const-string v5, "taobao"

    :goto_1
    iget-object v7, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpShop(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_2
    move v8, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getClientType()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    goto :goto_2
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Auto:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->isForceH5()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;

    invoke-direct {v0, p2}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/urlroute/AlibcUriContext;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v7, :cond_0

    iget-object v6, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v5, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    iget-object v1, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_2

    const-string v5, "taobao"

    :goto_1
    iget-object v7, v7, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpDetail(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_2
    move v8, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getClientType()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a:Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a:Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a:Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;
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
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->getContext(Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "TbopenHandlerAction"

    const-string v2, "execute"

    const-string v3, "url is null"

    invoke-static {v1, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlarmUtils;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_ADDCART_SUCCESS_URLS:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a(Landroid/webkit/WebView;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Auto:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {v2, v3}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_TBOPEN_URLS:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_DETAIL_URLS:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)Z

    move-result v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->regular:Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->RE_SHOP_URLS:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcURLCheck;->check([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcAppLinkInterceptor;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)Z

    move-result v0

    goto :goto_0
.end method
