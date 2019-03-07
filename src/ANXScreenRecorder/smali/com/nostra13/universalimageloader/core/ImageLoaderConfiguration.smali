.class public final Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;,
        Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;,
        Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;,
        Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    }
.end annotation


# instance fields
.field final customExecutor:Z

.field final customExecutorForCachedImages:Z

.field final decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field final defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final maxImageHeightForDiskCache:I

.field final maxImageHeightForMemoryCache:I

.field final maxImageWidthForDiskCache:I

.field final maxImageWidthForMemoryCache:I

.field final memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field final networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final processorForDiskCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field final resources:Landroid/content/res/Resources;

.field final slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final taskExecutor:Ljava/util/concurrent/Executor;

.field final taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field final tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final threadPoolSize:I

.field final threadPriority:I


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    .line 80
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 81
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 82
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiskCache:I

    .line 83
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiskCache:I

    .line 84
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 85
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 86
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    .line 88
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    .line 89
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 90
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 91
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 92
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 93
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 94
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 96
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    .line 97
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    .line 99
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 100
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 102
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->writeDebugLogs(Z)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .param p2, "x1"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 4

    .prologue
    .line 131
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 134
    .local v2, "width":I
    if-gtz v2, :cond_0

    .line 135
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :cond_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 138
    .local v1, "height":I
    if-gtz v1, :cond_1

    .line 139
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    :cond_1
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v3, v2, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v3
.end method
