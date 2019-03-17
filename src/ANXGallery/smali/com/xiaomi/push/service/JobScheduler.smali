.class public Lcom/xiaomi/push/service/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/JobScheduler$FinalizerHelper;,
        Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;,
        Lcom/xiaomi/push/service/JobScheduler$TaskWraper;,
        Lcom/xiaomi/push/service/JobScheduler$Job;
    }
.end annotation


# static fields
.field private static currentTime:J

.field private static lastTime:J

.field private static timerId:J


# instance fields
.field private final finalizer:Lcom/xiaomi/push/service/JobScheduler$FinalizerHelper;

.field private final impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    sput-wide v0, Lcom/xiaomi/push/service/JobScheduler;->currentTime:J

    .line 52
    sget-wide v0, Lcom/xiaomi/push/service/JobScheduler;->currentTime:J

    sput-wide v0, Lcom/xiaomi/push/service/JobScheduler;->lastTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/JobScheduler;-><init>(Z)V

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/JobScheduler;-><init>(Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    if-nez p1, :cond_0

    .line 489
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    .line 492
    new-instance v0, Lcom/xiaomi/push/service/JobScheduler$FinalizerHelper;

    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/JobScheduler$FinalizerHelper;-><init>(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->finalizer:Lcom/xiaomi/push/service/JobScheduler$FinalizerHelper;

    .line 493
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "isDaemon"    # Z

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/JobScheduler;->nextId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/JobScheduler;-><init>(Ljava/lang/String;Z)V

    .line 511
    return-void
.end method

.method static declared-synchronized getCurrentTime()J
    .locals 8

    .prologue
    .line 60
    const-class v3, Lcom/xiaomi/push/service/JobScheduler;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 61
    .local v0, "now":J
    sget-wide v4, Lcom/xiaomi/push/service/JobScheduler;->lastTime:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 62
    sget-wide v4, Lcom/xiaomi/push/service/JobScheduler;->currentTime:J

    sget-wide v6, Lcom/xiaomi/push/service/JobScheduler;->lastTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/xiaomi/push/service/JobScheduler;->currentTime:J

    .line 66
    :cond_0
    sput-wide v0, Lcom/xiaomi/push/service/JobScheduler;->lastTime:J

    .line 68
    sget-wide v4, Lcom/xiaomi/push/service/JobScheduler;->currentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-wide v4

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized nextId()J
    .locals 6

    .prologue
    .line 471
    const-class v1, Lcom/xiaomi/push/service/JobScheduler;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/xiaomi/push/service/JobScheduler;->timerId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/push/service/JobScheduler;->timerId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleImpl(Lcom/xiaomi/push/service/JobScheduler$Job;J)V
    .locals 8
    .param p1, "job"    # Lcom/xiaomi/push/service/JobScheduler$Job;
    .param p2, "delay"    # J

    .prologue
    .line 609
    iget-object v4, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    monitor-enter v4

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-static {v1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->access$500(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Timer was canceled"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 614
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/push/service/JobScheduler;->getCurrentTime()J

    move-result-wide v6

    add-long v2, p2, v6

    .line 616
    .local v2, "when":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 617
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal delay to start the TimerTask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    invoke-direct {v0}, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;-><init>()V

    .line 622
    .local v0, "task":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    iget v1, p1, Lcom/xiaomi/push/service/JobScheduler$Job;->type:I

    iput v1, v0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->type:I

    .line 623
    iput-object p1, v0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->job:Lcom/xiaomi/push/service/JobScheduler$Job;

    .line 624
    iput-wide v2, v0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    .line 626
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->access$600(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)V

    .line 627
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    return-void
.end method


# virtual methods
.method public executeJobDelayed(Lcom/xiaomi/push/service/JobScheduler$Job;J)V
    .locals 4
    .param p1, "task"    # Lcom/xiaomi/push/service/JobScheduler$Job;
    .param p2, "delay"    # J

    .prologue
    .line 602
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/JobScheduler;->scheduleImpl(Lcom/xiaomi/push/service/JobScheduler$Job;J)V

    .line 606
    return-void
.end method

.method public executeJobNow(Lcom/xiaomi/push/service/JobScheduler$Job;)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/JobScheduler$Job;

    .prologue
    .line 580
    invoke-static {}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->getLogLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 581
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    if-eq v0, v1, :cond_0

    .line 582
    const-string v0, "run job outside job job thread"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Run job outside job thread"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/service/JobScheduler$Job;->run()V

    .line 586
    return-void
.end method

.method public hasJob(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 544
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-static {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->access$400(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->hasJob(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->isBlocked()Z

    move-result v0

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->cancel()V

    .line 527
    return-void
.end method

.method public removeAllJobs()V
    .locals 2

    .prologue
    .line 562
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-static {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->access$400(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->reset()V

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeJobs(I)V
    .locals 2
    .param p1, "jobType"    # I

    .prologue
    .line 556
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-static {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->access$400(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->removeJobs(I)V

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeJobs(ILcom/xiaomi/push/service/JobScheduler$Job;)V
    .locals 2
    .param p1, "jobType"    # I
    .param p2, "job"    # Lcom/xiaomi/push/service/JobScheduler$Job;

    .prologue
    .line 568
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler;->impl:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    invoke-static {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->access$400(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->removeJobs(ILcom/xiaomi/push/service/JobScheduler$Job;)V

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
