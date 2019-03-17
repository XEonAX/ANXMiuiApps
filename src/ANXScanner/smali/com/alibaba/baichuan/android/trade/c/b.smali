.class public Lcom/alibaba/baichuan/android/trade/c/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;
    .locals 4

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setBackUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getClientType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setClientType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setNativeOpenFailedMode(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->isClose()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setIsClose(Z)V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Auto:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    if-ne v2, v3, :cond_1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->H5:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->getOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setOriginalOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->isProxyWebview()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setProxyWebview(Z)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->isShowTitleBar()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setShowTitleBar(Z)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->setTitle(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->getOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Native:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Native:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;-><init>()V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->subPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setSubPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->unionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setUnionId(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    invoke-virtual {p0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->isAdZoneIdExist()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->adzoneid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->adzoneid:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->extraParams:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->extraParams:Ljava/util/Map;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;"
        }
    .end annotation

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method
