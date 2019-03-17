.class public Lcom/miui/gallery/Config$BigPhotoConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPhotoConfig"
.end annotation


# static fields
.field public static final BIG_PHOTO_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static final BIG_PHOTO_SIZE_DEFAULT:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/Config$BigPhotoConfig;->BIG_PHOTO_SIZE_DEFAULT:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 242
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 245
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/miui/gallery/Config$BigPhotoConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->reusedBitmapCache(Lcom/miui/gallery/util/ReusedBitmapCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/Config$BigPhotoConfig;->BIG_PHOTO_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 242
    return-void
.end method

.method public static appendBlurOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3
    .param p0, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v2, 0x0

    .line 264
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 265
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/miui/gallery/Config$BigPhotoConfig;->getBlurRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->blurRadius(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private static getBlurRadius()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x3

    return v0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
