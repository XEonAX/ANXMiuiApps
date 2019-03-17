.class public Lcom/miui/gallery/cloud/peopleface/syncoperation/RecoveryPeopleOperation;
.super Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
.source "RecoveryPeopleOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    move-object v2, p2

    check-cast v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 48
    .local v2, "requestCloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v3, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getPeopleRecoveryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "recoveryGroupUrl":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-object v3, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v3, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "peopleName"

    iget-object v5, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v5, v5, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->peopleName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    new-instance v3, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v4, 0x2

    .line 56
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    iget v4, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->createRetryTimes:I

    .line 59
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    iget-boolean v4, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->needReRequest:Z

    .line 60
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v3

    return-object v3
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 35
    instance-of v0, p1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 67
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 69
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 73
    const-string v5, "record"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    .local v2, "recoveryJson":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/syncoperation/RecoveryPeopleOperation;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "response record null"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    :cond_0
    move-object v3, p1

    .line 79
    check-cast v3, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 80
    .local v3, "requestCloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    invoke-static {v2}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->getContentValuesForPeopleFace(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v4

    .line 81
    .local v4, "values":Landroid/content/ContentValues;
    if-nez v4, :cond_1

    .line 82
    new-instance v4, Landroid/content/ContentValues;

    .end local v4    # "values":Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v5, "visibilityType"

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 84
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    iget-object v5, v3, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v5, v5, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/provider/FaceManager;->getPeopleLocalFlagByLocalID(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "localFlag":I
    const/16 v5, 0xe

    if-eq v1, v5, :cond_2

    .line 89
    .local v0, "keepLocalFlag":Z
    :goto_1
    sget-object v5, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    iget-object v6, v3, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v6, v6, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v5, v4, v6, v0}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Z)V

    goto :goto_0

    .line 88
    .end local v0    # "keepLocalFlag":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
