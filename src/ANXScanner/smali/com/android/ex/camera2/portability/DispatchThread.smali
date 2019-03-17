.class public Lcom/android/ex/camera2/portability/DispatchThread;
.super Ljava/lang/Thread;
.source "DispatchThread.java"


# static fields
.field private static final MAX_MESSAGE_QUEUE_LENGTH:J = 0x100L

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraHandlerThread:Landroid/os/HandlerThread;

.field private mIsEnded:Ljava/lang/Boolean;

.field private final mJobQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "DispatchThread"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/DispatchThread;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V
    .locals 2
    .param p1, "cameraHandler"    # Landroid/os/Handler;
    .param p2, "cameraHandlerThread"    # Landroid/os/HandlerThread;

    .prologue
    .line 38
    const-string v0, "Camera Job Dispatch Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mIsEnded:Ljava/lang/Boolean;

    .line 41
    iput-object p1, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mCameraHandler:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 43
    return-void
.end method

.method private isEnded()Z
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mIsEnded:Ljava/lang/Boolean;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mIsEnded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mIsEnded:Ljava/lang/Boolean;

    monitor-enter v1

    .line 96
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mIsEnded:Ljava/lang/Boolean;

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v1, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    return-void

    .line 97
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 112
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 113
    .local v2, "job":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    monitor-enter v4

    .line 114
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/ex/camera2/portability/DispatchThread;->isEnded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 116
    :try_start_1
    iget-object v3, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v3, Lcom/android/ex/camera2/portability/DispatchThread;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "Dispatcher thread wait() interrupted, exiting"

    invoke-static {v3, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    .line 124
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-nez v2, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/DispatchThread;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 154
    return-void

    .line 124
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 135
    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 137
    monitor-enter p0

    .line 138
    :try_start_4
    iget-object v3, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mCameraHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/ex/camera2/portability/DispatchThread$1;

    invoke-direct {v4, p0}, Lcom/android/ex/camera2/portability/DispatchThread$1;-><init>(Lcom/android/ex/camera2/portability/DispatchThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 147
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    :goto_2
    :try_start_6
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 148
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public runJob(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/DispatchThread;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to run job on interrupted dispatcher thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Camera master thread job queue full"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 60
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/android/ex/camera2/portability/DispatchThread;->mJobQueue:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void
.end method

.method public runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    .locals 7
    .param p1, "job"    # Ljava/lang/Runnable;
    .param p2, "waitLock"    # Ljava/lang/Object;
    .param p3, "timeoutMs"    # J
    .param p5, "jobMsg"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "timeoutMsg":Ljava/lang/String;
    monitor-enter p2

    .line 76
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    add-long v2, v4, p3

    .line 78
    .local v2, "timeoutBound":J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {p2, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 81
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 85
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v2    # "timeoutBound":J
    :catchall_0
    move-exception v4

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2    # "timeoutBound":J
    :cond_0
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    return-void
.end method
