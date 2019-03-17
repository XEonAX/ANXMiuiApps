.class public Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;
.super Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;


# static fields
.field public static API_NAME:Ljava/lang/String;

.field public static detailPatterns:[Ljava/lang/String;

.field public static final shopPatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "AliBCAppLink"

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->API_NAME:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->detailPatterns:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://shop(.*)\\.(.*)\\.taobao.com/shop/shopIndex.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->shopPatterns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpDOWNLOAD:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpBROWER:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "needBackBtn"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v0, "backURL"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "alisdk://"

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "shop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "https://shop.m.taobao.com/shop/shop_index.htm?shop_id=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "detail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "https://h5.m.taobao.com/awp/core/detail.htm?id=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "pid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_1
    const-string v2, "subpid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v1

    :goto_2
    const-string v3, "unionId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v1

    :goto_3
    const-string v4, "adzoneid"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    move-object v4, v1

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    new-instance v5, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    invoke-direct {v5}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;-><init>()V

    invoke-virtual {v5, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setSubPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setUnionId(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setAdzoneid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    invoke-virtual {v5}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    const-string v0, "pid"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v5

    goto :goto_0

    :cond_4
    const-string v0, "pid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v2, "subpid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const-string v3, "unionId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    const-string v4, "adzoneid"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method static synthetic b(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->detailPatterns:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "shop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "detail"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "shopId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->shopPatterns:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "itemId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->g(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "linkKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v1, "6"

    invoke-direct {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v4, "params"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v7, v3

    :goto_1
    if-eqz v2, :cond_3

    if-nez v7, :cond_4

    :cond_3
    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v1, "6"

    invoke-direct {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v3

    goto :goto_1

    :cond_4
    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/util/Map;)Ljava/lang/String;

    const-string v1, "failMode"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    if-nez v1, :cond_5

    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v1, "6"

    invoke-direct {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v8

    goto :goto_0

    :cond_5
    invoke-direct {p0, v7, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->isApplinkSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-direct {p0, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v1, "6"

    invoke-direct {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v8

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v7, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v1, "6"

    invoke-direct {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v8

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v4

    new-instance v5, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;

    invoke-direct {v5, p0, v1, v3, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/a;-><init>(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v8, v2, v0, v4, v5}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcAidCompoment;->genTaokeUrl(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->RET_SUCCESS:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->success(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v8

    goto/16 :goto_0

    :cond_8
    const-string v4, "shop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v6

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->g(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpShop(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v0

    :cond_9
    :goto_3
    iget-boolean v0, v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->RET_SUCCESS:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->success(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    :goto_4
    move v0, v8

    goto/16 :goto_0

    :cond_a
    const-string v4, "detail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v6

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->g(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpDetail(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v0

    goto :goto_3

    :cond_b
    const-string v4, "url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->getInstance()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;

    move-result-object v0

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v6

    invoke-direct {p0, v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplinkPlugin;->g(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcApplink;->jumpTBURI(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;

    move-result-object v0

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->RET_FAIL:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-virtual {p3, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method
