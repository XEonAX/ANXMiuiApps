.class public Lcom/nexstreaming/app/common/nexasset/assetpackage/e;
.super Ljava/lang/Object;
.source "IconHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/e;->a(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x0

    .line 54
    :try_start_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ".svg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-static {v3}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/b;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/b;->b()Landroid/graphics/Picture;

    move-result-object v4

    .line 57
    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 58
    int-to-float v0, p3

    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 59
    invoke-virtual {v4}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v5, v0

    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 61
    :try_start_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :try_start_3
    new-instance v2, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, p3

    int-to-float v5, v5

    invoke-direct {v2, v6, v7, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    move-object v6, v1

    .line 76
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v1, v2, :cond_1

    .line 78
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 79
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    :cond_1
    :goto_2
    return-object v6

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v6, 0x0

    goto :goto_2

    .line 64
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 65
    :try_start_5
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 66
    :try_start_6
    invoke-virtual {v4, v0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 73
    :catch_1
    move-exception v2

    move-object v6, v1

    move-object v1, v2

    .line 74
    :goto_3
    :try_start_7
    const-string v2, "IconHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 76
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v1, v2, :cond_1

    .line 78
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 79
    if-nez v0, :cond_3

    .line 80
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 69
    :cond_4
    :try_start_8
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    move-object v0, v2

    move-object v6, v1

    goto/16 :goto_1

    .line 76
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v4, v1

    move-object v0, v2

    :goto_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->transition:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v1, v2, :cond_6

    .line 78
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 79
    if-nez v0, :cond_5

    .line 80
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    :cond_6
    throw v6

    .line 76
    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v4, v1

    move-object v0, v2

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v4, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v4, v6

    move-object v6, v1

    goto :goto_4

    .line 73
    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_3
.end method

.method public static b(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/e;->a(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
