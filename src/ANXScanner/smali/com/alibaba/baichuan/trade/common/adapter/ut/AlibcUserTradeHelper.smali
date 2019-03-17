.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgs()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/ArgsInfo;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/ArgsInfo;-><init>()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/ArgsInfo;->appKey:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->systemVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/ArgsInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/ArgsInfo;->getJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->getArgs()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    const-string v1, "BCTradeSDK"

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendUseabilitySuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v1

    const-string v2, "BCTradeSDK"

    invoke-virtual {v1, v2, p0, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
