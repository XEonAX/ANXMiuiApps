.class public Lcom/alibaba/baichuan/android/trade/AlibcTrade;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;
    }
.end annotation


# static fields
.field public static final ALI_URL:Ljava/lang/String; = "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$"

.field public static final ERRCODE_APPLINK_FAIL:Ljava/lang/String; = "03"

.field public static final ERRCODE_PAGE_H5:Ljava/lang/String; = "12"

.field public static final ERRCODE_PAGE_NATIVE:Ljava/lang/String; = "11"

.field public static final ERRCODE_PARAM_ERROR:Ljava/lang/String; = "01"

.field public static final ERRMSG_APPLINK_FAIL:Ljava/lang/String; = "applink\u8c03\u7528\u5931\u8d25"

.field public static final ERRMSG_LOAD_FAIL:Ljava/lang/String; = "\u52a0\u8f7d\u5931\u8d25"

.field public static final ERRMSG_PARAM_ERROR:Ljava/lang/String; = "\u53c2\u6570\u9519\u8bef"

.field public static final MONITOR_POINT_H5:Ljava/lang/String; = "Page_H5"

.field public static final MONITOR_POINT_NATIVE:Ljava/lang/String; = "Page_Native"

.field public static final SHOW_FAILURE:I = -0x1

.field public static final SHOW_H5:I = 0x1

.field public static final SHOW_NATIVE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/baichuan/android/trade/c/b;->a(Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->isNativeOpen(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;-><init>()V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Landroid/webkit/WebView;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;",
            "Landroid/webkit/WebView;",
            "Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;",
            "Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;",
            ")",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {p3}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    :cond_0
    invoke-static {p4}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcTradeHelper;->createUrlParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "AlibcTrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6784\u9020urlParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getGlobalTaokeParams()Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getTaokeParams()Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    move-result-object p5

    const-string v0, "AlibcTrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d41\u7a0b\u6dd8\u5ba2\u53c2\u6570\u4e3a\u7a7a,\u5168\u5c40\u6dd8\u5ba2\u53c2\u6570\u4e0d\u4e3a\u7a7a,\u91c7\u7528\u5168\u5c40\u6dd8\u5ba2\u53c2\u6570,taokeParams = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->isAdZoneIdExist()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->supportAid()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p5, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->pid:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    invoke-static {p3}, Lcom/alibaba/baichuan/android/trade/c/b;->a(Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    move-result-object v3

    invoke-static {p5}, Lcom/alibaba/baichuan/android/trade/c/b;->a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v4

    invoke-static {v1}, Lcom/alibaba/baichuan/android/trade/c/b;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    move-result-object v5

    new-instance v6, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;

    invoke-direct {v6, p6}, Lcom/alibaba/baichuan/android/trade/AlibcTrade$MyAlibcTradeCallback;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)V

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;)V

    return-object v0
.end method

.method private static a()V
    .locals 1

    const-string v0, "Page_Native"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "AlibcTrade"

    const-string v1, "sendUsabilityFailure"

    const-string v2, "tradePage is null!"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlarmUtils;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlibcTrade"

    const-string v1, "tradePage is null"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->isNativeOpen(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Page_Native"

    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getUsabilityPageType()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    const-string v1, "11"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Page_H5"

    goto :goto_1

    :cond_2
    const-string v1, "12"

    goto :goto_2
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getApi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appkey"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "taokeParam"

    if-nez p1, :cond_2

    const-string v0, "{}"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z
    .locals 4

    const/16 v3, 0xe

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "tradeProcessCallback"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/alibaba/baichuan/android/trade/c/a$a;->a(I[Ljava/lang/Object;)Lcom/alibaba/baichuan/android/trade/c/a$a;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alibaba/baichuan/android/trade/c/c;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Lcom/alibaba/baichuan/android/trade/c/a$a;)V

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Activity"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/alibaba/baichuan/android/trade/c/a$a;->a(I[Ljava/lang/Object;)Lcom/alibaba/baichuan/android/trade/c/a$a;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alibaba/baichuan/android/trade/c/c;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Lcom/alibaba/baichuan/android/trade/c/a$a;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->checkParams()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AlibcPage"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/alibaba/baichuan/android/trade/c/a$a;->a(I[Ljava/lang/Object;)Lcom/alibaba/baichuan/android/trade/c/a$a;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alibaba/baichuan/android/trade/c/c;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Lcom/alibaba/baichuan/android/trade/c/a$a;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isAliUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNativeOpen(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->isNativeOpen(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Z

    move-result v0

    return v0
.end method

.method public static show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebChromeClient;",
            "Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;",
            "Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;",
            "Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;",
            ")I"
        }
    .end annotation

    const-string v1, "AlibcTrade"

    const-string v2, "show\u6d41\u7a0b\u5f00\u59cb\u8c03\u7528"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->initResult:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/model/InitResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AlibcTrade"

    const-string v3, "\u521d\u59cb\u5316\u72b6\u6001\u5931\u8d25,show\u6d41\u7a0b\u7ed3\u675f"

    invoke-static {v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/model/InitResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-static {v0, v2, v1}, Lcom/alibaba/baichuan/android/trade/c/c;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;ILjava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/model/InitState;->isInitializing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AlibcTrade"

    const-string v2, "\u7535\u5546SDK\u6b63\u5728\u521d\u59cb\u5316,show\u6d41\u7a0b\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ea

    const-string v2, "\u521d\u59cb\u5316\u672a\u5b8c\u6210,\u8bf7\u7a0d\u540e!"

    move-object/from16 v0, p8

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/c/c;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;ILjava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOriginalOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    const-string v1, "AlibcTrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show\u6d41\u7a0b\u8c03\u7528\u53c2\u6570\u4e3a: activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n webView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n webViewClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n webChromeClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n tradePage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n showParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n taokeParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n trackParam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n tradeProcessCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-static {p4, p0, v0}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AlibcTrade"

    const-string v2, "\u68c0\u67e5\u53c2\u6570\u9519\u8bef,show\u6d41\u7a0b\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    new-instance p4, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    invoke-direct {p4}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;-><init>()V

    :cond_2
    invoke-static {p5}, Lcom/alibaba/baichuan/android/trade/c/b;->a(Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    move-result-object v1

    const-string v2, "\u53c2\u6570\u9519\u8bef"

    const-string v3, "01"

    invoke-static {p4, v1, p6, v2, v3}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {p4, p5, p6}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;

    move-result-object v8

    invoke-virtual {p4}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getPerformancePageType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->c()V

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->a()V

    const-string v1, "AlibcTrade"

    const-string v2, "\u521d\u59cb\u5316\u6784\u9020\u53c2\u6570"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p5

    move-object/from16 v5, p7

    move-object v6, p6

    move-object/from16 v7, p8

    invoke-static/range {v1 .. v7}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Landroid/webkit/WebView;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v6

    const-string v1, "AlibcTrade"

    const-string v2, "\u5224\u65ad\u6253\u5f00\u65b9\u5f0f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-static {p4, v1, p6}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->isNativeOpen(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "AlibcTrade"

    const-string v2, "Native\u65b9\u5f0f\u6253\u5f00"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->f()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;

    move-result-object v1

    invoke-virtual {p4, p0, v6, v1}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->openNative(Landroid/app/Activity;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/c;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AlibcTrade"

    const-string v2, "Native\u6253\u5f00\u6210\u529f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->d()V

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->e()V

    iget-object v1, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v2, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    invoke-static {p4, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v1, "AlibcTrade"

    const-string v2, "Native\u6253\u5f00\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    if-eqz v1, :cond_5

    iget-object v1, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->isNativeFailedNone()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "AlibcTrade"

    const-string v2, "\u7528\u6237\u4f20\u5165\u7684failMode\u4e3aNONE,\u5f53\u524d\u6d41\u7a0b\u7ed3\u675f"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a()Lcom/alibaba/baichuan/android/trade/usertracker/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b()V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a()Lcom/alibaba/baichuan/android/trade/usertracker/a;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->g()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a(Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;)V

    const-string v1, "AlibcTrade"

    const-string v2, "\u901a\u8fc7H5\u6253\u5f00\u6d41\u7a0b"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->g()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    move-result-object v7

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->openH5(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V

    :goto_1
    iget-object v1, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v2, v6, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    invoke-static {p4, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v1, "AlibcTrade"

    const-string v2, "\u901a\u8fc7H5\u6253\u5f00\u6d41\u7a0b"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a()Lcom/alibaba/baichuan/android/trade/usertracker/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b()V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a()Lcom/alibaba/baichuan/android/trade/usertracker/a;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->g()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a(Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;)V

    invoke-virtual {v8}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;->g()Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    move-result-object v7

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->openH5(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V

    goto :goto_1
.end method

.method public static show(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;",
            "Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;",
            "Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    move-result v0

    return v0
.end method
