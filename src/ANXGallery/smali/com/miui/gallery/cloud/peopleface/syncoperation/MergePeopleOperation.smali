.class public Lcom/miui/gallery/cloud/peopleface/syncoperation/MergePeopleOperation;
.super Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
.source "MergePeopleOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 27
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
    .line 42
    move-object v2, p2

    check-cast v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 44
    .local v2, "requestCloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getPeopleMergeUrl()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "renameGroupUrl":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "srcPeopleId"

    iget-object v5, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v5, v5, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "destPeopleId"

    iget-object v5, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v5, v5, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v3, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v4, 0x2

    .line 51
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    iget v4, v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->otherRetryTimes:I

    .line 54
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 55
    invoke-virtual {v3, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v3

    return-object v3
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 31
    instance-of v0, p1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 37
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
    .line 80
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 81
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    .line 83
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 62
    .local v1, "requestCloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    const-string v3, "record"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, "mergeJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MergePeopleOperation;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response record error"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->getContentValuesForPeopleFace(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v2

    .line 70
    .local v2, "values":Landroid/content/ContentValues;
    sget-object v3, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    iget-object v4, v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v4, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0
.end method
