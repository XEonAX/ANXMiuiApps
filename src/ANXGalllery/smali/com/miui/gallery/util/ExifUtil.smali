.class public Lcom/miui/gallery/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/ExifUtil$UserCommentData;,
        Lcom/miui/gallery/util/ExifUtil$ExifInfo;,
        Lcom/miui/gallery/util/ExifUtil$ExifCreator;
    }
.end annotation


# static fields
.field public static final sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/ExifUtil$ExifCreator",
            "<",
            "Lcom/miui/gallery3d/exif/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final sMediaExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/ExifUtil$ExifCreator",
            "<",
            "Landroid/media/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/ExifUtil$ExifCreator",
            "<",
            "Landroid/support/media/ExifInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/miui/gallery/util/ExifUtil$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/ExifUtil$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ExifUtil;->sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    .line 87
    new-instance v0, Lcom/miui/gallery/util/ExifUtil$2;

    invoke-direct {v0}, Lcom/miui/gallery/util/ExifUtil$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ExifUtil;->sMediaExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    .line 136
    new-instance v0, Lcom/miui/gallery/util/ExifUtil$3;

    invoke-direct {v0}, Lcom/miui/gallery/util/ExifUtil$3;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ExifUtil;->sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    return-void
.end method

.method public static adjustRectOrientation(IILandroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 9
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "orientation"    # I
    .param p4, "revert"    # Z

    .prologue
    .line 467
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 468
    .local v2, "left":F
    iget v4, p2, Landroid/graphics/RectF;->top:F

    .line 469
    .local v4, "top":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 470
    .local v5, "width":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 471
    .local v0, "height":F
    move v3, p0

    .line 474
    .local v3, "targetImageWidth":I
    if-nez p4, :cond_0

    .line 475
    packed-switch p3, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 493
    .local v1, "isFlip":Z
    packed-switch p3, :pswitch_data_1

    .line 525
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_1

    .line 526
    int-to-float v6, v3

    sub-float/2addr v6, v2

    sub-float v2, v6, v5

    .line 528
    :cond_1
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v2, v5

    add-float v8, v4, v0

    invoke-direct {v6, v2, v4, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6

    .line 477
    .end local v1    # "isFlip":Z
    :pswitch_1
    const/4 p3, 0x5

    .line 478
    goto :goto_0

    .line 480
    :pswitch_2
    const/16 p3, 0x8

    .line 481
    goto :goto_0

    .line 483
    :pswitch_3
    const/4 p3, 0x7

    .line 484
    goto :goto_0

    .line 486
    :pswitch_4
    const/4 p3, 0x6

    goto :goto_0

    .line 495
    .restart local v1    # "isFlip":Z
    :pswitch_5
    const/4 v1, 0x1

    goto :goto_1

    .line 499
    :pswitch_6
    const/4 v1, 0x1

    .line 501
    :pswitch_7
    move v3, p1

    .line 502
    int-to-float v6, p1

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v2, v6, v7

    .line 503
    iget v4, p2, Landroid/graphics/RectF;->left:F

    .line 504
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 505
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 506
    goto :goto_1

    .line 508
    :pswitch_8
    const/4 v1, 0x1

    .line 510
    :pswitch_9
    int-to-float v6, p0

    iget v7, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float v2, v6, v7

    .line 511
    int-to-float v6, p1

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v4, v6, v7

    .line 512
    goto :goto_1

    .line 514
    :pswitch_a
    const/4 v1, 0x1

    .line 516
    :pswitch_b
    move v3, p1

    .line 517
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 518
    int-to-float v6, p0

    iget v7, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float v4, v6, v7

    .line 519
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 520
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_1

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 493
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static createExifInterface(Ljava/lang/String;[BLcom/miui/gallery/util/ExifUtil$ExifCreator;)Ljava/lang/Object;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "secretKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/miui/gallery/util/ExifUtil$ExifCreator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "exifCreator":Lcom/miui/gallery/util/ExifUtil$ExifCreator;, "Lcom/miui/gallery/util/ExifUtil$ExifCreator<TT;>;"
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 557
    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v1, v5

    .line 589
    :goto_0
    return-object v1

    .line 560
    :cond_1
    const/4 v2, 0x0

    .line 561
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 564
    .local v3, "temp":Ljava/io/File;
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/gallery/util/BitmapUtils;->createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 565
    invoke-interface {p2, v2}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 566
    .local v1, "exif":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_3

    .line 584
    if-eqz v3, :cond_2

    .line 585
    new-array v5, v11, [Ljava/io/File;

    aput-object v3, v5, v10

    invoke-static {v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 587
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 569
    .end local v1    # "exif":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "ExifUtil"

    const-string v7, "Can\'t read EXIF tags from file [%s] %s"

    invoke-static {v6, v7, p0, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 573
    if-eqz p1, :cond_6

    .line 574
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    .line 574
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    .end local v3    # "temp":Ljava/io/File;
    .local v4, "temp":Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, p1}, Lcom/miui/gallery/util/GalleryAes;->decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 577
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/util/BitmapUtils;->createInputStream(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 578
    invoke-interface {p2, v2}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 584
    if-eqz v4, :cond_4

    .line 585
    new-array v5, v11, [Ljava/io/File;

    aput-object v4, v5, v10

    invoke-static {v5}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 587
    :cond_4
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    move-object v3, v4

    .line 584
    .end local v4    # "temp":Ljava/io/File;
    .restart local v3    # "temp":Ljava/io/File;
    :cond_6
    if-eqz v3, :cond_7

    .line 585
    new-array v6, v11, [Ljava/io/File;

    aput-object v3, v6, v10

    invoke-static {v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 587
    :cond_7
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    move-object v1, v5

    .line 589
    goto :goto_0

    .line 581
    :catch_1
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "ExifUtil"

    const-string v7, "Can\'t read EXIF tags from file [%s] %s"

    invoke-static {v6, v7, p0, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    if-eqz v3, :cond_8

    .line 585
    new-array v6, v11, [Ljava/io/File;

    aput-object v3, v6, v10

    invoke-static {v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 587
    :cond_8
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 584
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_9

    .line 585
    new-array v6, v11, [Ljava/io/File;

    aput-object v3, v6, v10

    invoke-static {v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 587
    :cond_9
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 584
    .end local v3    # "temp":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "temp":Ljava/io/File;
    .restart local v3    # "temp":Ljava/io/File;
    goto :goto_3

    .line 581
    .end local v3    # "temp":Ljava/io/File;
    .restart local v4    # "temp":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "temp":Ljava/io/File;
    .restart local v3    # "temp":Ljava/io/File;
    goto :goto_2
.end method

.method public static exifOrientationToDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    .line 367
    packed-switch p0, :pswitch_data_0

    .line 372
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 368
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 369
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 370
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getDate(Landroid/support/media/ExifInterface;)Ljava/util/Date;
    .locals 1
    .param p0, "exif"    # Landroid/support/media/ExifInterface;

    .prologue
    .line 333
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDateTime(Landroid/media/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Landroid/media/ExifInterface;

    .prologue
    .line 321
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDateTime(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDateTime(Landroid/support/media/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Landroid/support/media/ExifInterface;

    .prologue
    .line 317
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDateTime(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getGpsDate(Landroid/support/media/ExifInterface;)Ljava/util/Date;
    .locals 2
    .param p0, "exif"    # Landroid/support/media/ExifInterface;

    .prologue
    .line 387
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    .line 387
    :cond_0
    const-string v0, "GPSDateStamp"

    .line 388
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 389
    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGpsDateTime(Landroid/support/media/ExifInterface;)J
    .locals 2
    .param p0, "exif"    # Landroid/support/media/ExifInterface;

    .prologue
    .line 381
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    .line 382
    :goto_0
    return-wide v0

    .line 381
    :cond_0
    const-string v0, "GPSDateStamp"

    .line 382
    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 383
    invoke-virtual {p0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getOrientation(Lcom/miui/gallery3d/exif/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 337
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 338
    .local v0, "rawValue":Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 337
    .end local v0    # "rawValue":Ljava/lang/Integer;
    :cond_0
    sget v1, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 338
    .restart local v0    # "rawValue":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public static getRotationDegrees(Landroid/support/media/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Landroid/support/media/ExifInterface;

    .prologue
    const/4 v0, 0x1

    .line 352
    if-nez p0, :cond_0

    .line 354
    .local v0, "orientation":I
    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->exifOrientationToDegrees(I)I

    move-result v1

    return v1

    .line 352
    .end local v0    # "orientation":I
    :cond_0
    const-string v1, "Orientation"

    .line 353
    invoke-virtual {p0, v1, v0}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getRotationDegrees(Lcom/miui/gallery3d/exif/ExifInterface;)I
    .locals 1
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 342
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getOrientation(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->exifOrientationToDegrees(I)I

    move-result v0

    return v0
.end method

.method public static getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v3, 0x0

    .line 212
    .local v3, "exception":Ljava/lang/Exception;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 214
    :try_start_0
    sget-object v8, Lcom/miui/gallery/util/ExifUtil;->sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v8, p0}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/media/ExifInterface;

    .line 215
    .local v5, "exifInterface":Landroid/support/media/ExifInterface;
    new-instance v0, Lcom/miui/gallery/util/UserComment;

    new-instance v8, Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-direct {v8, v5}, Lcom/miui/gallery/util/ExifInterfaceWrapper;-><init>(Landroid/support/media/ExifInterface;)V

    invoke-direct {v0, v8}, Lcom/miui/gallery/util/UserComment;-><init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V

    .line 216
    .local v0, "comment":Lcom/miui/gallery/util/UserComment;
    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->isOriginalUserCommentUsable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    new-instance v1, Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getSha1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getFileExt()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    .end local v5    # "exifInterface":Landroid/support/media/ExifInterface;
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v2

    .line 221
    const-string v8, "ExifUtil"

    const-string v9, "Failed to read user comment using support exif interface, %s"

    invoke-static {v8, v9, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    .line 227
    :try_start_1
    sget-object v8, Lcom/miui/gallery/util/ExifUtil;->sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v8, p0}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery3d/exif/ExifInterface;

    .line 228
    .local v4, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    if-eqz v4, :cond_1

    .line 229
    new-instance v0, Lcom/miui/gallery/util/UserComment;

    new-instance v8, Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-direct {v8, v4}, Lcom/miui/gallery/util/ExifInterfaceWrapper;-><init>(Lcom/miui/gallery3d/exif/ExifInterface;)V

    invoke-direct {v0, v8}, Lcom/miui/gallery/util/UserComment;-><init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V

    .line 230
    .restart local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->isOriginalUserCommentUsable()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getSha1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 231
    new-instance v1, Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getSha1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/miui/gallery/util/UserComment;->getFileExt()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v1, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    invoke-static {}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v7

    .line 233
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "exception"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v8, "path"

    invoke-interface {v7, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v8, "exif_parser"

    const-string v9, "exif_read_by_gallery_3d_exif_interface"

    invoke-static {v8, v9, v7}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    invoke-static {p0, v1}, Lcom/miui/gallery/util/ExifUtil;->rewriteUserComment(Ljava/lang/String;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    .end local v1    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v4    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 245
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v2

    .line 246
    const-string v8, "ExifUtil"

    const-string v9, "Failed to read user comment using gallery 3d exif interface, %s"

    invoke-static {v8, v9, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v3, :cond_3

    .line 251
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 252
    .restart local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v8, "version"

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v8, "path"

    invoke-interface {v7, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v8, "exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v8, "exif_parser"

    const-string v9, "exif_read_error"

    invoke-static {v8, v9, v7}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    throw v3

    .line 233
    .restart local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    .restart local v1    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .restart local v4    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :cond_2
    :try_start_2
    const-string/jumbo v8, "unrecognizable UserComment"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 263
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    .end local v1    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v4    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v0

    .line 199
    .local v0, "commentData":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 206
    .end local v0    # "commentData":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :goto_0
    return-object v2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ExifUtil"

    const-string v3, "Failed to read exif!!"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getXiaomiComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    :try_start_0
    sget-object v2, Lcom/miui/gallery/util/ExifUtil;->sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v2, p0}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifInterface;

    .line 281
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getXiaomiComment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 288
    .end local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :goto_0
    return-object v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExifUtil"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getXiaomiCommentSensorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getXiaomiComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "xiaomiComment":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "sensor_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 305
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "xiaomiComment":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ExifUtil"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isFromFrontCamera(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "front"

    invoke-static {p0}, Lcom/miui/gallery/util/ExifUtil;->getXiaomiCommentSensorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMotionPhoto(Lcom/miui/gallery3d/exif/ExifInterface;)Z
    .locals 5
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    const v3, 0x8897    # 4.8999E-41f

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v0

    .line 434
    .local v0, "value":Ljava/lang/Byte;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isWidthHeightRotated(I)Z
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 621
    packed-switch p0, :pswitch_data_0

    .line 628
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 626
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseRotationInfo(I)Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "isFlip":Z
    const/4 v1, 0x0

    .line 595
    .local v1, "rotation":I
    packed-switch p0, :pswitch_data_0

    .line 617
    :goto_0
    new-instance v2, Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/gallery/util/ExifUtil$ExifInfo;-><init>(IIZ)V

    return-object v2

    .line 597
    :pswitch_0
    const/4 v0, 0x1

    .line 599
    :pswitch_1
    const/4 v1, 0x0

    .line 600
    goto :goto_0

    .line 602
    :pswitch_2
    const/4 v0, 0x1

    .line 604
    :pswitch_3
    const/16 v1, 0x5a

    .line 605
    goto :goto_0

    .line 607
    :pswitch_4
    const/4 v0, 0x1

    .line 609
    :pswitch_5
    const/16 v1, 0xb4

    .line 610
    goto :goto_0

    .line 612
    :pswitch_6
    const/4 v0, 0x1

    .line 614
    :pswitch_7
    const/16 v1, 0x10e

    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method public static parseRotationInfo(Ljava/lang/String;[B)Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "secretKey"    # [B

    .prologue
    .line 532
    sget-object v0, Lcom/miui/gallery/util/ExifUtil;->sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/ExifUtil;->parseRotationInfo(Ljava/lang/String;[BLcom/miui/gallery/util/ExifUtil$ExifCreator;)Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseRotationInfo(Ljava/lang/String;[BLcom/miui/gallery/util/ExifUtil$ExifCreator;)Lcom/miui/gallery/util/ExifUtil$ExifInfo;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "secretKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/miui/gallery/util/ExifUtil$ExifCreator",
            "<TT;>;)",
            "Lcom/miui/gallery/util/ExifUtil$ExifInfo;"
        }
    .end annotation

    .prologue
    .local p2, "creator":Lcom/miui/gallery/util/ExifUtil$ExifCreator;, "Lcom/miui/gallery/util/ExifUtil$ExifCreator<TT;>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 536
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ExifUtil;->createExifInterface(Ljava/lang/String;[BLcom/miui/gallery/util/ExifUtil$ExifCreator;)Ljava/lang/Object;

    move-result-object v0

    .line 537
    .local v0, "exif":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 539
    instance-of v3, v0, Landroid/support/media/ExifInterface;

    if-eqz v3, :cond_1

    .line 540
    check-cast v0, Landroid/support/media/ExifInterface;

    .end local v0    # "exif":Ljava/lang/Object;, "TT;"
    const-string v2, "Orientation"

    invoke-virtual {v0, v2, v4}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 551
    .local v1, "orientation":I
    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/util/ExifUtil;->parseRotationInfo(I)Lcom/miui/gallery/util/ExifUtil$ExifInfo;

    move-result-object v2

    .line 553
    .end local v1    # "orientation":I
    :cond_0
    :goto_1
    return-object v2

    .line 541
    .restart local v0    # "exif":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v3, v0, Lcom/miui/gallery3d/exif/ExifInterface;

    if-eqz v3, :cond_2

    .line 542
    check-cast v0, Lcom/miui/gallery3d/exif/ExifInterface;

    .end local v0    # "exif":Ljava/lang/Object;, "TT;"
    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->getOrientation(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v1

    .restart local v1    # "orientation":I
    goto :goto_0

    .line 543
    .end local v1    # "orientation":I
    .restart local v0    # "exif":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v3, v0, Landroid/media/ExifInterface;

    if-eqz v3, :cond_3

    .line 544
    check-cast v0, Landroid/media/ExifInterface;

    .end local v0    # "exif":Ljava/lang/Object;, "TT;"
    const-string v2, "Orientation"

    invoke-virtual {v0, v2, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "orientation":I
    goto :goto_0

    .line 548
    .end local v1    # "orientation":I
    .restart local v0    # "exif":Ljava/lang/Object;, "TT;"
    :cond_3
    const-string v3, "ExifUtil"

    const-string v4, "Not supported exif interface %s"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static rewriteUserComment(Ljava/lang/String;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    .prologue
    .line 268
    :try_start_0
    const-string v2, "ExifUtil"

    const-string v3, "Try to rewrite UserComment using android.media.ExifInterface"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/miui/gallery/util/ExifUtil;->sMediaExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v2, p0}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface;

    .line 270
    .local v1, "mediaExifI":Landroid/media/ExifInterface;
    invoke-static {v1, p1}, Lcom/miui/gallery/util/ExifUtil;->setUserCommentData(Landroid/media/ExifInterface;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V

    .line 271
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1    # "mediaExifI":Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExifUtil"

    const-string v3, "Failed to rewrite UserComment using android.media.ExifInterface, %s"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDateTime(Landroid/media/ExifInterface;Ljava/lang/String;)V
    .locals 1
    .param p0, "exif"    # Landroid/media/ExifInterface;
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 325
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "DateTime"

    invoke-virtual {p0, v0, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserCommentData(Landroid/media/ExifInterface;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V
    .locals 2
    .param p0, "exif"    # Landroid/media/ExifInterface;
    .param p1, "data"    # Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 190
    new-instance v0, Lcom/miui/gallery/util/UserComment;

    new-instance v1, Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/ExifInterfaceWrapper;-><init>(Landroid/media/ExifInterface;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/UserComment;-><init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V

    .line 191
    .local v0, "comment":Lcom/miui/gallery/util/UserComment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/UserComment;->setData(Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V

    .line 193
    .end local v0    # "comment":Lcom/miui/gallery/util/UserComment;
    :cond_0
    return-void
.end method

.method public static supportRefocus(Lcom/miui/gallery3d/exif/ExifInterface;)Z
    .locals 2
    .param p0, "exif"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    const/4 v1, 0x2

    .line 412
    if-eqz p0, :cond_1

    const v0, 0x8890

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8898    # 4.9E-41f

    .line 414
    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifInterface;->getTag(II)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
