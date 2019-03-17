.class public Lcom/miui/gallery/model/CloudItem;
.super Lcom/miui/gallery/model/BaseDataItem;
.source "CloudItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;
    }
.end annotation


# static fields
.field private static final DETAIL_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private transient mAddToFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

.field private mCreatorId:Ljava/lang/String;

.field private mHasFace:Z

.field private mId:J

.field private mIsFavorite:I

.field private mIsShareItem:Z

.field private mIsSynced:Z

.field private mOrientation:I

.field private transient mRemoveFromFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

.field private mServerId:Ljava/lang/String;

.field private mSha1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exifModel"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "exifMake"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exifFNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exifFocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "exifISOSpeedRatings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "exifExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "exifFlash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/model/CloudItem;->DETAIL_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataItem;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/model/CloudItem;->mOrientation:I

    .line 361
    return-void
.end method

.method private canDelete()Z
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/miui/gallery/model/CloudItem;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isMine()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCreatorEqualsCurrentAccount()Z
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem;->mCreatorId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isCreatorFromAlbumOwner()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mCreatorId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/model/CloudItem;->mIsSynced:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOwner()Z
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isShare()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needDownloadOrigin()Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkOriginalFileExist()Z
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Lcom/miui/gallery/model/BaseDataItem;->checkOriginalFileExist()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xc8

    .line 158
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v12

    .line 159
    .local v12, "info":Lcom/miui/gallery/model/PhotoDetailInfo;
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "path":Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    .line 161
    .local v9, "hasOrigin":Z
    if-nez v9, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v13

    .line 163
    invoke-static {v13}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v13, 0x0

    .line 167
    :cond_0
    if-nez v9, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isGif()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    :cond_1
    invoke-virtual {v12, v4}, Lcom/miui/gallery/model/PhotoDetailInfo;->removeDetail(I)V

    .line 170
    const/16 v0, 0x8

    const v2, 0x7f0c04f2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 185
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v12, v4}, Lcom/miui/gallery/model/PhotoDetailInfo;->removeDetail(I)V

    .line 189
    :cond_3
    new-instance v6, Lcom/miui/gallery/model/CloudItem$1;

    invoke-direct {v6, p0, v12}, Lcom/miui/gallery/model/CloudItem$1;-><init>(Lcom/miui/gallery/model/CloudItem;Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 212
    .local v6, "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Lcom/miui/gallery/model/PhotoDetailInfo;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isShare()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    .line 215
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isShare()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v10

    .line 216
    .local v10, "id":J
    :goto_2
    sget-object v2, Lcom/miui/gallery/model/CloudItem;->DETAIL_INFO_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 217
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    .line 216
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object v0

    .line 171
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Lcom/miui/gallery/model/PhotoDetailInfo;>;"
    .end local v10    # "id":J
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {v12, v4, v13}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 174
    const/4 v0, 0x2

    invoke-static {v13}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 175
    const/4 v0, 0x3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 177
    :try_start_0
    invoke-static {v13}, Lmiui/graphics/BitmapFactory;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 178
    .local v7, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x4

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 179
    const/4 v0, 0x5

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v7    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 181
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "handler":Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;, "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<Lcom/miui/gallery/model/PhotoDetailInfo;>;"
    :cond_5
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_1

    .line 215
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v10

    goto :goto_2
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteInfo(Z)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 4
    .param p1, "strictMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    new-instance v0, Lcom/miui/gallery/model/FavoriteInfo;

    invoke-direct {v0}, Lcom/miui/gallery/model/FavoriteInfo;-><init>()V

    .line 294
    .local v0, "info":Lcom/miui/gallery/model/FavoriteInfo;
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isShare()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isSecret()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/FavoriteInfo;->setFavoriteUsable(Z)V

    .line 295
    iget v1, p0, Lcom/miui/gallery/model/CloudItem;->mIsFavorite:I

    if-lez v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/gallery/model/FavoriteInfo;->setFavorite(Z)V

    .line 296
    return-object v0

    :cond_0
    move v1, v3

    .line 294
    goto :goto_0

    :cond_1
    move v2, v3

    .line 295
    goto :goto_1
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/miui/gallery/model/CloudItem;->mId:J

    return-wide v0
.end method

.method public getMicroPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/miui/gallery/model/BaseDataItem;->getMicroPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mSha1:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/model/BaseDataItem;->getMicroPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/miui/gallery/model/CloudItem;->mOrientation:I

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public hasFace()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/miui/gallery/model/CloudItem;->mHasFace:Z

    return v0
.end method

.method public initSupportOperations()I
    .locals 9

    .prologue
    const v8, -0x1000001

    const v7, -0x800001

    .line 222
    const/high16 v6, 0x100000

    .line 223
    .local v6, "result":I
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-static {v0}, Lcom/miui/gallery/util/PhotoOperationsUtil;->getVideoSupportedOperations(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v6, v1

    .line 230
    :goto_0
    or-int/lit8 v6, v6, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isGif()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    or-int/lit16 v6, v6, 0x200

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/model/CloudItem;->needDownloadOrigin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    or-int/lit16 v6, v6, 0x100

    .line 239
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isShare()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    and-int/2addr v6, v7

    .line 241
    and-int/2addr v6, v8

    .line 242
    and-int/lit16 v6, v6, -0x201

    .line 243
    invoke-direct {p0}, Lcom/miui/gallery/model/CloudItem;->canDelete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    and-int/lit8 v6, v6, -0x2

    .line 267
    :cond_1
    :goto_2
    return v6

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem;->mMimeType:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/gallery/model/CloudItem;->mLatitude:D

    iget-wide v4, p0, Lcom/miui/gallery/model/CloudItem;->mLongitude:D

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/PhotoOperationsUtil;->getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I

    move-result v1

    or-int/2addr v6, v1

    goto :goto_0

    .line 237
    :cond_3
    and-int/lit16 v6, v6, -0x101

    goto :goto_1

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    and-int/2addr v6, v7

    .line 249
    const v1, -0x100001

    and-int/2addr v6, v1

    .line 250
    and-int/lit8 v6, v6, -0x21

    .line 251
    and-int/lit16 v6, v6, -0x801

    .line 252
    const v1, -0x400001

    and-int/2addr v6, v1

    .line 253
    const/high16 v1, 0x1000000

    or-int/2addr v6, v1

    goto :goto_2

    .line 255
    :cond_5
    and-int/2addr v6, v8

    .line 256
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->isSecretAlbumFeatureOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 257
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    and-int/2addr v6, v7

    goto :goto_2

    .line 259
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/util/StorageUtils;->isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/high16 v1, 0x800000

    or-int/2addr v6, v1

    goto :goto_2

    .line 263
    :cond_7
    and-int/2addr v6, v7

    goto :goto_2
.end method

.method public isEverSynced()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mServerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMine()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isShare()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/miui/gallery/model/CloudItem;->isCreatorEqualsCurrentAccount()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/model/CloudItem;->mIsSynced:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 307
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/model/CloudItem;->isCreatorFromAlbumOwner()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/miui/gallery/model/CloudItem;->isCreatorEqualsCurrentAccount()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/gallery/model/CloudItem;->mIsSynced:Z

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSecret()Z
    .locals 4

    .prologue
    .line 318
    invoke-super {p0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/model/CloudItem;->mLocalGroupId:J

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShare()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/miui/gallery/model/CloudItem;->mIsShareItem:Z

    return v0
.end method

.method protected onLoadCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 328
    invoke-super {p0}, Lcom/miui/gallery/model/BaseDataItem;->onLoadCache()V

    .line 330
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->isEverSynced()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 333
    invoke-virtual {p0, v6}, Lcom/miui/gallery/model/CloudItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/model/CloudItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    invoke-virtual {p0, v6}, Lcom/miui/gallery/model/CloudItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 339
    :cond_1
    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "creatorId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/model/CloudItem;->mCreatorId:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/miui/gallery/model/CloudItem;->removeSupportOperation(I)V

    .line 123
    :cond_0
    return-object p0
.end method

.method public setHasFace(Z)V
    .locals 0
    .param p1, "hasFace"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/miui/gallery/model/CloudItem;->mHasFace:Z

    .line 128
    return-void
.end method

.method public setId(J)Lcom/miui/gallery/model/CloudItem;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/miui/gallery/model/CloudItem;->mId:J

    .line 67
    return-object p0
.end method

.method public setIsFavorite(I)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "isFavorite"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/miui/gallery/model/CloudItem;->mIsFavorite:I

    .line 114
    return-object p0
.end method

.method public setOrientation(I)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/miui/gallery/model/CloudItem;->mOrientation:I

    .line 109
    return-object p0
.end method

.method public setServerId(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/model/CloudItem;->mServerId:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setSha1(Ljava/lang/String;)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "sha1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/model/CloudItem;->mSha1:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setShare(Z)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "isShareItem"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/miui/gallery/model/CloudItem;->mIsShareItem:Z

    .line 76
    return-object p0
.end method

.method public setSynced(Z)Lcom/miui/gallery/model/CloudItem;
    .locals 0
    .param p1, "synced"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/miui/gallery/model/CloudItem;->mIsSynced:Z

    .line 81
    return-object p0
.end method

.method public wrapAddToFavoritesListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mAddToFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mAddToFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    invoke-static {v0}, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->access$000(Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    new-instance v0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;-><init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Lcom/miui/gallery/model/CloudItem;I)V

    iput-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mAddToFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mAddToFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    return-object v0
.end method

.method public wrapRemoveFromFavoritesListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mRemoveFromFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mRemoveFromFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    invoke-static {v0}, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->access$000(Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    new-instance v0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;-><init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Lcom/miui/gallery/model/CloudItem;I)V

    iput-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mRemoveFromFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem;->mRemoveFromFavoritesListener:Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    return-object v0
.end method
