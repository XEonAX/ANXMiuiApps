.class public Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;
.super Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;
.source "CloudGallerySharerRequestor.java"


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "urlProvider"    # Lcom/miui/gallery/cloud/CloudUrlProvider;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected connectSubUbi(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 6
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "ubiServerId"

    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    check-cast v1, Lcom/miui/gallery/data/DBShareImage;

    .line 84
    invoke-virtual {v1}, Lcom/miui/gallery/data/DBShareImage;->getShareId()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    const-string/jumbo v2, "ubiLocalId = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 87
    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 85
    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method protected getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 4
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 34
    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getGroupId()J

    move-result-wide v2

    .line 35
    .local v2, "groupId":J
    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSystemAlbum(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getShareAlbumIdByLocalId(Landroid/content/Context;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "albumId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DBImage;->setRequestAlbumId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getCommitUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .locals 3
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "commitParameter"    # Lcom/xiaomi/opensdk/file/model/CommitParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getCommitUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;

    move-result-object v0

    .line 94
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .restart local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string/jumbo v1, "sharedGalleryId"

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getUbiServerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_1
    const-string/jumbo v1, "sharedGalleryId"

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected bridge synthetic getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;->getCommitUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getItemByRequestId(Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/data/DBImage;
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 62
    iget-object v0, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "shareId"

    .line 62
    invoke-static {v0, v1, v2, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestDownloadParams(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/util/Map;
    .locals 3
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestDownloadParams(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .restart local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "sharedGalleryId"

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v0
.end method

.method protected bridge synthetic getRequestDownloadParams(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;->getRequestDownloadParams(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .locals 3
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "requestUploadParameter"    # Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    .restart local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string/jumbo v1, "sharedGalleryId"

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getUbiServerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_1
    const-string/jumbo v1, "sharedAlbumId"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;->getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected bridge synthetic getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;->getRequestUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getSharerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    move-result-object v0

    return-object v0
.end method

.method protected parseRequestId(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v1, "shareId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "requestId":Ljava/lang/String;
    iget-object v1, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DBImage;->setShareId(Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method protected putAlbumIdInValues(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 70
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getShareAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "albumId"

    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getShareAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
