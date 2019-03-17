.class Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
.super Ljava/lang/Object;
.source "SlimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlimWorkerPool"
.end annotation


# instance fields
.field private mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

.field private mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

.field final synthetic this$0:Lcom/miui/gallery/cleaner/slim/SlimController;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p2, "x1"    # Lcom/miui/gallery/cleaner/slim/SlimController$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isPaused()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 559
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->isPaused()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    if-eqz v1, :cond_0

    .line 552
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->pauseSlim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resume()V
    .locals 2

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    if-eqz v1, :cond_0

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->resumeSlim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 497
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    iput-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 499
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    new-instance v2, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    iget-object v3, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$1;)V

    aput-object v2, v1, v0

    .line 500
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mOnSlimDoneListener:Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->setOnSlimDoneListener(Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;)V

    .line 501
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    .line 497
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 540
    :goto_0
    monitor-exit p0

    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 535
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;->cancel()V

    .line 536
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->mSlimWorkers:[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    .line 539
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->this$0:Lcom/miui/gallery/cleaner/slim/SlimController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/cleaner/slim/SlimController;->access$1602(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 531
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
