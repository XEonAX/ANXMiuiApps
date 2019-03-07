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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 61
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 62
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 64
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createTaskDistributor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private createTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private initExecutorsIfNeed()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 2
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method denyNetworkDownloads(Z)V
    .locals 1
    .param p1, "denyNetworkDownloads"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    return-void
.end method

.method fireCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 2
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 110
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
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 195
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 197
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    return-object v0
.end method

.method getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method getPauseLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method handleSlowNetwork(Z)V
    .locals 1
    .param p1, "handleSlowNetwork"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    return-void
.end method

.method isNetworkDenied()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isSlowNetwork()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method pause()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    return-void
.end method

.method prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "memoryCacheKey"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    return-void
.end method

.method submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 2
    .param p1, "task"    # Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V
    .locals 1
    .param p1, "task"    # Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V

    .line 87
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
