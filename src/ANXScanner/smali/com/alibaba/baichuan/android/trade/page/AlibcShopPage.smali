.class public Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;
.super Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkParams()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->TB_SHOP_URL:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?shop_id=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOWSHOP:Ljava/lang/String;

    return-object v0
.end method

.method public getApplinkData()Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;
    .locals 3

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcShopPage;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string v0, "shop"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string v0, "02"

    return-object v0
.end method

.method public needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
