.class public Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;
.super Lcom/miui/gallery/cloud/EditCloudBase;
.source "EditCloudThumbnailInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/EditCloudBase;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 24
    .local v7, "dbImage":Lcom/miui/gallery/data/DBImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v11

    .line 26
    .local v11, "upToDateDbImage":Lcom/miui/gallery/data/DBImage;
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider;->getUrlProvider(Z)Lcom/miui/gallery/cloud/CloudGroupUrlProvider;

    move-result-object v13

    .line 27
    .local v13, "urlProvider":Lcom/miui/gallery/cloud/CloudGroupUrlProvider;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v15

    .line 27
    invoke-virtual {v13, v14, v15}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider;->getEditGroupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "updateBabyInfoUrl":Ljava/lang/String;
    move-object v14, v11

    .line 29
    check-cast v14, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v14}, Lcom/miui/gallery/data/DBCloud;->getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;

    move-result-object v9

    .line 30
    .local v9, "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    invoke-virtual {v11}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    .line 31
    .local v10, "thumbnailInfoJson":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 32
    invoke-virtual {v9}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getBgImageLocalId()J

    move-result-wide v4

    .line 33
    .local v4, "bgImageLocalId":J
    invoke-virtual {v9}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getFaceId()Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, "faceId":Ljava/lang/String;
    const-wide/16 v14, -0x1

    cmp-long v14, v4, v14

    if-eqz v14, :cond_0

    .line 35
    sget-object v14, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;->mContext:Landroid/content/Context;

    const-string v16, "_id"

    .line 38
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 35
    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v3

    .line 39
    .local v3, "bgItem":Lcom/miui/gallery/data/DBImage;
    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v14

    if-nez v14, :cond_2

    .line 41
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "bgImageId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 43
    const-string v14, "backgroundImageId"

    invoke-virtual {v10, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .end local v2    # "bgImageId":Ljava/lang/String;
    .end local v3    # "bgItem":Lcom/miui/gallery/data/DBImage;
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 54
    const-string v14, "faceId"

    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .end local v4    # "bgImageLocalId":J
    .end local v8    # "faceId":Ljava/lang/String;
    :cond_1
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "content"

    .line 59
    invoke-virtual {v14, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 61
    .local v6, "contentJson":Lorg/json/JSONObject;
    new-instance v14, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v14}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    .line 62
    invoke-virtual {v14, v12}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v14

    const/4 v15, 0x2

    .line 63
    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v14

    .line 64
    invoke-virtual {v14, v6}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setPostData(Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/miui/gallery/cloud/RequestCloudItem;->otherRetryTimes:I

    .line 65
    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v14

    const/4 v15, 0x0

    .line 66
    invoke-virtual {v14, v15}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v14

    .line 67
    invoke-virtual {v14}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v14

    .end local v6    # "contentJson":Lorg/json/JSONObject;
    :goto_0
    return-object v14

    .line 48
    .restart local v3    # "bgItem":Lcom/miui/gallery/data/DBImage;
    .restart local v4    # "bgImageLocalId":J
    .restart local v8    # "faceId":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;->getTag()Ljava/lang/String;

    move-result-object v14

    const-string v15, "bg image not synced!"

    invoke-static {v14, v15}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected getColumnIndex()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x42

    return v0
.end method

.method protected updateDb(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "upToDateDbImage"    # Lcom/miui/gallery/data/DBImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v3, p2

    check-cast v3, Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;

    move-result-object v2

    .line 76
    .local v2, "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getBgImageLocalId()J

    move-result-wide v0

    .line 78
    .local v0, "bgImageLocalId":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 79
    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->deleteItemInHiddenAlbum(J)Z

    .line 86
    .end local v0    # "bgImageLocalId":J
    :cond_0
    const-string/jumbo v3, "thumbnailInfo"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/EditCloudBase;->updateDb(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 88
    return-void
.end method
