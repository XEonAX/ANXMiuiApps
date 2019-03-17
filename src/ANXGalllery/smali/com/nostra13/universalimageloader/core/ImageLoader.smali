.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;,
        Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static sInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;


# instance fields
.field private configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private defaultListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private mPageUsedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    .line 76
    new-instance v0, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->defaultListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    return-object v0
.end method

.method private checkConfiguration()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_0
    return-void
.end method

.method private static defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 3
    .param p0, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1041
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    const/4 v0, 0x0

    .line 1046
    :cond_0
    :goto_0
    return-object v0

    .line 1043
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1044
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->sInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 94
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0

    .line 90
    :cond_2
    :try_start_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->sInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->access$000(Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->sInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static runTask(Ljava/lang/Runnable;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setInitializer(Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)V
    .locals 0
    .param p0, "initializer"    # Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    .prologue
    .line 1053
    sput-object p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->sInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    .line 1054
    return-void
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 929
    return-void
.end method

.method public clearHardMemoryCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 832
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 833
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 834
    .local v1, "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    instance-of v3, v1, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 835
    check-cast v0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;

    .line 836
    .local v0, "baseMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->clear(Z)V

    .line 841
    .end local v0    # "baseMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
    :goto_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 842
    .local v2, "subMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    if-eqz v2, :cond_0

    .line 843
    instance-of v3, v2, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 844
    check-cast v0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;

    .line 845
    .restart local v0    # "baseMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
    invoke-virtual {v0, v4}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->clear(Z)V

    .line 850
    .end local v0    # "baseMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
    :cond_0
    :goto_1
    return-void

    .line 838
    .end local v2    # "subMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    :cond_1
    invoke-interface {v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    goto :goto_0

    .line 847
    .restart local v2    # "subMemoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    :cond_2
    invoke-interface {v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    goto :goto_1
.end method

.method public createImageAware(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 681
    if-nez p2, :cond_0

    .line 682
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    .line 684
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v0, p1, p2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    return-object v0
.end method

.method public createImageAware(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 697
    if-nez p2, :cond_0

    .line 698
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    .line 700
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    invoke-direct {v0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    return-object v0
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 424
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 425
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v4, 0x0

    .line 456
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 457
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "size"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "regionDecodeRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 524
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 525
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 493
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 494
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 518
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 519
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v4, 0x0

    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 181
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p6, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 254
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 255
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V
    .locals 29
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p5, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p6, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
    .param p7, "regionDecodeRect"    # Landroid/graphics/RectF;

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 278
    if-nez p2, :cond_0

    .line 279
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    :cond_0
    if-nez p5, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->defaultListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-object/from16 p5, v0

    .line 284
    :cond_1
    if-nez p3, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 p3, v0

    .line 288
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 290
    move-object/from16 v9, p3

    .line 291
    .local v9, "finalOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    move-object/from16 v6, p5

    .line 292
    .local v6, "finalListener":Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    new-instance v4, Lcom/nostra13/universalimageloader/core/ImageLoader$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/nostra13/universalimageloader/core/ImageLoader$1;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->runTask(Ljava/lang/Runnable;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 410
    .end local v9    # "finalOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_3
    :goto_0
    return-void

    .line 307
    .end local v6    # "finalListener":Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    :cond_4
    if-nez p4, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p4

    .line 311
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "memoryCacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v14}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    .line 314
    move-object/from16 v6, p5

    .line 315
    .restart local v6    # "finalListener":Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    new-instance v4, Lcom/nostra13/universalimageloader/core/ImageLoader$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader$2;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->runTask(Ljava/lang/Runnable;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInSubMemory()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_6
    const/16 v27, 0x1

    .line 324
    .local v27, "cacheInMemory":Z
    :goto_1
    const/16 v25, 0x0

    .line 325
    .local v25, "bmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_8

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v4, v14}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 327
    if-eqz v25, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 328
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v4, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v4, v14}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 333
    :cond_8
    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 334
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isPreferSyncLoadFromMicroCache()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/miui/gallery/util/uil/LoadMonitor;->isSyncLoadMicro()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMicroCache()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 335
    invoke-static {}, Lcom/miui/gallery/util/uil/MicroThumbCache;->getInstance()Lcom/miui/gallery/util/uil/MicroThumbCache;

    move-result-object v26

    .line 337
    .local v26, "cache":Lcom/miui/gallery/util/uil/MicroThumbCache;
    if-eqz v26, :cond_10

    .line 338
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v4}, Lcom/miui/gallery/util/uil/MicroThumbCache;->getCenterCropBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 342
    :goto_2
    if-eqz v25, :cond_b

    .line 343
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-object/from16 v0, v25

    invoke-interface {v4, v14, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 346
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInSubMemory()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v4, :cond_b

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-object/from16 v0, v25

    invoke-interface {v4, v14, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 353
    .end local v26    # "cache":Lcom/miui/gallery/util/uil/MicroThumbCache;
    :cond_b
    invoke-static {}, Lcom/miui/gallery/util/uil/LoadMonitor;->isSyncLoadThumb()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoadFromThumbCache()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 354
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->thumbnailCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v4, v14}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 355
    if-eqz v25, :cond_e

    .line 356
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-object/from16 v0, v25

    invoke-interface {v4, v14, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 359
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInSubMemory()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v4, :cond_e

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-object/from16 v0, v25

    invoke-interface {v4, v14, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 366
    :cond_e
    if-eqz v25, :cond_13

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_13

    .line 367
    new-instance v10, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 368
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v10 .. v18}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 369
    .local v10, "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 370
    new-instance v28, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 371
    invoke-static/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1, v10, v5}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 372
    .local v28, "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 373
    invoke-virtual/range {v28 .. v28}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->run()V

    goto/16 :goto_0

    .line 323
    .end local v10    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v25    # "bmp":Landroid/graphics/Bitmap;
    .end local v27    # "cacheInMemory":Z
    .end local v28    # "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    :cond_f
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 340
    .restart local v25    # "bmp":Landroid/graphics/Bitmap;
    .restart local v26    # "cache":Lcom/miui/gallery/util/uil/MicroThumbCache;
    .restart local v27    # "cacheInMemory":Z
    :cond_10
    sget-object v4, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "The MicroThumbCache is null, should not happen"

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 375
    .end local v26    # "cache":Lcom/miui/gallery/util/uil/MicroThumbCache;
    .restart local v10    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .restart local v28    # "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V

    goto/16 :goto_0

    .line 378
    .end local v28    # "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    :cond_12
    new-instance v28, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10, v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 379
    .local v28, "displayTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->runTask(Ljava/lang/Runnable;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 382
    .end local v10    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v28    # "displayTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    :cond_13
    const-string v4, "Load null from memory cache [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v5, v7

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isLoadFromMemoryOnly()Z

    move-result v4

    if-nez v4, :cond_3

    .line 387
    move-object/from16 v9, p3

    .line 388
    .restart local v9    # "finalOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v4, Lcom/nostra13/universalimageloader/core/ImageLoader$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v9, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader$3;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->runTask(Ljava/lang/Runnable;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 399
    new-instance v10, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 401
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v24

    move-object v15, v10

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p4

    move-object/from16 v19, p7

    move-object/from16 v20, v14

    move-object/from16 v21, p3

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v15 .. v24}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 402
    .restart local v10    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v28, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 403
    invoke-static/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v10, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 404
    .local v28, "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    invoke-virtual/range {p3 .. p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 405
    invoke-virtual/range {v28 .. v28}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    goto/16 :goto_0

    .line 407
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    goto/16 :goto_0
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 227
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 228
    return-void
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 810
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method public declared-synchronized init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .prologue
    .line 111
    monitor-enter p0

    if-nez p1, :cond_0

    .line 112
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_1

    .line 115
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 117
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public loadFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    const/4 v0, 0x0

    .line 551
    :cond_0
    :goto_0
    return-object v0

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->subMemoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public loadFromMemoryCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "regionDecodeRect"    # Landroid/graphics/RectF;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 535
    :cond_0
    const/4 v1, 0x0

    .line 538
    :goto_0
    return-object v1

    .line 537
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "memoryCacheKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 630
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 631
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 660
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 661
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;
    .param p6, "regionRect"    # Landroid/graphics/RectF;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 666
    if-nez p3, :cond_0

    .line 667
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 670
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->createImageAware(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    move-result-object v2

    .local v2, "imageAware":Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 671
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 672
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    const/4 v2, 0x0

    .line 566
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 567
    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 715
    invoke-virtual {p0, p1, v0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 768
    if-nez p3, :cond_0

    .line 769
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 771
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p3

    .line 773
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader$1;)V

    .line 774
    .local v0, "listener":Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 775
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->getLoadedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public onPagePause()V
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    .line 962
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    if-gtz v0, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    .line 966
    :cond_0
    return-void
.end method

.method public onPageResume()V
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->mPageUsedCount:I

    .line 974
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 975
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pause()V

    .line 984
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "paused"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method public referenceToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 796
    if-nez p2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    .line 798
    .local v0, "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    instance-of v1, v0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;

    if-eqz v1, :cond_0

    .line 799
    check-cast v0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;

    .end local v0    # "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->reference(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->resume()V

    .line 990
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    const-string v1, "resumed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public waitLockForUri(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1011
    if-nez p1, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1015
    .local v2, "start":J
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 1017
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitLockForUri cost:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v1

    goto :goto_1
.end method
