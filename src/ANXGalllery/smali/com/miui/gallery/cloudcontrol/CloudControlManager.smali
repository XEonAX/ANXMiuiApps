.class public Lcom/miui/gallery/cloudcontrol/CloudControlManager;
.super Ljava/lang/Object;
.source "CloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/CloudControlManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

.field private mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInitTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mIsInitDone:Z

.field private volatile mIsInitStart:Z

.field private mStrategyClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;-><init>(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitTask:Landroid/os/AsyncTask;

    .line 52
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    .line 54
    new-instance v0, Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/ProfileCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->registerStrategyClass()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Lcom/miui/gallery/cloudcontrol/ProfileCache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/cloudcontrol/CloudControlManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitDone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloudcontrol/CloudControlManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    return-object v0
.end method

.method private initialized()Z
    .locals 8

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitDone:Z

    if-eqz v1, :cond_0

    .line 112
    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitialized:Z

    .line 131
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 115
    const-string v1, "CloudControlManager"

    const-string v4, "not initialized, but caller is main thread, doesn\'t block, stack trace:\n%s"

    const-string v5, "\n\t"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitStart:Z

    if-nez v1, :cond_2

    .line 119
    const-string v1, "CloudControlManager"

    const-string/jumbo v4, "start init"

    invoke-static {v1, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->init(Landroid/content/Context;)V

    .line 122
    :cond_2
    const-string v1, "CloudControlManager"

    const-string v4, "not initialized, waiting lock from:\n%s"

    const-string v5, "\n\t"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 125
    .local v2, "start":J
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 126
    const-string v1, "CloudControlManager"

    const-string/jumbo v4, "wait init done costs %d ms"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "start":J
    :goto_1
    const-string v1, "CloudControlManager"

    const-string v4, "initialized: %b"

    iget-boolean v5, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitialized:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-boolean v1, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitialized:Z

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CloudControlManager"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private registerStrategyClass()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "album-list"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "cloud-guide"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/CloudGuideStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string/jumbo v1, "sync"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "server-unmodify-albums"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "components-list"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "hidden-albums"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/HiddenAlbumsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "location"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/LocationStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "search"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "album-sort-date"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "backup-policies"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/BackupPolicisStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "server-reserved-album-names"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "media_scanner"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string/jumbo v1, "upload-supported-file-types"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/UploadSupportedFileTypeStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "photo-print"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/PhotoPrintStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "creation"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    const-string v1, "assistant-rules"

    const-class v2, Lcom/miui/gallery/cloudcontrol/strategies/AssistantScenarioStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public clearCloudCache()V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitStart:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->initialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->clearCloudCache()V

    .line 152
    :cond_0
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    const-string v0, "CloudControlManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mIsInitStart:Z

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mInitTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insertToCache(Lcom/miui/gallery/cloudcontrol/FeatureProfile;)V
    .locals 1
    .param p1, "featureProfile"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->initialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->insertToCloudCache(Lcom/miui/gallery/cloudcontrol/FeatureProfile;)V

    .line 146
    :cond_0
    return-void
.end method

.method public queryFeatureStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->initialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->queryStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->UNAVAILABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    goto :goto_0
.end method

.method public queryFeatureStrategy(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;

    move-result-object v0

    return-object v0
.end method

.method public queryFeatureStrategy(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloudcontrol/Merger",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "merger":Lcom/miui/gallery/cloudcontrol/Merger;, "Lcom/miui/gallery/cloudcontrol/Merger<TT;>;"
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->initialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 192
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mStrategyClassMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, p1, v2, p2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->queryStrategy(Ljava/lang/String;Ljava/lang/Class;Lcom/miui/gallery/cloudcontrol/Merger;)Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 195
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CloudControlManager"

    const-string v3, "Generic type doesn\'t match."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 200
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    const-string v2, "CloudControlManager"

    const-string v3, "No strategy class was registered with %s."

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public registerStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->registerStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v0

    return-object v0
.end method

.method public unregisterStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->mCache:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloudcontrol/ProfileCache;->unregisterStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)V

    .line 182
    return-void
.end method
