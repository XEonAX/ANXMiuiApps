.class public Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;
.super Lcom/nexstreaming/app/common/nexasset/overlay/impl/AbstractOverlayAsset;
.source "AnimatedOverlayAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnimOverlayAsset"

.field private static final MAX_TEX_SIZE:I = 0x7d0


# instance fields
.field private baseFile:Ljava/lang/String;

.field private overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

.field private reader:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

.field private vectorScale:F


# direct methods
.method public constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AbstractOverlayAsset;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->getAssetPackageReader()Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 50
    :try_start_1
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 51
    :try_start_2
    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->fromInputStream(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    .line 52
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    if-gtz v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;

    .line 55
    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 56
    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;

    .line 57
    iget-boolean v4, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->blank:Z

    if-nez v4, :cond_1

    .line 58
    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->src:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 59
    invoke-static {v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/b;->b()Landroid/graphics/Picture;

    move-result-object v0

    .line 60
    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    .line 61
    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    iput v0, v4, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    if-gtz v0, :cond_3

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    const/16 v4, 0x64

    iput v4, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    .line 68
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    const/16 v4, 0x64

    iput v4, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71
    :cond_3
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 72
    invoke-static {v3}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 73
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 87
    return-void

    .line 71
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 72
    invoke-static {v3}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 73
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 71
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultDuration()I
    .locals 6

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->duration:I

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v1, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->fps:I

    div-int v2, v0, v1

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;

    .line 105
    iget v5, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->iterationCount:I

    if-ltz v5, :cond_0

    .line 107
    iget v5, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->iterationCount:I

    mul-int/2addr v0, v5

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v5, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v5, v5, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->fps:I

    div-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/16 v0, 0x7530

    if-gt v1, v0, :cond_0

    .line 111
    if-ge v1, v3, :cond_3

    move v2, v3

    .line 112
    goto :goto_0

    :cond_3
    move v2, v1

    .line 113
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    return v0
.end method

.method public onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
    .locals 6
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
    .line 118
    const/4 v3, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->getAssetPackageReader()Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    :goto_0
    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v1, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v2, v2, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 125
    const/high16 v5, 0x3f800000    # 1.0f

    .line 126
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;->getItemInfo()Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;-><init>(Landroid/graphics/RectF;Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;Ljava/lang/String;F)V

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "AnimOverlayAsset"

    const-string v2, "Error getting package reader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
