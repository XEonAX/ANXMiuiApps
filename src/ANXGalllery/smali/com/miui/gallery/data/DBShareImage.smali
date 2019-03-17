.class public Lcom/miui/gallery/data/DBShareImage;
.super Lcom/miui/gallery/data/DBImage;
.source "DBShareImage.java"


# instance fields
.field private mShareId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/DBImage;-><init>(Landroid/database/Cursor;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getShareAlbumId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getShareId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/data/DBShareImage;->mShareId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DBShareImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShareItem()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public isUbiFocus()Z
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiSubImageCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadData(Landroid/database/Cursor;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/miui/gallery/data/DBImage;->reloadData(Landroid/database/Cursor;)Z

    move-result v0

    .line 51
    .local v0, "isUpdated":Z
    new-instance v2, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v2}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 52
    .local v2, "uh":Lcom/miui/gallery/util/UpdateHelper;
    iget-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mCreatorId:Ljava/lang/String;

    const/16 v4, 0x2d

    .line 53
    invoke-static {p1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mCreatorId:Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mShareId:Ljava/lang/String;

    const/16 v4, 0x2e

    .line 55
    invoke-static {p1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mShareId:Ljava/lang/String;

    .line 56
    iget-wide v4, p0, Lcom/miui/gallery/data/DBShareImage;->mDownloadFileAddTime:J

    const/16 v3, 0x30

    .line 57
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 56
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/data/DBShareImage;->mDownloadFileAddTime:J

    .line 58
    iget-wide v4, p0, Lcom/miui/gallery/data/DBShareImage;->mMixedDateTime:J

    const/16 v3, 0x31

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/data/DBShareImage;->mMixedDateTime:J

    .line 59
    iget v3, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiSubImageCount:I

    const/16 v4, 0x32

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiSubImageCount:I

    .line 60
    iget v3, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiFocusIndex:I

    const/16 v4, 0x33

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiFocusIndex:I

    .line 61
    iget v3, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiSubIndex:I

    const/16 v4, 0x34

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/data/DBShareImage;->mUbiSubIndex:I

    .line 62
    iget v3, p0, Lcom/miui/gallery/data/DBShareImage;->mLables:I

    const/16 v4, 0x38

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/data/DBShareImage;->mLables:I

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mEditedColumns:Ljava/lang/String;

    const/16 v4, 0x35

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mEditedColumns:Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mFromLocalGroupId:Ljava/lang/String;

    const/16 v4, 0x36

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mFromLocalGroupId:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/miui/gallery/data/DBShareImage;->mSecretKey:[B

    const/16 v4, 0x37

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update([B[B)[B

    move-result-object v1

    .line 66
    .local v1, "key":[B
    if-eqz v1, :cond_0

    .line 67
    iput-object v1, p0, Lcom/miui/gallery/data/DBShareImage;->mSecretKey:[B

    .line 69
    :cond_0
    iget-wide v4, p0, Lcom/miui/gallery/data/DBShareImage;->mSpecialTypeFlags:J

    const/16 v3, 0x3c

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/data/DBShareImage;->mSpecialTypeFlags:J

    .line 70
    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setRequestAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DBShareImage;->setShareAlbumId(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setShareId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mShareId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/data/DBShareImage;->mShareId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    .local v0, "cloudJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "cloudJson":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .restart local v0    # "cloudJson":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    const-string v2, "creatorId"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getCreatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getShareId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    const-string/jumbo v2, "shareId"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBShareImage;->getShareId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_2
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "DBCloud"

    const-string/jumbo v3, "toJSONObject: get JSON error"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
