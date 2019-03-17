.class final Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;
.super Ljava/lang/Thread;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SchedulerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private current_sleep_duration:J

.field private volatile executing:Z

.field private finished:Z

.field private volatile lastJob:J

.field private tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->lastJob:J

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->executing:Z

    .line 294
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    .line 311
    new-instance v0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;-><init>(Lcom/xiaomi/push/service/JobScheduler$1;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    .line 320
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->setName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->setDaemon(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->start()V

    .line 323
    return-void
.end method

.method static synthetic access$302(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;
    .param p1, "x1"    # Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->insertTask(Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)V

    return-void
.end method

.method private insertTask(Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)V
    .locals 1
    .param p1, "newTask"    # Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->insert(Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)V

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 422
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->cancelled:Z

    .line 429
    iget-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->reset()V

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBlocked()Z
    .locals 4

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->executing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->lastJob:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 333
    :cond_0
    :goto_0
    monitor-enter p0

    .line 335
    :try_start_0
    iget-boolean v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->cancelled:Z

    if-eqz v5, :cond_1

    .line 336
    monitor-exit p0

    .line 340
    :goto_1
    return-void

    .line 338
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-virtual {v5}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 339
    iget-boolean v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->finished:Z

    if-eqz v5, :cond_2

    .line 340
    monitor-exit p0

    goto :goto_1

    .line 399
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 344
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 350
    :cond_3
    invoke-static {}, Lcom/xiaomi/push/service/JobScheduler;->getCurrentTime()J

    move-result-wide v0

    .line 352
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-virtual {v5}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->minimum()Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    move-result-object v3

    .line 355
    .local v3, "task":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    iget-object v8, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    :try_start_3
    iget-boolean v5, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancelled:Z

    if-eqz v5, :cond_4

    .line 357
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->delete(I)V

    .line 358
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 362
    :cond_4
    :try_start_5
    iget-wide v10, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    sub-long v6, v10, v0

    .line 363
    .local v6, "timeToSleep":J
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 365
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    .line 366
    :try_start_6
    iget-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    iget-wide v6, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    .line 367
    :cond_5
    iget-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    const-wide/16 v10, 0x32

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    .line 368
    iget-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    const-wide/16 v10, 0x1f4

    cmp-long v5, v8, v10

    if-lez v5, :cond_6

    .line 369
    const-wide/16 v8, 0x1f4

    iput-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 372
    :cond_6
    :try_start_7
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 375
    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 363
    .end local v6    # "timeToSleep":J
    :catchall_1
    move-exception v5

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v5

    .line 377
    .restart local v6    # "timeToSleep":J
    :cond_7
    const-wide/16 v8, 0x32

    iput-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->current_sleep_duration:J

    .line 381
    iget-object v8, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, "pos":I
    :try_start_b
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-virtual {v5}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->minimum()Lcom/xiaomi/push/service/JobScheduler$TaskWraper;

    move-result-object v5

    iget-wide v10, v5, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    iget-wide v12, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    cmp-long v5, v10, v12

    if-eqz v5, :cond_8

    .line 384
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-static {v5, v3}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->access$100(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)I

    move-result v2

    .line 386
    :cond_8
    iget-boolean v5, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancelled:Z

    if-eqz v5, :cond_9

    .line 387
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    iget-object v9, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-static {v9, v3}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->access$100(Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;Lcom/xiaomi/push/service/JobScheduler$TaskWraper;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->delete(I)V

    .line 388
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 392
    :cond_9
    :try_start_d
    iget-wide v10, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    invoke-virtual {v3, v10, v11}, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->setScheduledTime(J)V

    .line 395
    iget-object v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->tasks:Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;

    invoke-virtual {v5, v2}, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl$TimerHeap;->delete(I)V

    .line 397
    const-wide/16 v10, 0x0

    iput-wide v10, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    .line 398
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 399
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 401
    const/4 v4, 0x0

    .line 403
    .local v4, "taskCompletedNormally":Z
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->lastJob:J

    .line 404
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->executing:Z

    .line 405
    iget-object v5, v3, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->job:Lcom/xiaomi/push/service/JobScheduler$Job;

    invoke-virtual {v5}, Lcom/xiaomi/push/service/JobScheduler$Job;->run()V

    .line 406
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->executing:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 407
    const/4 v4, 0x1

    .line 409
    if-nez v4, :cond_0

    .line 410
    monitor-enter p0

    .line 411
    const/4 v5, 0x1

    :try_start_10
    iput-boolean v5, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->cancelled:Z

    .line 412
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v5

    .line 398
    .end local v4    # "taskCompletedNormally":Z
    :catchall_3
    move-exception v5

    :try_start_11
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 409
    .restart local v4    # "taskCompletedNormally":Z
    :catchall_4
    move-exception v5

    if-nez v4, :cond_a

    .line 410
    monitor-enter p0

    .line 411
    const/4 v8, 0x1

    :try_start_13
    iput-boolean v8, p0, Lcom/xiaomi/push/service/JobScheduler$SchedulerImpl;->cancelled:Z

    .line 412
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 409
    :cond_a
    throw v5

    .line 345
    .end local v0    # "currentTime":J
    .end local v2    # "pos":I
    .end local v3    # "task":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    .end local v4    # "taskCompletedNormally":Z
    .end local v6    # "timeToSleep":J
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 373
    .restart local v0    # "currentTime":J
    .restart local v3    # "task":Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
    .restart local v6    # "timeToSleep":J
    :catch_1
    move-exception v5

    goto :goto_3

    .line 412
    .restart local v2    # "pos":I
    .restart local v4    # "taskCompletedNormally":Z
    :catchall_5
    move-exception v5

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v5
.end method
