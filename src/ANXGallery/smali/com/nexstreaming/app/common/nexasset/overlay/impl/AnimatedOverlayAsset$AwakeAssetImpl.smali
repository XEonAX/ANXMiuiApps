.class Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;
.super Ljava/lang/Object;
.source "AnimatedOverlayAsset.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AwakeAssetImpl"
.end annotation


# instance fields
.field private final baseFile:Ljava/lang/String;

.field private bitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final bounds:Landroid/graphics/RectF;

.field private final overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

.field private final reader:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

.field private final vectorScale:F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl$1;

    const/high16 v1, 0x2800000

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl$1;-><init>(Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;I)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bitmapCache:Landroid/util/LruCache;

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bounds:Landroid/graphics/RectF;

    .line 140
    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    .line 141
    iput-object p3, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->reader:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    .line 142
    iput-object p4, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->baseFile:Ljava/lang/String;

    .line 143
    iput p5, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->vectorScale:F

    .line 144
    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->reader:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    if-nez v0, :cond_1

    .line 226
    const/4 v0, 0x0

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 228
    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 237
    .line 238
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->baseFile:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nexstreaming/app/common/util/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {p1}, Lcom/nexstreaming/app/common/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->reader:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 243
    :try_start_1
    const-string/jumbo v1, "svg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-direct {p0, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->loadSVG(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 252
    :goto_0
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 254
    :goto_1
    return-object v0

    .line 246
    :cond_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->loadBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 249
    :goto_2
    :try_start_3
    const-string v3, "AnimOverlayAsset"

    const-string v4, "Error reading frame image"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 248
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private loadSVG(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 262
    invoke-static {p1}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/io/InputStream;)Lcom/larvalabs/svgandroid/b;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/larvalabs/svgandroid/b;->a()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v1, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->vectorScale:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v2, v2, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->vectorScale:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 266
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/PictureDrawable;->setBounds(IIII)V

    .line 268
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/PictureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    return-object v1
.end method


# virtual methods
.method public needRendererReawakeOnEditResize()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public onAsleep(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 149
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->reader:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    .line 150
    return-void
.end method

.method public onRefresh(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onRender(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/app/common/nexasset/overlay/OverlayMotion;II)V
    .locals 12

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->g()I

    move-result v0

    sub-int/2addr v0, p3

    .line 157
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget v1, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->fps:I

    mul-int/2addr v0, v1

    div-int/lit16 v6, v0, 0x3e8

    .line 159
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 160
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_0

    .line 161
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->overlaySpec:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;

    iget-object v0, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec;->layers:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;

    .line 163
    iget v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->iterationCount:I

    if-ltz v1, :cond_5

    iget v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->iterationCount:I

    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le v6, v1, :cond_5

    .line 164
    iget v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->iterationCount:I

    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 168
    :goto_1
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    div-int v2, v1, v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 169
    :goto_2
    iget v3, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    rem-int/2addr v1, v3

    .line 170
    sget-object v3, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$1;->$SwitchMap$com$nexstreaming$app$common$nexasset$overlay$OverlaySpec$AnimDirection:[I

    iget-object v4, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->direction:Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;

    invoke-virtual {v4}, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$AnimDirection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_2
    move v2, v1

    .line 187
    :goto_3
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 188
    const/4 v4, 0x0

    .line 189
    const/4 v3, 0x0

    .line 190
    const/4 v1, 0x0

    move v11, v1

    move-object v1, v4

    move v4, v3

    move v3, v11

    :goto_4
    if-ge v3, v5, :cond_3

    .line 191
    iget-object v1, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->frames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;

    .line 192
    if-gt v2, v4, :cond_7

    .line 196
    :cond_3
    if-eqz v1, :cond_4

    .line 197
    iget-boolean v0, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->blank:Z

    if-nez v0, :cond_4

    .line 198
    iget-object v0, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->src:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/AnimatedOverlayAsset$AwakeAssetImpl;->bounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 160
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_5
    move v1, v6

    .line 166
    goto :goto_1

    .line 168
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_0
    move v2, v1

    .line 172
    goto :goto_3

    .line 174
    :pswitch_1
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    sub-int v1, v2, v1

    move v2, v1

    .line 175
    goto :goto_3

    .line 177
    :pswitch_2
    if-nez v2, :cond_2

    .line 178
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    sub-int v1, v2, v1

    move v2, v1

    goto :goto_3

    .line 182
    :pswitch_3
    if-eqz v2, :cond_2

    .line 183
    iget v2, v0, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Layer;->duration:I

    sub-int v1, v2, v1

    move v2, v1

    goto :goto_3

    .line 194
    :cond_7
    const/4 v9, 0x1

    iget v10, v1, Lcom/nexstreaming/app/common/nexasset/overlay/OverlaySpec$Frame;->hold:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v4, v9

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
