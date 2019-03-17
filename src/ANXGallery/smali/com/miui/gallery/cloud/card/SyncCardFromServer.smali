.class public Lcom/miui/gallery/cloud/card/SyncCardFromServer;
.super Ljava/lang/Object;
.source "SyncCardFromServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->mAccount:Landroid/accounts/Account;

    .line 37
    return-void
.end method


# virtual methods
.method public getCardInfoList(JLjava/lang/String;J)Lcom/miui/gallery/cloud/card/model/CardInfoList;
    .locals 6
    .param p1, "syncTag"    # J
    .param p3, "syncExtraInfo"    # Ljava/lang/String;
    .param p4, "limit"    # J

    .prologue
    .line 71
    new-instance v3, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    new-instance v4, Lcom/miui/gallery/cloud/card/SyncCardFromServer$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/cloud/card/SyncCardFromServer$1;-><init>(Lcom/miui/gallery/cloud/card/SyncCardFromServer;)V

    invoke-direct {v3, v4}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;-><init>(Lcom/miui/gallery/cloud/card/network/RequestArguments;)V

    const-string/jumbo v4, "syncTag"

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v3

    const-string v4, "limit"

    .line 82
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v3

    const-string/jumbo v4, "syncExtraInfo"

    .line 83
    invoke-virtual {v3, v4, p3}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v3

    const-string v4, "language"

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v3

    const/4 v4, 0x0

    .line 85
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->setUseCache(Z)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v0

    .line 87
    .local v0, "commonGalleryRequestHelper":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<Lcom/miui/gallery/cloud/card/model/CardInfoList;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->executeSync()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/card/model/CardInfoList;
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/miui/gallery/cloud/card/exception/NoResultException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    return-object v3

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "requestError":Lcom/miui/gallery/net/base/RequestError;
    const-string v3, "SyncCardFromServer"

    const-string v4, "Get getCardInfoList failed, %s"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .end local v2    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Lcom/miui/gallery/cloud/card/exception/NoResultException;
    const-string v3, "SyncCardFromServer"

    const-string v4, "Get getCardInfoList failed, %s"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getOperationCards(Ljava/lang/String;Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;)V
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->mAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 106
    .local v1, "isLoggedIn":Z
    :goto_0
    new-instance v3, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    new-instance v4, Lcom/miui/gallery/cloud/card/SyncCardFromServer$2;

    invoke-direct {v4, p0, v1}, Lcom/miui/gallery/cloud/card/SyncCardFromServer$2;-><init>(Lcom/miui/gallery/cloud/card/SyncCardFromServer;Z)V

    invoke-direct {v3, v4}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;-><init>(Lcom/miui/gallery/cloud/card/network/RequestArguments;)V

    const-string v4, "limit"

    const-wide/16 v6, 0xa

    .line 116
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v3

    const-string v4, "cardId"

    .line 117
    invoke-virtual {v3, v4, p1}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v3

    .line 118
    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->setUseCache(Z)Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;

    move-result-object v0

    .line 120
    .local v0, "commonGalleryRequestHelper":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<Lcom/miui/gallery/cloud/card/model/CardInfoList;>;"
    new-instance v2, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;-><init>(Lcom/miui/gallery/cloud/card/SyncCardFromServer;Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;->execute(Lcom/miui/gallery/cloud/card/network/ResponseCallback;)V

    .line 140
    return-void

    .end local v0    # "commonGalleryRequestHelper":Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper;, "Lcom/miui/gallery/cloud/card/network/CommonGalleryRequestHelper<Lcom/miui/gallery/cloud/card/model/CardInfoList;>;"
    .end local v1    # "isLoggedIn":Z
    :cond_0
    move v1, v2

    .line 105
    goto :goto_0
.end method

.method public sync()V
    .locals 12

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 42
    .local v10, "startTime":J
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 68
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getCardSyncTag(Landroid/accounts/Account;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->mAccount:Landroid/accounts/Account;

    .line 46
    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getCardSyncInfo(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0xa

    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->getCardInfoList(JLjava/lang/String;J)Lcom/miui/gallery/cloud/card/model/CardInfoList;

    move-result-object v7

    .line 47
    .local v7, "cardInfoList":Lcom/miui/gallery/cloud/card/model/CardInfoList;
    if-eqz v7, :cond_3

    .line 48
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/card/model/CardInfoList;->getGalleryCards()Ljava/util/ArrayList;

    move-result-object v8

    .line 49
    .local v8, "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/card/model/CardInfo;

    .line 51
    .local v6, "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/miui/gallery/card/CardManager;->updateCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)V

    goto :goto_1

    .line 55
    .end local v6    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/card/model/CardInfoList;->getSyncTag()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setCardSyncTag(Landroid/accounts/Account;J)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v7}, Lcom/miui/gallery/cloud/card/model/CardInfoList;->getSyncExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setCardSyncInfo(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/card/model/CardInfoList;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/CardManager;->triggerGuaranteeScenarios(Z)V

    .line 66
    .end local v8    # "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    :cond_3
    const-string v0, "SyncCardFromServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sync story card from server finish, cost time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
