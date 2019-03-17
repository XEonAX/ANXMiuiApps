.class public Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverColorStrategy.java"


# instance fields
.field private mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;-><init>(I)V

    .line 23
    new-instance v0, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    invoke-direct {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    .line 27
    return-void
.end method

.method private getCoverBitmap(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v10, 0x0

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v8, v10

    .line 90
    :goto_0
    return-object v8

    .line 80
    :cond_0
    const/4 v7, 0x0

    .line 82
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_0
    sget-object v0, Lcom/miui/gallery/util/ExifUtil;->sSupportExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-interface {v0, p1}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/media/ExifInterface;

    .line 83
    .local v6, "exif":Landroid/support/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "orientation":I
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    iget-object v5, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/DecodeRegionImageUtils;->decodeFaceRegion(Landroid/graphics/RectF;Ljava/lang/String;FIILcom/miui/gallery/util/ReusedBitmapCache;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 85
    .local v8, "result":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    invoke-virtual {v0, v8}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->put(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 87
    .end local v4    # "orientation":I
    .end local v6    # "exif":Landroid/support/media/ExifInterface;
    .end local v8    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 90
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v10

    goto :goto_0

    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getCoverFilePath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/miui/gallery/util/face/FaceRegionRectF;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 96
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 97
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/4 v4, 0x2

    .line 98
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 99
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x3

    .line 100
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float/2addr v4, v5

    const/16 v5, 0xb

    .line 101
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/util/face/FaceRegionRectF;-><init>(FFFFI)V

    return-object v0
.end method

.method public isValid(Landroid/database/Cursor;)Z
    .locals 15
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->getCoverFilePath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->getFaceRegionRectF(Landroid/database/Cursor;)Lcom/miui/gallery/util/face/FaceRegionRectF;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->getCoverBitmap(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    .local v1, "coverBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 33
    const/4 v13, 0x0

    .line 56
    :goto_0
    return v13

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 36
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 37
    .local v12, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v12, :cond_4

    .line 38
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 39
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 41
    .local v9, "pixel":I
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 42
    .local v10, "red":I
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 43
    .local v0, "blue":I
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 45
    .local v2, "green":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 46
    .local v7, "max":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 47
    .local v8, "min":I
    if-nez v7, :cond_1

    const/4 v11, 0x0

    .line 48
    .local v11, "saturation":F
    :goto_3
    add-int v13, v7, v8

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v6, v13, v14

    .line 51
    .local v6, "lightness":F
    const/high16 v13, 0x3e800000    # 0.25f

    cmpl-float v13, v11, v13

    if-lez v13, :cond_2

    const/high16 v13, 0x3e800000    # 0.25f

    cmpl-float v13, v6, v13

    if-lez v13, :cond_2

    const/high16 v13, 0x3f400000    # 0.75f

    cmpg-float v13, v6, v13

    if-gez v13, :cond_2

    .line 52
    const/4 v13, 0x1

    goto :goto_0

    .line 47
    .end local v6    # "lightness":F
    .end local v11    # "saturation":F
    :cond_1
    sub-int v13, v7, v8

    int-to-float v13, v13

    int-to-float v14, v7

    div-float v11, v13, v14

    goto :goto_3

    .line 38
    .restart local v6    # "lightness":F
    .restart local v11    # "saturation":F
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 37
    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v6    # "lightness":F
    .end local v7    # "max":I
    .end local v8    # "min":I
    .end local v9    # "pixel":I
    .end local v10    # "red":I
    .end local v11    # "saturation":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    .end local v5    # "j":I
    :cond_4
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/provider/peoplecover/CoverColorStrategy;->mBitCache:Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/peoplecover/PeopleCoverReusedBitCache;->clear()V

    .line 62
    return-void
.end method
