.class public Lcom/alibaba/baichuan/android/trade/AlibcContext;
.super Ljava/lang/Object;


# static fields
.field public static ETICKET_URL:Ljava/lang/String;

.field public static HOME_URL:Ljava/lang/String;

.field public static MINI_SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static MY_ORDERS_URL:Ljava/lang/String;

.field public static PROMOTION_URL:Ljava/lang/String;

.field public static SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static SHOW_CART_URL:Ljava/lang/String;

.field public static TB_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static TB_SHOP_URL:Ljava/lang/String;

.field public static TMALL_ITEM_DETAIL_URL:Ljava/lang/String;

.field public static volatile context:Landroid/content/Context;

.field public static detailPatterns:[Ljava/lang/String;

.field public static volatile isShowTitleBar:Z

.field public static isVip:Z

.field public static nativeOpenPatterns:[Ljava/lang/String;

.field public static sclickPattern:Ljava/lang/String;

.field public static final shopPatterns:[Ljava/lang/String;

.field public static tunionUrlPatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/alibaba/baichuan/android/trade/AlibcContext;->isVip:Z

    sput-boolean v3, Lcom/alibaba/baichuan/android/trade/AlibcContext;->isShowTitleBar:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->detailPatterns:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://shop(.*)\\.(.*)\\.taobao.com/shop/shopIndex.htm(.*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->shopPatterns:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "^http[s]{0,1}:\\/\\/s\\.click\\.taobao\\.com\\/(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http[s]{0,1}:\\/\\/uland\\.taobao\\.com\\/(.*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->tunionUrlPatterns:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)"

    aput-object v1, v0, v2

    const-string v1, "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"

    aput-object v1, v0, v4

    const-string v1, "^http(s)?://shop\\.m\\.taobao\\.com/shop/shop_index\\.htm(.*)"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "^http(s)?://s\\.taobao\\.com/(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^http(s)?://s\\.click\\.taobao\\.com/(.*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->nativeOpenPatterns:[Ljava/lang/String;

    const-string v0, "^http(s)?://s\\.click\\.taobao\\.com/(.*)"

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->sclickPattern:Ljava/lang/String;

    const-string v0, "https://h5.m.taobao.com/"

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->HOME_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initData()V
    .locals 0

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/AlibcContext;->updateUrl()V

    return-void
.end method

.method public static updateUrl()V
    .locals 3

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.tmallTradeItemUrlHost"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->TMALL_ITEM_DETAIL_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.taobaoTradeItemUrlHost"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->TB_ITEM_DETAIL_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.taobaoMobileTradeItemUrlHost"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.myOrdersUrl"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->MY_ORDERS_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.eTicketDetailUrl"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->ETICKET_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.promotionsUrl"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->PROMOTION_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.shopUrlHost"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->TB_SHOP_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.cartUrl"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->SHOW_CART_URL:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->instance:Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;

    const-string v1, "trade.miniTaobaoItemUrlHost"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/AlibcUrlCenter;->getValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/Environment;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->MINI_SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

    return-void
.end method
