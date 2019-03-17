.class public Lcom/miui/gallery/cloud/MoveItemToSharerAlbum;
.super Lcom/miui/gallery/cloud/MoveItemBase;
.source "MoveItemToSharerAlbum.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/MoveItemBase;-><init>(Landroid/content/Context;)V

    .line 26
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
    .line 37
    .local p1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "toSharedAlbumId"

    iget-object v2, p0, Lcom/miui/gallery/cloud/MoveItemToSharerAlbum;->mAlbumId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method protected appendValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 42
    const-string v0, "albumId"

    iget-object v1, p0, Lcom/miui/gallery/cloud/MoveItemToSharerAlbum;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "fromLocalGroupId"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/cloud/MoveItemToSharerAlbum;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getShareAlbumIdByLocalId(Landroid/content/Context;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getSharerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 1
    .param p1, "urlProvider"    # Lcom/miui/gallery/cloud/CloudUrlProvider;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 48
    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 49
    return-void
.end method

.method protected isToShare()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
