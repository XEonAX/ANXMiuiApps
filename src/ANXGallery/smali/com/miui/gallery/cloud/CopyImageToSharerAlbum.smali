.class public Lcom/miui/gallery/cloud/CopyImageToSharerAlbum;
.super Lcom/miui/gallery/cloud/CopyImageBase;
.source "CopyImageToSharerAlbum.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CopyImageBase;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected appendValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 37
    const-string v0, "albumId"

    iget-object v1, p0, Lcom/miui/gallery/cloud/CopyImageToSharerAlbum;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected getAlbumId(Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 1
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/cloud/CopyImageToSharerAlbum;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getShareAlbumIdByLocalId(Landroid/content/Context;Lcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAlbumIdTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "toSharedAlbumId"

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SpaceFullListener;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->getSharerSpaceFullListener()Lcom/miui/gallery/cloud/SpaceFullHandler$SharerSpaceFullListener;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl(Lcom/miui/gallery/cloud/CloudUrlProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/gallery/cloud/RequestCloudItem;)Ljava/lang/String;
    .locals 1
    .param p1, "urlProvider"    # Lcom/miui/gallery/cloud/CloudUrlProvider;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "isShared"    # Z
    .param p5, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 52
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 47
    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/miui/gallery/util/UbiFocusUtils;->handleSubUbiImage(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 48
    return-void
.end method

.method protected isToShare()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
