.class public Lcom/miui/gallery/model/MediaItem;
.super Lcom/miui/gallery/model/BaseDataItem;
.source "MediaItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v0

    .line 13
    .local v0, "info":Lcom/miui/gallery/model/PhotoDetailInfo;
    invoke-virtual {p0}, Lcom/miui/gallery/model/MediaItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->extractExifInfo(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;Z)V

    .line 14
    return-object v0
.end method

.method public getFavoriteInfo(Z)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 1
    .param p1, "strictMode"    # Z

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/model/MediaItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/provider/FavoritesManager;->queryFavoriteInfoByFilePath(Ljava/lang/String;Z)Lcom/miui/gallery/model/FavoriteInfo;

    move-result-object v0

    return-object v0
.end method

.method public initSupportOperations()I
    .locals 6

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/miui/gallery/model/MediaItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/model/MediaItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/PhotoOperationsUtil;->getVideoSupportedOperations(Ljava/lang/String;)I

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/MediaItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/miui/gallery/model/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/model/MediaItem;->mLatitude:D

    iget-wide v4, p0, Lcom/miui/gallery/model/MediaItem;->mLongitude:D

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/PhotoOperationsUtil;->getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I

    move-result v0

    goto :goto_0
.end method
