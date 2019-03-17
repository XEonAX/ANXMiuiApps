.class public abstract Lcom/miui/gallery/assistant/manager/AlgorithmRequest;
.super Ljava/lang/Object;
.source "AlgorithmRequest.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;,
        Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;,
        Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/assistant/manager/AlgorithmRequest;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final seq:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAlgorithmResult:Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mIsCanceled:Z

.field private volatile mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mPriority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

.field private volatile mState:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

.field final seqNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;)V
    .locals 2
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .prologue
    .line 51
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mIsCanceled:Z

    .line 52
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mPriority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 53
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_INIT:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mState:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 54
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->seqNum:J

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    return-object v0
.end method

.method private notifySaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    .local p1, "result":Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;, "TT;"
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onSaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_1

    .line 213
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$4;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 222
    :cond_1
    return-void
.end method

.method private onStart()V
    .locals 2

    .prologue
    .line 113
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onStart()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$1;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_1
    return-void
.end method

.method private recordAlgorithmProcessTime(J)V
    .locals 11
    .param p1, "start"    # J

    .prologue
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    const-wide/16 v8, 0x32

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, p1

    .line 194
    .local v0, "elapseTime":J
    iget-object v3, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    const-string v4, "%s AlgorithmRequest process using time %d ms"

    iget-object v5, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    div-long v4, v0, v8

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v3, "assistant"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistant_algorithm_process_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    const-string v3, "assistant"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistant_algorithm_process_time_distribution_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 205
    return-void
.end method

.method private releaseSyncExecuteLock()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)I
    .locals 6
    .param p1, "o"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    .prologue
    .line 226
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mPriority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->getPriority()Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->ordinal()I

    move-result v2

    sub-int v0, v1, v2

    .line 227
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 228
    iget-wide v2, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->seqNum:J

    iget-wide v4, p1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->seqNum:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, -0x1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    check-cast p1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->compareTo(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)I

    move-result v0

    return v0
.end method

.method protected deliverResponse(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    .local p1, "result":Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;, "TT;"
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAlgorithmResult:Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->releaseSyncExecuteLock()V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onComputeComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$2;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_1
    return-void
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    invoke-static {}, Lcom/miui/gallery/assistant/manager/AlgorithmExecuteManager;->getInstance()Lcom/miui/gallery/assistant/manager/AlgorithmExecuteManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/assistant/manager/AlgorithmExecuteManager;->enqueue(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)V

    .line 93
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_QUEUING:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mState:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 94
    return-void
.end method

.method public executeSync()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getRequestThreadLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "executeSync could not call on main thread or request thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mPriority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_IMMEDIATELY:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    if-ne v0, v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->run()V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAlgorithmResult:Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    .line 87
    :goto_0
    return-object v0

    .line 80
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->execute()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAlgorithmResult:Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getPriority()Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mPriority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    return-object v0
.end method

.method protected abstract onSaveResult(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 7

    .prologue
    .line 158
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    iget-boolean v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mIsCanceled:Z

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mAsyncThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    invoke-interface {v4}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;->onCancel()V

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    if-eqz v4, :cond_1

    .line 164
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$3;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    sget-object v4, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_START:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    iput-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mState:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->onStart()V

    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "result":Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;, "TT;"
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 179
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;

    move-result-object v1

    .line 180
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->recordAlgorithmProcessTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2    # "start":J
    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->deliverResponse(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 185
    sget-object v4, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_FINISHED:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    iput-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mState:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 186
    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    const-string v5, "%s AlgorithmRequest save result!"

    iget-object v6, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->onSaveResult(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    .line 188
    invoke-direct {p0, v1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->notifySaveComplete(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setMainThreadListener(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/assistant/manager/AlgorithmRequest;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest<TT;>;"
    .local p1, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;->mMainThreadListener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    .line 59
    return-void
.end method
