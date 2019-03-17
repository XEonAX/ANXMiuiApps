.class public Lcom/xiaomi/scanner/util/ScannerThreadPool;
.super Ljava/lang/Object;
.source "ScannerThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static volatile sHandler:Landroid/os/Handler;

.field private static volatile sPool:Ljava/util/concurrent/Executor;

.field private static sUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ScannerThreadPool"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    .line 31
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-class v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    .line 29
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sPool:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getSerialHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 35
    sget-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    .line 47
    .local v0, "thread":Landroid/os/HandlerThread;
    :goto_0
    return-object v1

    .line 39
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    const-class v2, Lcom/xiaomi/scanner/util/ScannerThreadPool;

    monitor-enter v2

    .line 40
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "serial-looper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    .restart local v0    # "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    .line 45
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v1, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sHandler:Landroid/os/Handler;

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "callback":Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;, "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<TT;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 57
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<TT;>;>;"
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/scanner/util/ScannerThreadPool$1;

    invoke-direct {v2, v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public static poolExecute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/util/ScannerThreadPool;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static serialExecute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    invoke-static {}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->getSerialHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
