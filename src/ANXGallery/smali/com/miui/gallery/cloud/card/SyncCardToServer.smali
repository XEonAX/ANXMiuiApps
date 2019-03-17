.class public Lcom/miui/gallery/cloud/card/SyncCardToServer;
.super Ljava/lang/Object;
.source "SyncCardToServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private syncCreateCard(Lcom/miui/gallery/card/Card;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 57
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/gallery/card/CardManager;->getCardInfoFromCard(Lcom/miui/gallery/card/Card;)Lcom/miui/gallery/card/CardSyncInfo;

    move-result-object v1

    .line 58
    .local v1, "cardSyncInfo":Lcom/miui/gallery/card/CardSyncInfo;
    new-instance v5, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    new-instance v6, Lcom/miui/gallery/cloud/card/SyncCardToServer$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloud/card/SyncCardToServer$1;-><init>(Lcom/miui/gallery/cloud/card/SyncCardToServer;)V

    invoke-direct {v5, v6}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;-><init>(Lcom/miui/gallery/cloud/card/network/RequestArguments;)V

    const-string v6, "data"

    .line 69
    invoke-static {v1}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v2

    .line 71
    .local v2, "commonGalleryRequestHelper":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<Lcom/miui/gallery/cloud/card/model/CardCreateResult;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->executeSync()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/card/model/CardCreateResult;

    .line 72
    .local v0, "cardCreateResult":Lcom/miui/gallery/cloud/card/model/CardCreateResult;
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->updateCard(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardCreateResult;)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/miui/gallery/cloud/card/exception/NoResultException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .end local v0    # "cardCreateResult":Lcom/miui/gallery/cloud/card/model/CardCreateResult;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v4

    .line 74
    .local v4, "requestError":Lcom/miui/gallery/net/base/RequestError;
    const-string v5, "SyncCardToServer"

    const-string v6, "Post CreateCard failed, %s"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    .end local v4    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :catch_1
    move-exception v3

    .line 76
    .local v3, "e":Lcom/miui/gallery/cloud/card/exception/NoResultException;
    const-string v5, "SyncCardToServer"

    const-string v6, "Post CreateCard failed, %s"

    invoke-static {v5, v6, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateCard(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardCreateResult;)V
    .locals 12
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "cardCreateResult"    # Lcom/miui/gallery/cloud/card/model/CardCreateResult;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 136
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardCreateResult;->getGalleryCard()Lcom/miui/gallery/cloud/card/model/CardInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 137
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardCreateResult;->isDuplicate()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 139
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardCreateResult;->getGalleryCard()Lcom/miui/gallery/cloud/card/model/CardInfo;

    move-result-object v2

    .line 140
    .local v2, "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v4, v5

    .line 141
    .local v4, "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v0, v5

    .line 142
    .local v0, "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    if-nez v0, :cond_0

    .line 143
    move-object v0, v4

    .line 145
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v3, v5

    .line 146
    .local v3, "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_2
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    const-class v7, Lcom/miui/gallery/card/Card$CardExtraInfo;

    invoke-static {v5, v7}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/Card$CardExtraInfo;

    .line 148
    .local v1, "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 149
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setTitle(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setDescription(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/Card;->setCardExtraInfo(Lcom/miui/gallery/card/Card$CardExtraInfo;)V

    .line 152
    invoke-static {v0}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setAllMediaSha1s(Ljava/util/List;)V

    .line 153
    invoke-static {v4}, Lcom/miui/gallery/card/CardUtil;->getSha1sByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const-string v7, "cardCardFromServer"

    invoke-virtual {p1, v5, v7}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;Ljava/lang/String;)V

    .line 154
    invoke-static {v3}, Lcom/miui/gallery/card/CardUtil;->getCoverMediaItemsByServerIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setCoverMediaFeatureItems(Ljava/util/List;)V

    .line 155
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getScenarioId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setScenarioId(I)V

    .line 156
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 158
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isAppCreate()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setCreateBy(I)V

    .line 159
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getSortTime()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/card/Card;->setCreateTime(J)V

    .line 160
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 168
    .end local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .end local v2    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    .end local v3    # "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :goto_4
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v5

    invoke-virtual {v5, p1, v6}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    .line 170
    :cond_2
    return-void

    .line 140
    .restart local v2    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    :cond_3
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getMediaList()Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 141
    .restart local v4    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getAllMediaList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 145
    .restart local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getMediaInfo()Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/card/model/CardInfo$MediaInfoBean;->getCoverMediaList()Ljava/util/List;

    move-result-object v3

    goto/16 :goto_2

    .line 158
    .restart local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .restart local v3    # "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    const/4 v5, 0x1

    goto :goto_3

    .line 161
    .end local v0    # "allMediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "cardExtraInfo":Lcom/miui/gallery/card/Card$CardExtraInfo;
    .end local v2    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    .end local v3    # "mediaCoverServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "mediaServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerTag()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardCreateResult;->getGalleryCard()Lcom/miui/gallery/cloud/card/model/CardInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    .line 162
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardCreateResult;->getGalleryCard()Lcom/miui/gallery/cloud/card/model/CardInfo;

    move-result-object v2

    .line 163
    .restart local v2    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 165
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    goto :goto_4
.end method

.method private updateCard(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    .locals 4
    .param p1, "card"    # Lcom/miui/gallery/card/Card;
    .param p2, "cardInfo"    # Lcom/miui/gallery/cloud/card/model/CardInfo;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerTag()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 175
    const-string v0, "SyncCardToServer"

    const-string/jumbo v1, "updateCard after SyncCardToServer"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/card/Card;->setServerId(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getTag()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setServerTag(J)V

    .line 178
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/card/model/CardInfo;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gallery/card/Card;->setUpdateTime(J)V

    .line 179
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/card/CardManager;->update(Lcom/miui/gallery/card/Card;Z)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public sync()V
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/miui/gallery/card/CardManager;->getUnsynchronizedCards(I)Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "cardList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    .line 37
    .local v0, "card":Lcom/miui/gallery/card/Card;
    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 48
    const-string v3, "SyncCardToServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get local card flag error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getLocalFlag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncCreateCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncModifyCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->syncDeleteCard(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 53
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    :cond_0
    return-void

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public syncDeleteCard(Lcom/miui/gallery/card/Card;)V
    .locals 7
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 108
    new-instance v4, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    new-instance v5, Lcom/miui/gallery/cloud/card/SyncCardToServer$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/cloud/card/SyncCardToServer$3;-><init>(Lcom/miui/gallery/cloud/card/SyncCardToServer;)V

    invoke-direct {v4, v5}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;-><init>(Lcom/miui/gallery/cloud/card/network/RequestArguments;)V

    const-string v5, "cardId"

    .line 118
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v1

    .line 120
    .local v1, "commonGalleryRequestHelper":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->executeSync()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/card/model/CardInfo;

    .line 121
    .local v0, "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/card/model/CardInfo;->isStatusDelete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/miui/gallery/card/CardManager;->delete(Lcom/miui/gallery/card/Card;Z)V

    .line 123
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v4

    const-string v5, "serverSynced"

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/CardManager;->recordCardDeleteReason(Ljava/lang/String;)V

    .line 132
    .end local v0    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    :goto_0
    return-void

    .line 125
    .restart local v0    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    :cond_0
    const-string v4, "SyncCardToServer"

    const-string v5, "Post DeleteCard failed!"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/miui/gallery/cloud/card/exception/NoResultException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 127
    .end local v0    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    :catch_0
    move-exception v3

    .line 128
    .local v3, "requestError":Lcom/miui/gallery/net/base/RequestError;
    const-string v4, "SyncCardToServer"

    const-string v5, "Post DeleteCard failed, %s"

    invoke-static {v4, v5, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v3    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e":Lcom/miui/gallery/cloud/card/exception/NoResultException;
    const-string v4, "SyncCardToServer"

    const-string v5, "Post DeleteCard failed, %s"

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public syncModifyCard(Lcom/miui/gallery/card/Card;)V
    .locals 8
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 83
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/gallery/card/CardManager;->getCardInfoFromCard(Lcom/miui/gallery/card/Card;)Lcom/miui/gallery/card/CardSyncInfo;

    move-result-object v1

    .line 84
    .local v1, "cardSyncInfo":Lcom/miui/gallery/card/CardSyncInfo;
    new-instance v5, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    new-instance v6, Lcom/miui/gallery/cloud/card/SyncCardToServer$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloud/card/SyncCardToServer$2;-><init>(Lcom/miui/gallery/cloud/card/SyncCardToServer;)V

    invoke-direct {v5, v6}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;-><init>(Lcom/miui/gallery/cloud/card/network/RequestArguments;)V

    const-string v6, "data"

    .line 94
    invoke-static {v1}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v5

    const-string v6, "cardId"

    .line 95
    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v2

    .line 97
    .local v2, "commonGalleryRequestHelper":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->executeSync()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/card/model/CardInfo;

    .line 98
    .local v0, "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/cloud/card/SyncCardToServer;->updateCard(Lcom/miui/gallery/card/Card;Lcom/miui/gallery/cloud/card/model/CardInfo;)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/miui/gallery/cloud/card/exception/NoResultException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v0    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "requestError":Lcom/miui/gallery/net/base/RequestError;
    const-string v5, "SyncCardToServer"

    const-string v6, "Post ModifyCard failed, %s"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    .end local v4    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :catch_1
    move-exception v3

    .line 102
    .local v3, "e":Lcom/miui/gallery/cloud/card/exception/NoResultException;
    const-string v5, "SyncCardToServer"

    const-string v6, "Post ModifyCard failed, %s"

    invoke-static {v5, v6, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
