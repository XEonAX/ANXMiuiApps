.class public Lcom/miui/gallery/data/DBCloud;
.super Lcom/miui/gallery/data/DBImage;
.source "DBCloud.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCanModified:Z

.field protected mExtraGps:Ljava/lang/String;

.field private mIsPublic:Z

.field private mOriginFileName:Ljava/lang/String;

.field private mOriginSha1:Ljava/lang/String;

.field private mPublicUrl:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private mThumbnailInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/DBImage;-><init>(Landroid/database/Cursor;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/DBImage;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getGroupId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getBasicValues(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "cloudJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/miui/gallery/data/DBImage;->getBasicValues(Lorg/json/JSONObject;)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mThumbnailInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getFaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "faceId"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getFaceId()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 170
    :cond_1
    const-string v0, "isFavorite"

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->isFavorite()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 172
    :cond_2
    return-void
.end method

.method public getOriginSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mOriginSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mPublicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/data/DBCloud;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DBCloud"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Lcom/miui/gallery/cloud/ThumbnailInfo;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/data/DBCloud;->mThumbnailInfo:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/ThumbnailInfo;-><init>(IZLjava/lang/String;)V

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/miui/gallery/data/DBCloud;->mIsPublic:Z

    return v0
.end method

.method public isUbiFocus()Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/miui/gallery/data/DBCloud;->mUbiSubImageCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadData(Landroid/database/Cursor;)Z
    .locals 17
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 59
    invoke-super/range {p0 .. p1}, Lcom/miui/gallery/data/DBImage;->reloadData(Landroid/database/Cursor;)Z

    move-result v14

    .line 60
    .local v14, "isUpdated":Z
    new-instance v16, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct/range {v16 .. v16}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 61
    .local v16, "uh":Lcom/miui/gallery/util/UpdateHelper;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/data/DBCloud;->mCanModified:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x2d

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/gallery/data/DBCloud;->mCanModified:Z

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mShareUrl:Ljava/lang/String;

    const/16 v3, 0x2e

    .line 63
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 62
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mShareUrl:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mCreatorId:Ljava/lang/String;

    const/16 v3, 0x32

    .line 65
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 64
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mCreatorId:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/data/DBCloud;->mIsPublic:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_2
    const/16 v3, 0x33

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/gallery/data/DBCloud;->mIsPublic:Z

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mPublicUrl:Ljava/lang/String;

    const/16 v3, 0x34

    .line 68
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mPublicUrl:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mDownloadFileAddTime:J

    const/16 v4, 0x36

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mDownloadFileAddTime:J

    .line 70
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mMixedDateTime:J

    const/16 v4, 0x37

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mMixedDateTime:J

    .line 72
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/data/DBCloud;->mUbiSubImageCount:I

    const/16 v3, 0x38

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/data/DBCloud;->mUbiSubImageCount:I

    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/data/DBCloud;->mUbiFocusIndex:I

    const/16 v3, 0x39

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/data/DBCloud;->mUbiFocusIndex:I

    .line 74
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/data/DBCloud;->mUbiSubIndex:I

    const/16 v3, 0x3a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/data/DBCloud;->mUbiSubIndex:I

    .line 75
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/data/DBCloud;->mLables:I

    const/16 v3, 0x41

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/data/DBCloud;->mLables:I

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mEditedColumns:Ljava/lang/String;

    const/16 v3, 0x3b

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mEditedColumns:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mFromLocalGroupId:Ljava/lang/String;

    const/16 v3, 0x3c

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mFromLocalGroupId:Ljava/lang/String;

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mSecretKey:[B

    const/16 v3, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update([B[B)[B

    move-result-object v15

    .line 79
    .local v15, "key":[B
    if-eqz v15, :cond_0

    .line 80
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/miui/gallery/data/DBCloud;->mSecretKey:[B

    .line 82
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mAppKey:Ljava/lang/String;

    const/16 v3, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mAppKey:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mBabyInfoJson:Ljava/lang/String;

    const/16 v3, 0x3f

    .line 85
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 84
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mBabyInfoJson:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mPeopleFaceId:Ljava/lang/String;

    const/16 v3, 0x40

    .line 88
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 87
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mPeopleFaceId:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mThumbnailInfo:Ljava/lang/String;

    const/16 v3, 0x42

    .line 90
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/gallery/provider/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 89
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mThumbnailInfo:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mAttributes:J

    const/16 v4, 0x44

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mAttributes:J

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mAddress:Ljava/lang/String;

    const/16 v3, 0x46

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mAddress:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mExtraGps:Ljava/lang/String;

    const/16 v3, 0x45

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mExtraGps:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mSpecialTypeFlags:J

    const/16 v4, 0x47

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/gallery/data/DBCloud;->mSpecialTypeFlags:J

    .line 98
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mExtraGps:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 100
    .local v12, "isAccurate":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/data/DBCloud;->mExtraGps:Ljava/lang/String;

    .line 101
    .local v11, "gps":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mLatitudeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/data/DBCloud;->mLongitudeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/data/DBCloud;->mLatitudeStrRef:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/data/DBCloud;->mLongitudeStrRef:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/data/LocationManager;->formatExifGpsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mGeoInfo:Lorg/json/JSONObject;

    const-string v3, "isAccurate"

    invoke-virtual {v2, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mGeoInfo:Lorg/json/JSONObject;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    const/4 v8, 0x0

    .line 109
    .local v8, "addressJson":Ljava/lang/String;
    :try_start_1
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mAddress:Ljava/lang/String;

    invoke-direct {v9, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 110
    .local v9, "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mGeoInfo:Lorg/json/JSONObject;

    const-string v3, "addressList"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 119
    .end local v9    # "array":Lorg/json/JSONArray;
    :cond_2
    :goto_4
    :try_start_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-nez v2, :cond_3

    .line 121
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DBCloud;->mGeoInfo:Lorg/json/JSONObject;

    const-string v3, "address"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 131
    .end local v8    # "addressJson":Ljava/lang/String;
    .end local v11    # "gps":Ljava/lang/String;
    .end local v12    # "isAccurate":Z
    :cond_3
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBCloud;->getSha1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    const-string v2, "favorites"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "isFavorite"

    aput-object v5, v3, v4

    const-string/jumbo v4, "sha1 = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/data/DBCloud;->getSha1()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/gallery/data/DBCloud$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/miui/gallery/data/DBCloud$1;-><init>(Lcom/miui/gallery/data/DBCloud;)V

    .line 132
    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 143
    .local v13, "isFavorite":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/data/DBCloud;->mIsFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/gallery/data/DBCloud;->mIsFavorite:Z

    .line 146
    .end local v13    # "isFavorite":Ljava/lang/Boolean;
    :cond_4
    if-nez v14, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    const/4 v2, 0x1

    :goto_7
    return v2

    .line 61
    .end local v15    # "key":[B
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 66
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 116
    .restart local v8    # "addressJson":Ljava/lang/String;
    .restart local v11    # "gps":Ljava/lang/String;
    .restart local v12    # "isAccurate":Z
    .restart local v15    # "key":[B
    :catch_0
    move-exception v10

    .line 117
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/data/DBCloud;->mAddress:Ljava/lang/String;

    goto/16 :goto_4

    .line 122
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 123
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v2, "DBCloud"

    const-string v3, "Failed to convert Address info, %s"

    invoke-static {v2, v3, v10}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 127
    .end local v8    # "addressJson":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gps":Ljava/lang/String;
    .end local v12    # "isAccurate":Z
    :catch_2
    move-exception v10

    .line 128
    .local v10, "e":Lorg/json/JSONException;
    const-string v2, "DBCloud"

    const-string v3, "DBCloud(Cursor c): put JSON error"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 143
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v13    # "isFavorite":Ljava/lang/Boolean;
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 146
    .end local v13    # "isFavorite":Ljava/lang/Boolean;
    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public setOriginInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "originSha1"    # Ljava/lang/String;
    .param p2, "originFileName"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/gallery/data/DBCloud;->mOriginSha1:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/miui/gallery/data/DBCloud;->mOriginFileName:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setRequestAlbumId(Ljava/lang/String;)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/data/DBCloud;->setGroupId(J)V

    .line 192
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/miui/gallery/data/DBImage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 152
    .local v0, "cloudJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "cloudJson":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .restart local v0    # "cloudJson":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method
