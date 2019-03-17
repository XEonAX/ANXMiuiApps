.class public Lcom/miui/gallery/search/core/source/local/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCacheHoldTime:I

.field private mCacheRecycleRunnable:Ljava/lang/Runnable;

.field private mCacheRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/search/core/source/local/ContentCacheProvider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/source/local/ContentCacheProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>;"
    .local p1, "contentProvider":Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;, "Lcom/miui/gallery/search/core/source/local/ContentCacheProvider<TT;>;"
    const v0, 0x493e0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/core/source/local/ContentCache;-><init>(Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;I)V
    .locals 2
    .param p2, "cacheHoldTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/source/local/ContentCacheProvider",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>;"
    .local p1, "contentProvider":Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;, "Lcom/miui/gallery/search/core/source/local/ContentCacheProvider<TT;>;"
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mLock:Ljava/lang/Object;

    .line 40
    iput-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    .line 57
    new-instance v0, Lcom/miui/gallery/search/core/source/local/ContentCache$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/source/local/ContentCache$1;-><init>(Lcom/miui/gallery/search/core/source/local/ContentCache;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRecycleRunnable:Ljava/lang/Runnable;

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot accept null content cache provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    .line 53
    iput p2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheHoldTime:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/core/source/local/ContentCache;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/ContentCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/search/core/source/local/ContentCache;)Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/ContentCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/search/core/source/local/ContentCache;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/ContentCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/search/core/source/local/ContentCache;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/search/core/source/local/ContentCache;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private hangOn()V
    .locals 4

    .prologue
    .line 112
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>;"
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    .line 113
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRecycleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRecycleRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheHoldTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/local/ContentCache;->releaseCache()V

    .line 109
    return-void
.end method

.method public getCache()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 68
    .local v0, "cache":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v0, :cond_1

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    invoke-interface {v2}, Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;->loadContent()Ljava/lang/Object;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    .line 72
    iget-object v3, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/miui/gallery/search/core/source/local/ContentCache$MyContentObserver;-><init>(Lcom/miui/gallery/search/core/source/local/ContentCache;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    .line 75
    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    iget-object v4, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    .line 76
    invoke-interface {v4}, Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    .line 75
    invoke-interface {v2, v4, v5, v6}, Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/search/core/source/local/ContentCache;->hangOn()V

    .line 86
    :goto_1
    return-object v0

    .line 66
    .end local v0    # "cache":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 78
    .restart local v0    # "cache":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "ContentCache"

    invoke-static {v2, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    invoke-direct {p0}, Lcom/miui/gallery/search/core/source/local/ContentCache;->hangOn()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    invoke-direct {p0}, Lcom/miui/gallery/search/core/source/local/ContentCache;->hangOn()V

    throw v2
.end method

.method public releaseCache()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/miui/gallery/search/core/source/local/ContentCache;, "Lcom/miui/gallery/search/core/source/local/ContentCache<TT;>;"
    const/4 v4, 0x0

    .line 91
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    .line 92
    .local v0, "workHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentProvider:Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;

    iget-object v3, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v3}, Lcom/miui/gallery/search/core/source/local/ContentCacheProvider;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mContentObserver:Landroid/database/ContentObserver;

    .line 97
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 100
    iput-object v4, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRef:Ljava/lang/ref/WeakReference;

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/local/ContentCache;->mCacheRecycleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    return-void

    .line 97
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
