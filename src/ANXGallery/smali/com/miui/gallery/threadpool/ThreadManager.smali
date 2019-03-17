.class public Lcom/miui/gallery/threadpool/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# static fields
.field private static final sDecodeLock:Ljava/lang/Object;

.field private static sDecodePool:Lcom/miui/gallery/threadpool/ThreadPool;

.field private static sMainHandler:Lcom/android/internal/CompatHandler;

.field private static final sMainHandlerLock:Ljava/lang/Object;

.field private static final sMiscLock:Ljava/lang/Object;

.field private static sMiscPool:Lcom/miui/gallery/threadpool/ThreadPool;

.field private static final sNetworkLock:Ljava/lang/Object;

.field private static sNetworkPool:Lcom/miui/gallery/threadpool/ThreadPool;

.field private static final sPreviewLock:Ljava/lang/Object;

.field private static sPreviewThread:Lcom/miui/gallery/threadpool/ThreadPool;

.field private static final sRequestLock:Ljava/lang/Object;

.field private static sRequestThread:Landroid/os/HandlerThread;

.field private static sRequestThreadHandler:Lcom/android/internal/CompatHandler;

.field private static sWorkHandler:Lcom/android/internal/CompatHandler;

.field private static final sWorkHandlerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMiscLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMainHandlerLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sDecodeLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sNetworkLock:Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sPreviewLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sWorkHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method public static getDecodePool()Lcom/miui/gallery/threadpool/ThreadPool;
    .locals 4

    .prologue
    .line 34
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sDecodePool:Lcom/miui/gallery/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sDecodePool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 38
    :cond_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sDecodePool:Lcom/miui/gallery/threadpool/ThreadPool;

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMainHandler()Lcom/android/internal/CompatHandler;
    .locals 3

    .prologue
    .line 73
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sMainHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMainHandler:Lcom/android/internal/CompatHandler;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/internal/CompatHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/CompatHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMainHandler:Lcom/android/internal/CompatHandler;

    .line 77
    :cond_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMainHandler:Lcom/android/internal/CompatHandler;

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sMiscLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMiscPool:Lcom/miui/gallery/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {v0}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>()V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMiscPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 47
    :cond_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sMiscPool:Lcom/miui/gallery/threadpool/ThreadPool;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNetworkPool()Lcom/miui/gallery/threadpool/ThreadPool;
    .locals 4

    .prologue
    .line 64
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sNetworkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sNetworkPool:Lcom/miui/gallery/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sNetworkPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 68
    :cond_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sNetworkPool:Lcom/miui/gallery/threadpool/ThreadPool;

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPreviewPool()Lcom/miui/gallery/threadpool/ThreadPool;
    .locals 4

    .prologue
    .line 52
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sPreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sPreviewThread:Lcom/miui/gallery/threadpool/ThreadPool;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sPreviewThread:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 56
    :cond_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sPreviewThread:Lcom/miui/gallery/threadpool/ThreadPool;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRequestThreadHandler()Lcom/android/internal/CompatHandler;
    .locals 3

    .prologue
    .line 104
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestThreadHandler:Lcom/android/internal/CompatHandler;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "request_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestThread:Landroid/os/HandlerThread;

    .line 107
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Lcom/android/internal/CompatHandler;

    sget-object v2, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/CompatHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestThreadHandler:Lcom/android/internal/CompatHandler;

    .line 110
    :cond_0
    sget-object v0, Lcom/miui/gallery/threadpool/ThreadManager;->sRequestThreadHandler:Lcom/android/internal/CompatHandler;

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRequestThreadLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getRequestThreadHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/CompatHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkHandler()Lcom/android/internal/CompatHandler;
    .locals 4

    .prologue
    .line 82
    sget-object v2, Lcom/miui/gallery/threadpool/ThreadManager;->sWorkHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_0
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sWorkHandler:Lcom/android/internal/CompatHandler;

    if-nez v1, :cond_0

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "work_thread"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Lcom/android/internal/CompatHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/CompatHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sWorkHandler:Lcom/android/internal/CompatHandler;

    .line 88
    :cond_0
    sget-object v1, Lcom/miui/gallery/threadpool/ThreadManager;->sWorkHandler:Lcom/android/internal/CompatHandler;

    monitor-exit v2

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 97
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static sleepThread(J)V
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 124
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
