.class public Lcom/miui/screenrecorder/tools/MSRImageLoader;
.super Ljava/lang/Object;
.source "MSRImageLoader.java"


# static fields
.field private static final DELAY_BEFORE_LOADING:I = 0x64

.field private static final RAM_CACHE_SIZE:I = 0x200000

.field public static final TAG:Ljava/lang/String; = "MSRImageLoader"

.field private static final THREAD_POOL_SIZE:I = 0x3

.field private static mInstance:Lcom/miui/screenrecorder/tools/MSRImageLoader;


# instance fields
.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/tools/MSRImageLoader;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 37
    iget-object v0, p0, Lcom/miui/screenrecorder/tools/MSRImageLoader;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/tools/MSRImageLoader;->initImageLoader(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 38
    return-void
.end method

.method private createDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 5

    .prologue
    .line 60
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 63
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 64
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;

    .line 65
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/16 v2, 0x64

    .line 66
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 67
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/tools/MSRImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/miui/screenrecorder/tools/MSRImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/screenrecorder/tools/MSRImageLoader;->mInstance:Lcom/miui/screenrecorder/tools/MSRImageLoader;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/miui/screenrecorder/tools/MSRImageLoader;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/tools/MSRImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/screenrecorder/tools/MSRImageLoader;->mInstance:Lcom/miui/screenrecorder/tools/MSRImageLoader;

    .line 32
    :cond_0
    sget-object v0, Lcom/miui/screenrecorder/tools/MSRImageLoader;->mInstance:Lcom/miui/screenrecorder/tools/MSRImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initImageLoader(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    const/4 v2, 0x3

    .line 42
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;-><init>()V

    .line 46
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    const/high16 v2, 0x200000

    .line 47
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 48
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 50
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 51
    return-void
.end method


# virtual methods
.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/screenrecorder/tools/MSRImageLoader;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {p0}, Lcom/miui/screenrecorder/tools/MSRImageLoader;->createDisplayImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 56
    return-void
.end method
