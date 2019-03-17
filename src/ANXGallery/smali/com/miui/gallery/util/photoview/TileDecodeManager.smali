.class public Lcom/miui/gallery/util/photoview/TileDecodeManager;
.super Ljava/lang/Object;
.source "TileDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;
    }
.end annotation


# instance fields
.field private volatile mCurrentDecodingTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/util/photoview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeFuture:Lcom/miui/gallery/threadpool/Future;

.field private mDecodeHandlerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeProviderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/util/photoview/TileBitProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/miui/gallery/util/photoview/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/gallery/util/photoview/TileBitProvider;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeQueue:Ljava/util/concurrent/BlockingQueue;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mCurrentDecodingTiles:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeHandlerRef:Ljava/lang/ref/WeakReference;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeProviderRef:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileDecodeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileDecodeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileDecodeManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mCurrentDecodingTiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Lcom/miui/gallery/util/photoview/TileBitProvider;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileDecodeManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->getProvider()Lcom/miui/gallery/util/photoview/TileBitProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/util/photoview/TileDecodeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/photoview/TileDecodeManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeHandlerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeHandlerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProvider()Lcom/miui/gallery/util/photoview/TileBitProvider;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeProviderRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeProviderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/photoview/TileBitProvider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDecodeEngine()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeFuture:Lcom/miui/gallery/threadpool/Future;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getDecodePool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/util/photoview/TileDecodeManager$TileDecodeJob;-><init>(Lcom/miui/gallery/util/photoview/TileDecodeManager;Lcom/miui/gallery/util/photoview/TileDecodeManager$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeFuture:Lcom/miui/gallery/threadpool/Future;

    .line 38
    const-string v0, "TileDecodeManager"

    const-string/jumbo v1, "start decode engine"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 53
    const-string v0, "TileDecodeManager"

    const-string v1, "cancel decode engine"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeFuture:Lcom/miui/gallery/threadpool/Future;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mCurrentDecodingTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 64
    const-string v0, "TileDecodeManager"

    const-string v1, "clear queue"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public getDecodingTile(I)Lcom/miui/gallery/util/photoview/Tile;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mCurrentDecodingTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/photoview/Tile;

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Lcom/miui/gallery/util/photoview/Tile;)Z
    .locals 1
    .param p1, "tile"    # Lcom/miui/gallery/util/photoview/Tile;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->startDecodeEngine()V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mDecodeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDecodingTile(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/photoview/TileDecodeManager;->mCurrentDecodingTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
