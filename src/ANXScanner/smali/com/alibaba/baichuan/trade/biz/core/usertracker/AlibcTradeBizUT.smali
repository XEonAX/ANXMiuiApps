.class public Lcom/alibaba/baichuan/trade/biz/core/usertracker/AlibcTradeBizUT;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendInitHit4DAU()V
    .locals 3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    const-string v1, "19"

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->systemVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendInitHit4DAU(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
