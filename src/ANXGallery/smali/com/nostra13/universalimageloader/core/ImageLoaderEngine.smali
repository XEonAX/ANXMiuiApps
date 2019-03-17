.class Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"


# instance fields
.field private final cacheKeysForImageAwares:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pauseLock:Ljava/lang/Object;

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private taskDistributor:Ljava/util/concurrent/Executor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private taskExecutorForVideo:Ljava/util/concurrent/Executor;

.field private final uriLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 65
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 67
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForVideo:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForVideo:Ljava/util/concurrent/Executor;

    .line 68
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 70
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createTaskDistributor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->isVideoFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForVideo:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private createTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 117
    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private createTaskExecutorForVideo()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getThreadPoolSizeForVideo(I)I

    move-result v0

    .line 123
    .local v0, "threadPoolSizeForVideo":I
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 124
    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v1

    return-object v1
.end method

.method private initExecutorsIfNeed()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customVideoExecutor:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForVideo:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutorForVideo()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForVideo:Ljava/util/concurrent/Executor;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 110
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 113
    :cond_2
    return-void
.end method

.method private isVideoFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 2
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method fireCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 2
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 223
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 225
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    monitor-exit v2

    return-object v0

    .line 228
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method getPauseLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method isNetworkDenied()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isSlowNetwork()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method pause()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    return-void
.end method

.method prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "memoryCacheKey"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 189
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 2
    .param p1, "task"    # Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V
    .locals 1
    .param p1, "task"    # Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V

    .line 98
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
