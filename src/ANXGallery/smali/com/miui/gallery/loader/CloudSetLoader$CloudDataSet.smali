.class public Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;
.super Lcom/miui/gallery/model/BaseCloudDataSet;
.source "CloudSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/CloudSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CloudDataSet"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;IIJLjava/lang/String;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "initPos"    # I
    .param p3, "dupType"    # I
    .param p4, "albumId"    # J
    .param p6, "albumName"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/model/BaseCloudDataSet;-><init>(Landroid/database/Cursor;IIJLjava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p2}, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/miui/gallery/util/MediaCursorHelper;->getMediaId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 109
    .local v2, "id":J
    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 110
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getMicroThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setMicroPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 111
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getThumbnailPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 112
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getFilePath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 113
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getMimeType(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setMimeType(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 114
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getCreateTime(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->setCreateTime(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 115
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getLocation(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setLocation(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 116
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getSize(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->setSize(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 117
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getWidth(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setWidth(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 118
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getHeight(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setHeight(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 119
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getDuration(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setDuration(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 120
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getSecretKey(Landroid/database/Cursor;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/BaseDataItem;->setSecretKey([B)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 121
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getLatitude(Landroid/database/Cursor;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->setLatitude(D)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 122
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getLongitude(Landroid/database/Cursor;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->setLongitude(D)Lcom/miui/gallery/model/BaseDataItem;

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 124
    .local v0, "cloudItem":Lcom/miui/gallery/model/CloudItem;
    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/CloudItem;->setId(J)Lcom/miui/gallery/model/CloudItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 125
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->isSynced(Landroid/database/Cursor;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/CloudItem;->setSynced(Z)Lcom/miui/gallery/model/CloudItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 126
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/CloudItem;->setSha1(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;

    move-result-object v1

    .line 127
    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/CloudItem;->setShare(Z)Lcom/miui/gallery/model/CloudItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 128
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getCreator(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/CloudItem;->setCreatorId(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 129
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->isFavorite(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/CloudItem;->setIsFavorite(I)Lcom/miui/gallery/model/CloudItem;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 130
    invoke-static {v4}, Lcom/miui/gallery/util/MediaCursorHelper;->getServerId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/CloudItem;->setServerId(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/miui/gallery/util/MediaCursorHelper;->getAlbumId(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/model/CloudItem;->setLocalGroupId(J)Lcom/miui/gallery/model/BaseDataItem;

    .line 134
    .end local v0    # "cloudItem":Lcom/miui/gallery/model/CloudItem;
    .end local v2    # "id":J
    :cond_0
    return-void
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/MediaCursorHelper;->getMediaId(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getItemPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/loader/CloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/gallery/util/MediaCursorHelper;->getFilePath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
