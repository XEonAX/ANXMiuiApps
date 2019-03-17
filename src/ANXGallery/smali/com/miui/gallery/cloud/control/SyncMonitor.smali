.class public Lcom/miui/gallery/cloud/control/SyncMonitor;
.super Ljava/lang/Object;
.source "SyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;,
        Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;,
        Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sHandler:Landroid/os/Handler;

.field private static sSyncStarted:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->LOCK:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->sSyncStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 101
    sget-object v1, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 102
    sget-object v2, Lcom/miui/gallery/cloud/control/SyncMonitor;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "sync_monitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v1, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/gallery/cloud/control/SyncMonitor$WorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    .line 108
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    sget-object v1, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isEnable()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isMonitorEnable()Z

    move-result v0

    return v0
.end method

.method public static monitorSyncStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->sSyncStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 53
    const-string v0, "SyncMonitor"

    const-string v1, "monitor sync start"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "SyncMonitor"

    const-string/jumbo v1, "sync has started"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static monitorSyncStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->sSyncStarted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const-string v0, "SyncMonitor"

    const-string v1, "monitor sync stop"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    sget-object v1, Lcom/miui/gallery/cloud/control/SyncMonitor;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/control/SyncMonitor;->sHandler:Landroid/os/Handler;

    .line 73
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 75
    :cond_2
    const-string v0, "SyncMonitor"

    const-string/jumbo v1, "sync hasn\'t stopped"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static monitorSyncThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static monitorUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V
    .locals 2
    .param p0, "info"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    .prologue
    .line 80
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/control/SyncMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
