.class public final Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;
.super Ljava/lang/Object;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncLock"
.end annotation


# instance fields
.field private mCount:I

.field private mIdentifier:Ljava/lang/String;

.field private final mToken:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mIdentifier:Ljava/lang/String;

    .line 585
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mToken:Ljava/lang/Object;

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mCount:I

    .line 587
    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .locals 6

    .prologue
    .line 590
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mToken:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mCount:I

    if-nez v0, :cond_0

    .line 592
    const-string v0, "AsyncUpDownloadService"

    const-string/jumbo v2, "thread: %s, %s require lock, identifier: %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mIdentifier:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$1;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 600
    :cond_0
    monitor-exit v1

    .line 601
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 6

    .prologue
    .line 604
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mToken:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mCount:I

    if-nez v0, :cond_0

    .line 606
    const-string v0, "AsyncUpDownloadService"

    const-string/jumbo v2, "thread: %s, %s release lock, identifier: %s"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mIdentifier:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock$2;-><init>(Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 614
    :cond_0
    iget v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mCount:I

    if-gez v0, :cond_1

    .line 615
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$SyncLock;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    return-void
.end method
