.class public Lcom/miui/gallery/model/StorageItem;
.super Lcom/miui/gallery/model/BaseDataItem;
.source "StorageItem.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mSize:J

    .line 14
    iput-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mCreateTime:J

    .line 15
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mCreateTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mCreateTime:J

    .line 32
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mCreateTime:J

    return-wide v0
.end method

.method public getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v0

    .line 38
    .local v0, "info":Lcom/miui/gallery/model/PhotoDetailInfo;
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/model/PhotoDetailInfo;->extractVideoAttr(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->extractExifInfo(Lcom/miui/gallery/model/PhotoDetailInfo;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getFavoriteInfo(Z)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 1
    .param p1, "strictMode"    # Z

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/provider/FavoritesManager;->queryFavoriteInfoByFilePath(Ljava/lang/String;Z)Lcom/miui/gallery/model/FavoriteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mSize:J

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/model/StorageItem;->mSize:J

    return-wide v0
.end method

.method public initSupportOperations()I
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/PhotoOperationsUtil;->getVideoSupportedOperations(Ljava/lang/String;)I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/model/StorageItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/model/StorageItem;->mLatitude:D

    iget-wide v4, p0, Lcom/miui/gallery/model/StorageItem;->mLongitude:D

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/PhotoOperationsUtil;->getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I

    move-result v0

    goto :goto_0
.end method
