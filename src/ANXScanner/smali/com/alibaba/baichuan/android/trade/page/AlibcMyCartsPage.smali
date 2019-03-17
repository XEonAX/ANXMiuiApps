.class public Lcom/alibaba/baichuan/android/trade/page/AlibcMyCartsPage;
.super Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;-><init>()V

    return-void
.end method


# virtual methods
.method public genOpenUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->SHOW_CART_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOWCART:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string v0, "myCart"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string v0, "05"

    return-object v0
.end method

.method public isBackWhenLoginFail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
