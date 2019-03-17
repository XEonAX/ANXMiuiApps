.class Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;
.super Ljava/lang/Object;
.source "GalleryOpenProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryOpenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaInfo"
.end annotation


# instance fields
.field mAlbumName:Ljava/lang/String;

.field mBucketId:J

.field mBucketName:Ljava/lang/String;

.field mDateModified:Ljava/lang/Long;

.field mDateTaken:Ljava/lang/Long;

.field mDuration:Ljava/lang/Long;

.field mFileName:Ljava/lang/String;

.field mHeight:Ljava/lang/Integer;

.field mId:J

.field mLatitude:Ljava/lang/Double;

.field mLongitude:Ljava/lang/Double;

.field mMimeType:Ljava/lang/String;

.field mOrientation:Ljava/lang/Integer;

.field mPath:Ljava/lang/String;

.field mResolution:Ljava/lang/String;

.field mSize:Ljava/lang/Long;

.field mTitle:Ljava/lang/String;

.field mType:I

.field mWidth:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryOpenProvider;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/GalleryOpenProvider;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->this$0:Lcom/miui/gallery/provider/GalleryOpenProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/GalleryOpenProvider;Lcom/miui/gallery/provider/GalleryOpenProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/GalleryOpenProvider;
    .param p2, "x1"    # Lcom/miui/gallery/provider/GalleryOpenProvider$1;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;-><init>(Lcom/miui/gallery/provider/GalleryOpenProvider;)V

    return-void
.end method

.method private decodeBounds(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 490
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 491
    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 492
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 493
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 494
    return-void
.end method


# virtual methods
.method fillByFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 475
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "try fill with %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file not exists"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return v1

    .line 482
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 484
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->decodeBounds(Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x1

    goto :goto_0
.end method

.method init(Landroid/database/Cursor;)Z
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mId:J

    .line 411
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 412
    .local v13, "type":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_6

    .line 413
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    .line 420
    :goto_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 421
    .local v9, "rawLat":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "refLat":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    .line 423
    invoke-static {v9, v11}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLatitude:Ljava/lang/Double;

    .line 425
    :cond_0
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 426
    .local v10, "rawLon":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 427
    .local v12, "refLon":Ljava/lang/String;
    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    .line 428
    invoke-static {v10, v12}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLongitude:Ljava/lang/Double;

    .line 430
    :cond_1
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/miui/gallery/util/Numbers;->getLong(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    .line 431
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    .line 432
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    .line 433
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    .line 434
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    .line 435
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->this$0:Lcom/miui/gallery/provider/GalleryOpenProvider;

    invoke-static {v0}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$200(Lcom/miui/gallery/provider/GalleryOpenProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "cloud"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fileName"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    .line 438
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 437
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 440
    .local v8, "album":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 447
    iget v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 448
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    .line 451
    :cond_3
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 452
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    .line 453
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 454
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 455
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 456
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->exifOrientationToDegrees(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 458
    :cond_4
    iget v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    .line 462
    :cond_5
    const/4 v0, 0x1

    .line 470
    .end local v8    # "album":Landroid/database/Cursor;
    .end local v9    # "rawLat":Ljava/lang/String;
    .end local v10    # "rawLon":Ljava/lang/String;
    .end local v11    # "refLat":Ljava/lang/String;
    .end local v12    # "refLon":Ljava/lang/String;
    :goto_1
    return v0

    .line 414
    :cond_6
    const/4 v0, 0x2

    if-ne v13, v0, :cond_7

    .line 415
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    goto/16 :goto_0

    .line 417
    :cond_7
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d is not a media type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    const/4 v0, 0x0

    goto :goto_1

    .line 444
    .restart local v8    # "album":Landroid/database/Cursor;
    .restart local v9    # "rawLat":Ljava/lang/String;
    .restart local v10    # "rawLon":Ljava/lang/String;
    .restart local v11    # "refLat":Ljava/lang/String;
    .restart local v12    # "refLon":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 463
    :cond_8
    iget v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 464
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current type is video, but no file path"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    goto :goto_1

    .line 466
    :cond_9
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 467
    :cond_a
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->fillByFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 469
    :cond_b
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no path return"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    goto :goto_1
.end method

.method init(Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide v10, 0x7fffffffffffffffL

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 337
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "query media info for file: %s"

    invoke-static {v6, v9, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    move v7, v8

    .line 406
    :cond_0
    :goto_0
    return v7

    .line 342
    :cond_1
    iput-wide v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mId:J

    .line 344
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 346
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 347
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeTypeByParseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 348
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v7, v8

    .line 349
    goto :goto_0

    .line 353
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    iput v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    .line 354
    iput-wide v10, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    .line 355
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    .line 357
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    .line 358
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    .line 359
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    .line 362
    iget v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    if-ne v6, v7, :cond_8

    .line 363
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->hasExif(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 364
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "reading exif"

    invoke-static {v6, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v6, Lcom/miui/gallery/util/ExifUtil;->sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v6, p1}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/media/ExifInterface;

    .line 366
    .local v1, "exif":Landroid/support/media/ExifInterface;
    if-nez v1, :cond_4

    .line 367
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Failed to read exif for path %s"

    invoke-static {v6, v8, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 353
    .end local v1    # "exif":Landroid/support/media/ExifInterface;
    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    .line 369
    .restart local v1    # "exif":Landroid/support/media/ExifInterface;
    :cond_4
    invoke-virtual {v1}, Landroid/support/media/ExifInterface;->getLatLong()[D

    move-result-object v3

    .line 370
    .local v3, "latLong":[D
    if-eqz v3, :cond_5

    .line 371
    aget-wide v10, v3, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLatitude:Ljava/lang/Double;

    .line 372
    aget-wide v10, v3, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLongitude:Ljava/lang/Double;

    .line 374
    :cond_5
    invoke-static {v1}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Landroid/support/media/ExifInterface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 375
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->getDateTaken(Landroid/support/media/ExifInterface;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    .line 376
    const-string v6, "ImageWidth"

    invoke-virtual {v1, v6, v8}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 377
    const-string v6, "ImageLength"

    invoke-virtual {v1, v6, v8}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 378
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_0

    .line 379
    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->decodeBounds(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v1    # "exif":Landroid/support/media/ExifInterface;
    .end local v3    # "latLong":[D
    :cond_7
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v9, "no exif found"

    invoke-static {v6, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->decodeBounds(Ljava/lang/String;)V

    .line 385
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    .line 386
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    goto/16 :goto_0

    .line 389
    :cond_8
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "is video, reading video info"

    invoke-static {v6, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    .line 392
    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/VideoAttrsReader;->read(Ljava/lang/String;)Lcom/miui/gallery/util/VideoAttrsReader;

    move-result-object v4

    .line 393
    .local v4, "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    invoke-virtual {v4}, Lcom/miui/gallery/util/VideoAttrsReader;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 395
    iput-object v5, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    .line 397
    :cond_9
    invoke-virtual {v4}, Lcom/miui/gallery/util/VideoAttrsReader;->getDateTaken()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    .line 398
    invoke-virtual {v4}, Lcom/miui/gallery/util/VideoAttrsReader;->getDuration()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    .line 399
    invoke-virtual {v4}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    .line 400
    invoke-virtual {v4}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 402
    .end local v4    # "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    .end local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method toContentValue()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 497
    new-instance v2, Landroid/content/ContentValues;

    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 498
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 499
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v1

    .line 500
    .local v0, "column":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 564
    :pswitch_0
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 498
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 510
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 513
    :pswitch_3
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 516
    :pswitch_4
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :pswitch_5
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 522
    :pswitch_6
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 525
    :pswitch_7
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 528
    :pswitch_8
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 531
    :pswitch_9
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 534
    :pswitch_a
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 537
    :pswitch_b
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 540
    :pswitch_c
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 543
    :pswitch_d
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 546
    :pswitch_e
    iget-wide v4, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 549
    :pswitch_f
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 552
    :pswitch_10
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :pswitch_11
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 558
    :pswitch_12
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 561
    :pswitch_13
    iget v3, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 567
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trans cursor to %s"

    invoke-static {v2}, Lcom/miui/gallery/provider/GalleryOpenProvider;->access$400(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    return-object v2

    .line 500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDateTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateTaken:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBucketName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mBucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDateModified:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMimeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResolution=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryOpenProvider$MediaInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
