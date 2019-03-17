.class Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;
.super Lcom/miui/gallery/model/BaseCloudDataSet;
.source "FaceCloudSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/FaceCloudSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
    .line 82
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/model/BaseCloudDataSet;-><init>(Landroid/database/Cursor;IIJLjava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 12
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-virtual {p0, p2}, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->isValidate(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 89
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    .line 90
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setMicroPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    .line 91
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x3

    .line 92
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x4

    .line 93
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setMimeType(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    .line 94
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/miui/gallery/model/BaseDataItem;->setCreateTime(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    .line 95
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setLocation(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    .line 96
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/miui/gallery/model/BaseDataItem;->setSize(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    .line 97
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setWidth(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    .line 98
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setHeight(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    .line 99
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setDuration(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x10

    .line 100
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setSecretKey([B)Lcom/miui/gallery/model/BaseDataItem;

    .line 101
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xb

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "latitude":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 103
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "latitudeRef":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xd

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "longitude":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "longitudeRef":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setLatitude(D)Lcom/miui/gallery/model/BaseDataItem;

    .line 107
    invoke-static {v3, v4}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/miui/gallery/model/BaseDataItem;->setLongitude(D)Lcom/miui/gallery/model/BaseDataItem;

    .end local v2    # "latitudeRef":Ljava/lang/String;
    .end local v3    # "longitude":Ljava/lang/String;
    .end local v4    # "longitudeRef":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 110
    .local v0, "cloudItem":Lcom/miui/gallery/model/CloudItem;
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/miui/gallery/model/CloudItem;->setId(J)Lcom/miui/gallery/model/CloudItem;

    move-result-object v8

    .line 111
    invoke-virtual {v8, v6}, Lcom/miui/gallery/model/CloudItem;->setSynced(Z)Lcom/miui/gallery/model/CloudItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    .line 112
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/gallery/model/CloudItem;->setSha1(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    .line 113
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/miui/gallery/model/CloudItem;->setLocalGroupId(J)Lcom/miui/gallery/model/BaseDataItem;

    .line 114
    iget-object v8, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x12

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "serverId":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/miui/gallery/model/CloudItem;->setServerId(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;

    .line 116
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    invoke-virtual {v0, v6}, Lcom/miui/gallery/model/CloudItem;->setHasFace(Z)V

    .line 117
    iget-object v6, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x13

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/gallery/model/CloudItem;->setOrientation(I)Lcom/miui/gallery/model/CloudItem;

    .line 118
    iget-object v6, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x14

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/gallery/model/CloudItem;->setIsFavorite(I)Lcom/miui/gallery/model/CloudItem;

    .line 120
    .end local v0    # "cloudItem":Lcom/miui/gallery/model/CloudItem;
    .end local v1    # "latitude":Ljava/lang/String;
    .end local v5    # "serverId":Ljava/lang/String;
    :cond_1
    return-void

    .restart local v0    # "cloudItem":Lcom/miui/gallery/model/CloudItem;
    .restart local v1    # "latitude":Ljava/lang/String;
    .restart local v5    # "serverId":Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 116
    goto :goto_0
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->isValidate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 133
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getItemPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->isValidate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/loader/FaceCloudSetLoader$CloudDataSet;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAlbumRemovable()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
