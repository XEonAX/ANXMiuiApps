.class public Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;
.super Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
.source "MoveFaceOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/RequestItemBase;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 55
    .local v3, "multiRequestItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v1, "ids":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/RequestItemBase;

    .local v6, "requestSingleItem":Lcom/miui/gallery/cloud/RequestItemBase;
    move-object v0, v6

    .line 57
    check-cast v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 58
    .local v0, "cloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 59
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    iget-object v8, v0, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v8, v8, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v0    # "cloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    .end local v6    # "requestSingleItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-virtual {p0, v7}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;->getPeopleId(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "peopleId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "people id is empty"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v7, 0x0

    .line 85
    :goto_1
    return-object v7

    .line 72
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "destPeopleId"

    invoke-direct {v7, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "faceIds"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getFaceMoveUrl()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "moveUrl":Ljava/lang/String;
    new-instance v7, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v8, 0x2

    .line 80
    invoke-virtual {v7, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 81
    invoke-virtual {v7, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 82
    invoke-virtual {v7, v4}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    iget v8, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 83
    invoke-virtual {v7, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    iget-boolean v8, p2, Lcom/miui/gallery/cloud/RequestItemBase;->needReRequest:Z

    .line 84
    invoke-virtual {v7, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 85
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v7

    goto :goto_1
.end method

.method public getLimitCountForOperation()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0xa

    return v0
.end method

.method protected getPeopleId(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)Ljava/lang/String;
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const-string v2, "serverId"

    const-string v3, "_id"

    iget-object v4, p1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v4, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getStringColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 3
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/RequestItemBase;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    .local v0, "multiRequestItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const-string v1, "MoveFaceOperation"

    const-string v2, "multiRequest items is null."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    if-nez v1, :cond_2

    .line 46
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 49
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v1

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
    .line 90
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 91
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 93
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    const-string/jumbo v4, "successResults"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    .local v0, "contentMovedJson":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "success result null"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 107
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "record"

    .line 108
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 107
    invoke-static {v4}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->getContentValuesForPeopleFace(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v3

    .line 110
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v4, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const-string v5, "serverId"

    .line 111
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v4, v3, v5}, Lcom/miui/gallery/cloud/CloudUtils;->updateToPeopleFaceDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
