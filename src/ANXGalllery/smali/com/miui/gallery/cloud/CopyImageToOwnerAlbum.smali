.class public Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;
.super Lcom/miui/gallery/cloud/CopyImageBase;
.source "CopyImageToOwnerAlbum.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CopyImageBase;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getServerIdByLocalId(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAlbumIdTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "toAlbumId"

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getOwnerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 6
    .param p1, "urlProvider"    # Lcom/miui/gallery/cloud/CloudUrlProvider;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "isShared"    # Z
    .param p5, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v4, p0, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;->mAlbumId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 49
    .local v2, "isToHideAlbum":Z
    const/4 v1, 0x0

    .line 50
    .local v1, "isFromHideAlbum":Z
    if-nez p4, :cond_1

    .line 51
    iget-object v4, p5, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getLocalImageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupIdByPhotoLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "fromGroupId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    .end local v0    # "fromGroupId":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 55
    .restart local v0    # "fromGroupId":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 58
    .end local v0    # "fromGroupId":Ljava/lang/String;
    :cond_1
    if-nez p4, :cond_5

    .line 59
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 60
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_2
    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 62
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getHideCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 63
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 64
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUnhideCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getUrl  only support one hide album now"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_5
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 71
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 73
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getUrl  cannot support copy share image to hide album"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSubUbiSchema(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "schemaJson"    # Lorg/json/JSONObject;
    .param p2, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 44
    return-void
.end method

.method protected isToShare()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
