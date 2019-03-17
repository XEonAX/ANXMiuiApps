.class public Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;
.super Lcom/miui/gallery/cloud/MoveItemBase;
.source "MoveItemToOwnerAlbum.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/MoveItemBase;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected appendAlbumIdParameter(Ljava/util/ArrayList;)V
    .locals 3
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

    .prologue
    .line 41
    .local p1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "toAlbumId"

    iget-object v2, p0, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;->mAlbumId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method protected appendValues(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 60
    const-string v0, "fromLocalGroupId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 2
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBImage;->getLocalGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getServerIdByLocalId(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getOwnerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$OwnerSpaceFullListener;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 5
    .param p1, "urlProvider"    # Lcom/miui/gallery/cloud/CloudUrlProvider;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v3, p0, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;->mAlbumId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 65
    .local v2, "isToHideAlbum":Z
    const/4 v1, 0x0

    .line 66
    .local v1, "isFromHideAlbum":Z
    iget-object v3, p4, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->getFromLocalGroupId()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "fromLocalGroupId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "MoveItemToOwnerAlbum"

    const-string v4, "getUrl  fromLocalGroupId does not exist"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    :goto_0
    return-object v3

    .line 71
    :cond_0
    invoke-static {v4, v0}, Lcom/miui/gallery/cloud/CloudTableUtils;->isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 73
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 75
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUnHideMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getHideMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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
    .line 46
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 47
    return-void
.end method

.method protected isToShare()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
