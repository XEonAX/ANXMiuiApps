.class public Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x3

.field private static final WARNING_OVERLAP_DISK_CACHE_NAME_GENERATOR:Ljava/lang/String; = "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

.field private static final WARNING_OVERLAP_DISK_CACHE_PARAMS:Ljava/lang/String; = "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

.field private static final WARNING_OVERLAP_EXECUTOR:Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final WARNING_OVERLAP_MEMORY_CACHE:Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"


# instance fields
.field private context:Landroid/content/Context;

.field private customExecutor:Z

.field private customExecutorForCachedImages:Z

.field private decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field private diskCacheFileCount:I

.field private diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private diskCacheSize:J

.field private downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private maxImageHeightForDiskCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiskCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private memoryCacheSize:I

.field private processorForDiskCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I

.field private writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 167
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 168
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    .line 169
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    .line 170
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 172
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 173
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 174
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    .line 175
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    .line 177
    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 178
    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 179
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 180
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 182
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    .line 184
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    .line 186
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 187
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 188
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 189
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 191
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 193
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return v0
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    return v0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    return v0
.end method

.method static synthetic access$500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return v0
.end method

.method static synthetic access$900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 564
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    .line 565
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    .line 571
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 576
    :goto_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    iget-wide v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    iget v4, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createDiskCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createMemoryCache(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 586
    :cond_2
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    if-eqz v0, :cond_3

    .line 587
    new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-static {}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_4

    .line 590
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDownloader(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_5

    .line 593
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDecoder(Z)Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_6

    .line 596
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 598
    :cond_6
    return-void

    .line 568
    :cond_7
    iput-boolean v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    goto :goto_0

    .line 574
    :cond_8
    iput-boolean v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 2

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 560
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "defaultDisplayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 544
    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 334
    return-object p0
.end method

.method public discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .param p1, "diskCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .param p1, "maxImageWidthForDiskCache"    # I
    .param p2, "maxImageHeightForDiskCache"    # I
    .param p3, "processorForDiskCache"    # Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .param p1, "maxFileCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .param p1, "maxCacheSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 5
    .param p1, "diskCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    if-lez v0, :cond_1

    .line 504
    :cond_0
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_2

    .line 507
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_2
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 511
    return-object p0
.end method

.method public diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "maxImageWidthForDiskCache"    # I
    .param p2, "maxImageHeightForDiskCache"    # I
    .param p3, "processorForDiskCache"    # Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .prologue
    .line 234
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    .line 235
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    .line 236
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 237
    return-object p0
.end method

.method public diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "maxFileCount"    # I

    .prologue
    .line 451
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFileCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_1

    .line 454
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    :cond_1
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    .line 458
    return-object p0
.end method

.method public diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 479
    return-object p0
.end method

.method public diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "maxCacheSize"    # I

    .prologue
    .line 426
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_1

    .line 429
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_1
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    .line 433
    return-object p0
.end method

.method public imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "imageDecoder"    # Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 533
    return-object p0
.end method

.method public imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "imageDownloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 522
    return-object p0
.end method

.method public memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "memoryCache"    # Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .prologue
    .line 403
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 408
    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "maxImageWidthForMemoryCache"    # I
    .param p2, "maxImageHeightForMemoryCache"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 209
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 210
    return-object p0
.end method

.method public memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "memoryCacheSize"    # I

    .prologue
    .line 359
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "memoryCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_1
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 366
    return-object p0
.end method

.method public memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 5
    .param p1, "availableMemoryPercent"    # I

    .prologue
    .line 379
    if-lez p1, :cond_0

    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    .line 380
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "availableMemoryPercent must be in range (0 < % < 100)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v2, :cond_2

    .line 384
    const-string v2, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 388
    .local v0, "availableMemory":J
    long-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 389
    return-object p0
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v1, 0x3

    .line 254
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_1

    .line 255
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 259
    return-object p0
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "executorForCachedImages"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v1, 0x3

    .line 281
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_1

    .line 282
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 286
    return-object p0
.end method

.method public tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "tasksProcessingType"    # Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 347
    return-object p0
.end method

.method public threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_1
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 299
    return-object p0
.end method

.method public threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 4
    .param p1, "threadPriority"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 308
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_1
    if-ge p1, v2, :cond_2

    .line 313
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 321
    :goto_0
    return-object p0

    .line 315
    :cond_2
    if-le p1, v3, :cond_3

    .line 316
    iput v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0

    .line 318
    :cond_3
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0
.end method

.method public writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 554
    return-object p0
.end method
