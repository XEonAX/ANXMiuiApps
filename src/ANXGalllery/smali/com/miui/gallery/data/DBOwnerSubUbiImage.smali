.class public Lcom/miui/gallery/data/DBOwnerSubUbiImage;
.super Lcom/miui/gallery/data/DBImage;
.source "DBOwnerSubUbiImage.java"

# interfaces
.implements Lcom/miui/gallery/data/DBImage$SubUbiImage;


# instance fields
.field private mHasQuery:Z

.field private mUbiLocalId:Ljava/lang/String;

.field private mUbiServerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/DBImage;-><init>(Landroid/database/Cursor;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->getGroupId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->getUbiServerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubUbiImageCount()I
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mHasQuery:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mHasQuery:Z

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->getUbiLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/UbiFocusUtils;->getSubUbiCount(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->setSubUbiImageCount(I)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/data/DBImage;->getSubUbiImageCount()I

    move-result v0

    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DBOwnerSubUbiImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUbiLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiLocalId:Ljava/lang/String;

    return-object v0
.end method

.method public getUbiServerId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiServerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiLocalId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/UbiFocusUtils;->getUbiServerIdByUbiLocalId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiServerId:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiServerId:Ljava/lang/String;

    return-object v0
.end method

.method public isShareItem()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isSubUbiFocus()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public reloadData(Landroid/database/Cursor;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/miui/gallery/data/DBImage;->reloadData(Landroid/database/Cursor;)Z

    move-result v0

    .line 57
    .local v0, "isUpdated":Z
    new-instance v2, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v2}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 58
    .local v2, "uh":Lcom/miui/gallery/util/UpdateHelper;
    iget-wide v4, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mDownloadFileAddTime:J

    const/16 v3, 0x2e

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mDownloadFileAddTime:J

    .line 59
    iget-wide v4, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mMixedDateTime:J

    const/16 v3, 0x2f

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mMixedDateTime:J

    .line 60
    iget-object v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiServerId:Ljava/lang/String;

    const/16 v4, 0x30

    invoke-static {p1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiServerId:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiLocalId:Ljava/lang/String;

    const/16 v4, 0x31

    invoke-static {p1, v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiLocalId:Ljava/lang/String;

    .line 62
    iget v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiSubIndex:I

    const/16 v4, 0x32

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mUbiSubIndex:I

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mSecretKey:[B

    const/16 v4, 0x33

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update([B[B)[B

    move-result-object v1

    .line 64
    .local v1, "key":[B
    if-eqz v1, :cond_0

    .line 65
    iput-object v1, p0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->mSecretKey:[B

    .line 67
    :cond_0
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
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;->setGroupId(J)V

    .line 92
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "cloudJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "cloudJson":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .restart local v0    # "cloudJson":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method
