.class public abstract Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;
.super Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
.source "CloudGalleryRequestorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor",
        "<",
        "Lcom/miui/gallery/cloud/RequestCloudItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private final mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "urlPrivider"    # Lcom/miui/gallery/cloud/CloudUrlProvider;

    .prologue
    .line 41
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mAccount:Landroid/accounts/Account;

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;

    .line 44
    return-void
.end method

.method private addExtraParameters(Ljava/util/Map;IZI)V
    .locals 2
    .param p2, "retryTimes"    # I
    .param p3, "needReRequest"    # Z
    .param p4, "subUbiIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez p2, :cond_0

    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "value":Ljava/lang/String;
    const-string v1, "retry"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 327
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0    # "value":Ljava/lang/String;
    const-string v1, "needReRequest"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    if-ltz p4, :cond_2

    .line 332
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "value":Ljava/lang/String;
    const-string/jumbo v1, "ubiIndex"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addRetryParameters(Ljava/util/Map;IZ)V
    .locals 1
    .param p2, "retryTimes"    # I
    .param p3, "needReRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->addExtraParameters(Ljava/util/Map;IZI)V

    .line 317
    return-void
.end method

.method private addUbiParam(Ljava/util/Map;Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 2
    .param p2, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "isUbiImage"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string/jumbo v0, "ubiIndex"

    iget-object v1, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    return-void
.end method

.method private encodeSecretFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "dbCloud"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 272
    invoke-static {p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->isSynced(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->encodeFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V

    .line 275
    :cond_0
    return-void
.end method

.method private static isSynced(Landroid/content/ContentValues;)Z
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 268
    const-string v0, "custom"

    const-string v1, "serverStatus"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private putCommitResult(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 5
    .param p1, "allJson"    # Lorg/json/JSONObject;
    .param p2, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 235
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v3

    .line 234
    invoke-static {p1, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 236
    .local v0, "mainItemValues":Landroid/content/ContentValues;
    invoke-virtual {p0, p2, p1, v0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->putAlbumIdInValues(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;Landroid/content/ContentValues;)V

    .line 239
    invoke-virtual {p2}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->encodeSecretFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V

    .line 243
    :cond_0
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    invoke-direct {p0, p2, v0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->updateLocalDBForSyncAndConnectUbi(Lcom/miui/gallery/cloud/RequestCloudItem;Landroid/content/ContentValues;)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 250
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    move-object v4, v3

    :goto_1
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    check-cast v3, Lcom/miui/gallery/data/DBImage$SubUbiImage;

    .line 252
    invoke-interface {v3}, Lcom/miui/gallery/data/DBImage$SubUbiImage;->getUbiLocalId()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v4, v0, v3}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 255
    const-string v3, "content"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "ubiSubImageContentMap"

    .line 256
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 257
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 258
    .local v1, "subImageJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 259
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 260
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v3

    .line 259
    invoke-static {v1, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v2

    .line 261
    .local v2, "subItemValues":Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v1, v2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->putAlbumIdInValues(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;Landroid/content/ContentValues;)V

    .line 262
    iget-object v3, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    goto :goto_0

    .line 250
    .end local v1    # "subImageJson":Lorg/json/JSONObject;
    .end local v2    # "subItemValues":Landroid/content/ContentValues;
    :cond_3
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    move-object v4, v3

    goto :goto_1
.end method

.method private updateLocalDBForSyncAndConnectUbi(Lcom/miui/gallery/cloud/RequestCloudItem;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v0, p2, v1}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)V

    .line 163
    iget-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->connectSubUbi(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract connectSubUbi(Lcom/miui/gallery/cloud/RequestCloudItem;)V
.end method

.method protected abstract getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
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
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->commitRetryTimes:I

    iget-boolean v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->needReRequest:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->addRetryParameters(Ljava/util/Map;IZ)V

    .line 178
    const-string v1, "data"

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getCommitUploadPostString(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-object v0
.end method

.method protected bridge synthetic getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getCommitUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getCommitUploadPostString(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .locals 5
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "commitParameter"    # Lcom/xiaomi/opensdk/file/model/CommitParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "kss"

    new-instance v3, Lorg/json/JSONObject;

    .line 280
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->getKssString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 281
    .local v0, "commitJson":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final getCommitUploadURL(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "commitParameter"    # Lcom/xiaomi/opensdk/file/model/CommitParameter;

    .prologue
    .line 352
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "requestId":Ljava/lang/String;
    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 355
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getUbiServerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v4

    .line 354
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCommitSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCommitUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic getCommitUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getCommitUploadURL(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getCreateSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "subIndex"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCreateSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getCreateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCreateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getItemByRequestId(Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/data/DBImage;
.end method

.method protected getRequestDownloadParams(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/util/Map;
    .locals 4
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
    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 288
    .local v1, "subUbiIndex":I
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 289
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v1

    .line 292
    :cond_1
    iget v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->otherRetryTimes:I

    iget-boolean v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->needReRequest:Z

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->addExtraParameters(Ljava/util/Map;IZI)V

    .line 293
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
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestDownloadParams(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final getRequestDownloadURL(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 3
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mUrlProvider:Lcom/miui/gallery/cloud/CloudUrlProvider;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getRequestDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRequestDownloadURL(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestDownloadURL(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

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
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    iget-boolean v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->needReRequest:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->addRetryParameters(Ljava/util/Map;IZ)V

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->addUbiParam(Ljava/util/Map;Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 52
    const-string v1, "data"

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestUploadPostString(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method protected bridge synthetic getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestUploadParams(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestUploadPostString(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .locals 5
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "requestUploadParameter"    # Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->getKssString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "requestJson":Lorg/json/JSONObject;
    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->getFileSHA1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/DBImage;->setSha1(Ljava/lang/String;)V

    .line 70
    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "creatorId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v3, "shareId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/ExifUtil;->isFromFrontCamera(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, "isFrontCamera":Z
    const-string v3, "isFrontCamera"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    .end local v0    # "isFrontCamera":Z
    :cond_0
    const-string v3, "content"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getRequestUploadURL(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .locals 4
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "requestUploadParameter"    # Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "albumId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getUbiServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 197
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 200
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getUbiServerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 201
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getSubUbiIndex()I

    move-result v3

    .line 200
    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getCreateSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getCreateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic getRequestUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getRequestUploadURL(Lcom/miui/gallery/cloud/RequestCloudItem;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
.end method

.method protected handleCommitUploadResult(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestCloudItem;
    .locals 6
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "resultJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 211
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    move-result-object v3

    .line 211
    invoke-static {p2, p1, v3}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v0

    .line 213
    .local v0, "commitResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v0, v3, :cond_1

    .line 214
    const-string v3, "CloudGalleryRequestorBase"

    const-string/jumbo v4, "upload commit error %s"

    invoke-static {v3, v4, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iput-object v0, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 216
    iget v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->commitRetryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->commitRetryTimes:I

    move-object p1, v2

    .line 229
    .end local p1    # "remoteInfo":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_0
    :goto_0
    return-object p1

    .line 219
    .restart local p1    # "remoteInfo":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_1
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 220
    invoke-direct {p0, p2, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->putCommitResult(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 222
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/util/Log2File;->canLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v2

    const-string v3, "CloudGalleryRequestorBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload a pic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v0    # "commitResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v2, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic handleCommitUploadResult(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->handleCommitUploadResult(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestCloudItem;

    move-result-object v0

    return-object v0
.end method

.method protected handleRequestDownloadResultJson(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;)Z
    .locals 3
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "resultJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 301
    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    move-result-object v2

    .line 301
    invoke-static {p2, p1, v2}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v1

    .line 303
    .local v1, "requestResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v1, v2, :cond_0

    .line 304
    iput-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 305
    iget v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->otherRetryTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->otherRetryTimes:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v2, 0x0

    .line 311
    :goto_0
    return v2

    .line 308
    .end local v1    # "requestResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v2, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 311
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "requestResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic handleRequestDownloadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->handleRequestDownloadResultJson(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method protected handleRequestUploadResultJson(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestCloudItem;
    .locals 12
    .param p1, "remoteInfo"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "resultJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v5, 0x0

    .line 89
    .local v5, "isFileExist":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;

    move-result-object v9

    .line 88
    invoke-static {p2, p1, v9}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItemBase;Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v2

    .line 90
    .local v2, "createResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v9, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v2, v9, :cond_1

    .line 91
    const-string v9, "CloudGalleryRequestorBase"

    const-string/jumbo v10, "upload request error %s"

    invoke-static {v9, v10, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iput-object v2, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 94
    iget v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->createRetryTimes:I

    .line 151
    .end local p1    # "remoteInfo":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_0
    :goto_0
    return-object p1

    .line 98
    .restart local p1    # "remoteInfo":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_1
    const-string v9, "data"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    .local v3, "dataJson":Lorg/json/JSONObject;
    const-string v9, "content"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    .local v0, "contentCreateJson":Lorg/json/JSONObject;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->parseRequestId(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "requestId":Ljava/lang/String;
    const-string/jumbo v9, "upload_id"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v9, "fileName"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "createFileName":Ljava/lang/String;
    iget-object v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 109
    const-string v9, "CloudGalleryRequestorBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create image name changed from:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v11}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_2
    iget-object v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    iget-object v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isSubUbiFocus()Z

    move-result v9

    if-nez v9, :cond_3

    .line 118
    invoke-virtual {p0, v7, p1}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->getItemByRequestId(Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Lcom/miui/gallery/data/DBImage;

    move-result-object v6

    .line 120
    .local v6, "oldImage":Lcom/miui/gallery/data/DBImage;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v11}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 121
    invoke-static {v6}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Lcom/miui/gallery/data/DBImage;)V

    .line 125
    .end local v6    # "oldImage":Lcom/miui/gallery/data/DBImage;
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v8, "values":Landroid/content/ContentValues;
    iget-object v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v9

    invoke-static {v0, v9}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForAll(Lorg/json/JSONObject;Z)Landroid/content/ContentValues;

    move-result-object v8

    .line 129
    invoke-virtual {p0, p1, p2, v8}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->putAlbumIdInValues(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;Landroid/content/ContentValues;)V

    .line 131
    const-string v9, "kss"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "fileExists"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "fileExists"

    .line 132
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 133
    const/4 v5, 0x1

    .line 135
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/RequestCloudItem;->isSecretItem()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 136
    iget-object v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-direct {p0, v9, v8}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->encodeSecretFiles(Lcom/miui/gallery/data/DBImage;Landroid/content/ContentValues;)V

    .line 140
    :cond_4
    invoke-direct {p0, p1, v8}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->updateLocalDBForSyncAndConnectUbi(Lcom/miui/gallery/cloud/RequestCloudItem;Landroid/content/ContentValues;)V

    .line 146
    :goto_1
    monitor-exit v10

    .line 148
    if-nez v5, :cond_0

    .line 151
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 142
    :cond_5
    const/4 v5, 0x0

    .line 143
    iget-object v9, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v9}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    iget-object v11, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-static {v9, v8, v11}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDB(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I

    goto :goto_1

    .line 146
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v0    # "contentCreateJson":Lorg/json/JSONObject;
    .end local v1    # "createFileName":Ljava/lang/String;
    .end local v2    # "createResult":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    .end local v7    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Lorg/json/JSONException;
    new-instance v9, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v9, v4}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected bridge synthetic handleRequestUploadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudGalleryRequestorBase;->handleRequestUploadResultJson(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/RequestCloudItem;

    move-result-object v0

    return-object v0
.end method

.method protected abstract parseRequestId(Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected putAlbumIdInValues(Lcom/miui/gallery/cloud/RequestCloudItem;Lorg/json/JSONObject;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;
    .param p2, "schemaJson"    # Lorg/json/JSONObject;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 396
    return-void
.end method
