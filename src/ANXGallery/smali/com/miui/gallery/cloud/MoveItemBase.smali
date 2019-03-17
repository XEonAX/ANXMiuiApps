.class public abstract Lcom/miui/gallery/cloud/MoveItemBase;
.super Lcom/miui/gallery/cloud/RequestOperationBase;
.source "MoveItemBase.java"


# instance fields
.field protected mAlbumId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/RequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract appendAlbumIdParameter(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected abstract appendValues(Landroid/content/ContentValues;)V
.end method

.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 43
    move-object v4, p2

    check-cast v4, Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 44
    .local v4, "requestCloudItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v0, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 45
    .local v0, "dbImage":Lcom/miui/gallery/data/DBImage;
    const/4 v5, 0x0

    .line 46
    .local v5, "serverId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalImageId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 48
    iget-object v8, p0, Lcom/miui/gallery/cloud/MoveItemBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalImageId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/miui/gallery/cloud/CloudUtils;->getServerIdByLocalId(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v5

    .line 55
    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/gallery/cloud/MoveItemBase;->getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/gallery/cloud/MoveItemBase;->mAlbumId:Ljava/lang/String;

    .line 57
    iget-object v8, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    iget-object v9, p0, Lcom/miui/gallery/cloud/MoveItemBase;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/data/DBImage;->setRequestAlbumId(Ljava/lang/String;)V

    .line 59
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/miui/gallery/cloud/MoveItemBase;->mAlbumId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    :cond_0
    :goto_1
    return-object v7

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 69
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/MoveItemBase;->appendAlbumIdParameter(Ljava/util/ArrayList;)V

    .line 73
    iget-object v8, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v8}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v8

    iget-object v9, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isVideoType()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v6

    .line 75
    .local v6, "urlProvider":Lcom/miui/gallery/cloud/CloudUrlProvider;
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v8, v5, v4}, Lcom/miui/gallery/cloud/MoveItemBase;->getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "moveImageUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "content"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    .local v3, "postData":Lorg/json/JSONObject;
    new-instance v7, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    const/4 v8, 0x2

    .line 84
    invoke-virtual {v7, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 85
    invoke-virtual {v7, v1}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 86
    invoke-virtual {v7, v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setParams(Ljava/util/List;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 87
    invoke-virtual {v7, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    iget v8, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    .line 88
    invoke-virtual {v7, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    iget-boolean v8, v4, Lcom/miui/gallery/cloud/RequestCloudItem;->needReRequest:Z

    .line 89
    invoke-virtual {v7, v8}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v7

    goto :goto_1
.end method

.method protected abstract getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
.end method

.method protected abstract getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
.end method

.method protected abstract getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
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
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 34
    instance-of v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/MoveItemBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item is not instanceof RequestCloudItem."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

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
    .line 139
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 140
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 142
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v5, 0x0

    .line 97
    .local v5, "targetImageValues":Landroid/content/ContentValues;
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    .end local p1    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 100
    .local v2, "dbImage":Lcom/miui/gallery/data/DBImage;
    const-string v7, "content"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    const-string v7, "content"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .local v0, "contentMovedJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    .line 103
    invoke-virtual {p0, v5}, Lcom/miui/gallery/cloud/MoveItemBase;->appendValues(Landroid/content/ContentValues;)V

    .line 104
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 105
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/miui/gallery/cloud/MoveItemBase;->handleSubUbiSchema(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 124
    .end local v0    # "contentMovedJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v2, v5, v7}, Lcom/miui/gallery/cloud/CloudUtils;->renameItemIfNeeded(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;Z)V

    .line 126
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isSecretItem()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {v2, v6}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->encodeFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V

    .line 129
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 130
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v6, v2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I

    .line 134
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/MoveItemBase;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Move image %s success, group: %s"

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    return-void

    .line 106
    :cond_2
    const-string v7, "purgeContent"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "copyContent"

    .line 107
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const-string v7, "purgeContent"

    .line 110
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 111
    .local v3, "purgeContentJson":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v4

    .line 113
    .local v4, "purgeValues":Landroid/content/ContentValues;
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    .line 114
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalImageId()Ljava/lang/String;

    move-result-object v8

    .line 113
    invoke-static {v7, v4, v8}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 117
    const-string v7, "copyContent"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    .local v1, "copyContentJson":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/MoveItemBase;->isToShare()Z

    move-result v7

    invoke-static {v1, v7}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v5

    .line 119
    invoke-virtual {p0, v5}, Lcom/miui/gallery/cloud/MoveItemBase;->appendValues(Landroid/content/ContentValues;)V

    .line 120
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v5, v2}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 121
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lcom/miui/gallery/cloud/MoveItemBase;->handleSubUbiSchema(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1    # "copyContentJson":Lorg/json/JSONObject;
    .end local v3    # "purgeContentJson":Lorg/json/JSONObject;
    .end local v4    # "purgeValues":Landroid/content/ContentValues;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method
