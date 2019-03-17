.class public Lcom/alibaba/baichuan/android/trade/page/AlibcMiniDetailPage;
.super Lcom/alibaba/baichuan/android/trade/page/AlibcDetailPage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/android/trade/page/AlibcDetailPage;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->MINI_SHOUTAO_ITEM_DETAIL_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOW_MINI_ITEM_DETAIL:Ljava/lang/String;

    return-object v0
.end method

.method public requireOpenType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
