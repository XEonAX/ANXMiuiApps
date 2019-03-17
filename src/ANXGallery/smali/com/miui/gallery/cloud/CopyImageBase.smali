.class public abstract Lcom/miui/gallery/cloud/CopyImageBase;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "CopyImageBase.java"


# instance fields
.field protected mAlbumId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected appendValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 185
    return-void
.end method

.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "requestId":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "isShared":Z
    move-object v5, p2

    .line 77
    check-cast v5, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 79
    .local v5, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v0, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 82
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalImageId()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0, v2, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getServerIdByLocalId(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_0
    :goto_0
    iget-object v0, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 91
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v0

    .line 90
    invoke-static {v4, v0}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v1

    .line 93
    .local v1, "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/cloud/CopyImageBase;->getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "copyImageUrl":Ljava/lang/String;
    iget-object v0, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "serverTag":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_1
    return-object v0

    .line 83
    .end local v1    # "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    .end local v6    # "copyImageUrl":Ljava/lang/String;
    .end local v9    # "serverTag":Ljava/lang/String;
    :cond_2
    iget-object v0, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 86
    const/4 v4, 0x1

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalImageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getShareIdByLocalId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 102
    .restart local v1    # "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    .restart local v6    # "copyImageUrl":Ljava/lang/String;
    .restart local v9    # "serverTag":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "content"

    iget-object v10, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 103
    .local v8, "postData":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v7, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "tag"

    iget-object v10, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v10}, Lcom/miui/gallery/data/DBImage;->getServerTag()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v2, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getAlbumIdTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mAlbumId:Ljava/lang/String;

    invoke-direct {v0, v2, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    if-eqz v4, :cond_4

    .line 107
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "sharedGalleryId"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_4
    new-instance v0, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v2, 0x2

    .line 111
    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v0

    iget v2, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    .line 115
    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v0

    iget-boolean v2, v5, Lcom/miui/gallery/cloud/RequestCloudItem;->needReRequest:Z

    .line 116
    invoke-virtual {v0, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected abstract getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
.end method

.method protected abstract getAlbumIdTagName()Ljava/lang/String;
.end method

.method protected abstract getBaseUri()Landroid/net/Uri;
.end method

.method protected abstract getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
.end method

.method protected abstract handleSubUbiSchema(Lorg/json/JSONObject;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract isToShare()Z
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 9
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 37
    instance-of v5, p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v5, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item is not instanceof RequestCloudItem."

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 70
    :goto_0
    return-object v5

    :cond_0
    move-object v4, p1

    .line 41
    check-cast v4, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 43
    .local v4, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "copy image start: %s"

    iget-object v7, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v7}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/CopyImageBase;->getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mAlbumId:Ljava/lang/String;

    .line 46
    iget-object v5, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mAlbumId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    iget-object v2, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 49
    .local v2, "image":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "copy image but albumId can\'t find id[%s], localGroupId[%s]"

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    iget-object v5, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mContext:Landroid/content/Context;

    const-string v7, "_id"

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    .line 51
    .local v0, "album":Lcom/miui/gallery/data/DBImage;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    if-eqz v0, :cond_1

    .line 55
    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    const-string v5, "album"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v5, "path"

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "localFlag"

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v5, "Sync"

    const-string v6, "album_not_find_when_sync_media"

    invoke-static {v5, v6, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 64
    .end local v0    # "album":Lcom/miui/gallery/data/DBImage;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "image":Lcom/miui/gallery/data/DBImage;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v5, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    iget-object v6, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/data/DBImage;->setRequestAlbumId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;->isSpaceFull(Lcom/miui/gallery/cloud/RequestCloudItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 70
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v5

    goto/16 :goto_0
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
    .line 122
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 123
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 125
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 129
    move-object v2, p1

    check-cast v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 132
    .local v2, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    const-string v5, "content"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    .local v0, "contentCopyedJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "response content null"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->isToShare()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v4

    .line 140
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/CopyImageBase;->appendValues(Landroid/content/ContentValues;)V

    .line 143
    const-string v5, "serverId"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "serverId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/CopyImageBase;->mContext:Landroid/content/Context;

    const-string v7, "serverId"

    invoke-static {v5, v6, v7, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v1

    .line 146
    .local v1, "dbImage":Lcom/miui/gallery/data/DBImage;
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id = ?"

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 148
    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 147
    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item has already exist."

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v5, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v5, v4, v8}, Lcom/miui/gallery/cloud/CloudUtils;->renameItemIfNeeded(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;Z)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getBaseUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v5, v4, v6}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 157
    iget-object v5, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/miui/gallery/cloud/CopyImageBase;->handleSubUbiSchema(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageBase;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copy image succeed and end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v7}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
