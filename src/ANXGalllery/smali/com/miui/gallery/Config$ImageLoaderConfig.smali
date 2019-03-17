.class public Lcom/miui/gallery/Config$ImageLoaderConfig;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLoaderConfig"
.end annotation


# direct methods
.method public static getConfig(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    .line 281
    new-instance v1, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;

    .line 282
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getDiskCacheDir()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x3a98

    const/high16 v5, 0x60000000

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/gallery/util/uil/ThumbnailDiskCache;-><init>(Ljava/io/File;II)V

    .line 286
    .local v1, "diskCache":Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    sget-boolean v3, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 288
    .local v2, "isLoggingEnabled":Z
    :goto_0
    new-instance v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v3, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->thumbnailCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    const/high16 v4, 0x1e00000

    .line 291
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;

    .line 292
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v5

    iget v5, v5, Lcom/miui/gallery/Config$ThumbConfig;->sImageMemoryCache:I

    invoke-direct {v4, v5}, Lcom/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;

    .line 293
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v5

    iget v5, v5, Lcom/miui/gallery/Config$ThumbConfig;->sImagePreloadMemoryCache:I

    invoke-direct {v4, v5}, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->subMemoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    .line 294
    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 296
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;

    invoke-direct {v4, v2}, Lcom/miui/gallery/util/uil/ImageDecoderSupportRegion;-><init>(Z)V

    .line 297
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 299
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    if-eqz v2, :cond_1

    .line 300
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 303
    :cond_1
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v3

    return-object v3

    .line 286
    .end local v0    # "builder":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .end local v2    # "isLoggingEnabled":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
