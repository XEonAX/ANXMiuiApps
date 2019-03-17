.class public Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;
.super Lcom/nexstreaming/app/common/nexasset/overlay/impl/AbstractOverlayAsset;
.source "SVGOverlayAsset.java"


# static fields
.field public static final COLOR_REPLACEMENT_TOLERANCE:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "SVGOverlayAsset"

.field private static final MAX_TEX_SIZE:I = 0x7d0

.field private static serial:I


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->serial:I

    return-void
.end method

.method public constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AbstractOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->getSVG(Ljava/util/Map;)Lcom/larvalabs/svgandroid/b;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/b;->b()Landroid/graphics/Picture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->width:I

    .line 38
    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/b;->b()Landroid/graphics/Picture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->height:I

    .line 40
    :cond_0
    return-void
.end method

.method private getSVG(Ljava/util/Map;)Lcom/larvalabs/svgandroid/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/larvalabs/svgandroid/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    .line 47
    if-eqz p1, :cond_3

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "color:svgcolor_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "color:svgcolor_"

    const-string v6, "#"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/c;->a(Ljava/lang/String;)I

    move-result v1

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/c;->a(Ljava/lang/String;)I

    move-result v5

    .line 52
    if-nez v2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v2, v0

    .line 55
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 58
    :goto_3
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->getAssetPackageReader()Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Lcom/larvalabs/svgandroid/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->getItemInfo()Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Lcom/larvalabs/svgandroid/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 60
    const/16 v4, 0x32

    :try_start_2
    invoke-static {v1, v0, v4}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/io/InputStream;Ljava/util/Map;I)Lcom/larvalabs/svgandroid/b;
    :try_end_2
    .catch Lcom/larvalabs/svgandroid/SVGParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 64
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 67
    :goto_4
    return-object v3

    .line 61
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 62
    :goto_5
    :try_start_3
    const-string v4, "SVGOverlayAsset"

    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .line 64
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_6
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 64
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 61
    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_3
.end method


# virtual methods
.method public getDefaultDuration()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->width:I

    return v0
.end method

.method public onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;",
            "Landroid/graphics/RectF;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 87
    sget v1, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->serial:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->serial:I

    .line 91
    :try_start_0
    invoke-direct {p0, p4}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->getSVG(Ljava/util/Map;)Lcom/larvalabs/svgandroid/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string v2, "SVGOverlayAsset"

    const-string v3, "Error loading asset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    :cond_0
    const/16 v0, 0x7d0

    iget v3, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->width:I

    iget v4, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v0, v3

    int-to-float v0, v0

    .line 102
    invoke-virtual {v2}, Lcom/larvalabs/svgandroid/b;->b()Landroid/graphics/Picture;

    move-result-object v0

    .line 103
    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 106
    invoke-virtual {v0, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 107
    const-string v0, "SVGOverlayAsset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAwake OUT : [#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] actualScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;-><init>(Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;ILandroid/graphics/RectF;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method
