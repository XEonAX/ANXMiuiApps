.class public Lcom/miui/gallery/pendingtask/PendingTaskManager;
.super Ljava/lang/Object;
.source "PendingTaskManager.java"


# static fields
.field private static final TIME_STAGE:[I

.field private static instance:Lcom/miui/gallery/pendingtask/PendingTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/pendingtask/PendingTaskManager;->TIME_STAGE:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xc
        0x18
        0x30
        0x48
        0xa8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private cancelJob(J)V
    .locals 3
    .param p1, "taskId"    # J

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->generateJobId(J)I

    move-result v0

    .line 195
    .local v0, "jobId":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->cancelJob(Landroid/content/Context;I)V

    .line 196
    return-void
.end method

.method private generateJobId(J)I
    .locals 5
    .param p1, "taskId"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 323
    rem-long v0, p1, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/miui/gallery/pendingtask/PendingTaskManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/pendingtask/PendingTaskManager;->instance:Lcom/miui/gallery/pendingtask/PendingTaskManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/miui/gallery/pendingtask/PendingTaskManager;

    invoke-direct {v0}, Lcom/miui/gallery/pendingtask/PendingTaskManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/pendingtask/PendingTaskManager;->instance:Lcom/miui/gallery/pendingtask/PendingTaskManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/miui/gallery/pendingtask/PendingTaskManager;->instance:Lcom/miui/gallery/pendingtask/PendingTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static recordDropReason(ILjava/lang/String;)V
    .locals 3
    .param p0, "taskType"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "pending_task"

    const-string v2, "pending_task_drop_reason"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    return-void
.end method

.method private static recordExpireCount()V
    .locals 12

    .prologue
    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    sub-long v0, v8, v10

    .line 329
    .local v0, "endTime":J
    const-wide/32 v8, 0x5265c00

    sub-long v6, v0, v8

    .line 330
    .local v6, "startTime":J
    const-string v5, "%s > %s AND %s < %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "createTime"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 331
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "createTime"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 332
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 330
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v5

    const-class v8, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v4, v9}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 334
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 335
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "count"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v5, "pending_task"

    const-string v8, "pending_task_expire_count"

    invoke-static {v5, v8, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 340
    const-string v5, "PendingTaskManager"

    const-string v8, "%s tasks expire."

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static recordFinishDuration(J)V
    .locals 8
    .param p0, "cost"    # J

    .prologue
    .line 370
    const/high16 v3, 0x3f800000    # 1.0f

    long-to-float v4, p0

    mul-float/2addr v3, v4

    const v4, 0x4a5bba00    # 3600000.0f

    div-float v0, v3, v4

    .line 371
    .local v0, "hour":F
    sget-object v3, Lcom/miui/gallery/pendingtask/PendingTaskManager;->TIME_STAGE:[I

    invoke-static {v0, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorValueStage(F[I)I

    move-result v2

    .line 372
    .local v2, "stage":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "stage"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v3, "pending_task"

    const-string v4, "pending_task_finish_duration"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    const-string v3, "PendingTaskManager"

    const-string/jumbo v4, "task spend %s hour since post, record stage %s."

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method private static recordProcessDuration(IJ)V
    .locals 5
    .param p0, "taskType"    # I
    .param p1, "cost"    # J

    .prologue
    .line 355
    const-wide/32 v2, 0x927c0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "cost"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v1, "pending_task"

    const-string v2, "pending_task_process_cost"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static recordRescheduleCount(I)V
    .locals 3
    .param p0, "count"    # I

    .prologue
    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "count"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "pending_task"

    const-string v2, "pending_task_reschedule"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 351
    return-void
.end method

.method private scheduleTask(Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 290
    const-string v8, "PendingTaskManager"

    const-string v9, "scheduleTask type: %s taskId: %s"

    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getTaskType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/miui/gallery/pendingtask/base/PendingTaskService;

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 293
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string/jumbo v8, "taskId"

    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getId()J

    move-result-wide v10

    invoke-virtual {v0, v8, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 294
    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getMinLatencyMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getCreateTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    sub-long v4, v8, v10

    .line 296
    .local v4, "minLatency":J
    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getNetType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 307
    const/4 v3, 0x2

    .line 310
    .local v3, "netType":I
    :goto_0
    new-instance v8, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getId()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->generateJobId(J)I

    move-result v9

    invoke-direct {v8, v9, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 311
    invoke-virtual {v8, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 312
    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->isRequireCharging()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 313
    invoke-virtual {p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->isRequireDeviceIdle()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 314
    invoke-virtual {v8, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    .line 315
    .end local v4    # "minLatency":J
    :goto_1
    invoke-virtual {v8, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 316
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 317
    .local v2, "jobInfo":Landroid/app/job/JobInfo;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->scheduleJob(Landroid/content/Context;Landroid/app/job/JobInfo;)V

    .line 318
    return-void

    .line 298
    .end local v2    # "jobInfo":Landroid/app/job/JobInfo;
    .end local v3    # "netType":I
    .restart local v4    # "minLatency":J
    :pswitch_0
    const/4 v3, 0x0

    .line 299
    .restart local v3    # "netType":I
    goto :goto_0

    .line 301
    .end local v3    # "netType":I
    :pswitch_1
    const/4 v3, 0x2

    .line 302
    .restart local v3    # "netType":I
    goto :goto_0

    .line 304
    .end local v3    # "netType":I
    :pswitch_2
    const/4 v3, 0x1

    .line 305
    .restart local v3    # "netType":I
    goto :goto_0

    :cond_0
    move-wide v4, v6

    .line 314
    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel(ILjava/lang/String;)V
    .locals 7
    .param p1, "taskType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v3, "PendingTaskManager"

    const-string v4, "cancel task. type: %s tag: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 163
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v3, "%s=%s and %s=\'%s\'"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "taskType"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "taskTag"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    .line 163
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "selection":Ljava/lang/String;
    const-class v3, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    .line 167
    .local v1, "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 168
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->cancelJob(J)V

    goto :goto_0
.end method

.method public cancelAll(I)V
    .locals 9
    .param p1, "taskType"    # I

    .prologue
    const/4 v8, 0x0

    .line 179
    const-string v4, "PendingTaskManager"

    const-string v5, "cancel all. type: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 181
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "taskType"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "selection":Ljava/lang/String;
    const-class v4, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    invoke-virtual {v0, v4, v3, v8}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    .line 187
    .local v1, "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    invoke-virtual {v1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->cancelJob(J)V

    goto :goto_1

    .line 189
    .end local v1    # "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    :cond_2
    const-class v4, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    invoke-virtual {v0, v4, v3, v8}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public checkTaskList()V
    .locals 14

    .prologue
    .line 121
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordExpireCount()V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x240c8400

    sub-long v8, v10, v12

    .line 123
    .local v8, "startTime":J
    const-string v10, "%s > %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "createTime"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v10

    const-class v11, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v7, v12}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 125
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v6, 0x0

    .line 129
    .local v6, "rescheduleCount":I
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/pendingtask/base/PendingTaskService;->getAllPendingJob(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 130
    .local v4, "jobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    .line 131
    .local v1, "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    invoke-virtual {v1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getId()J

    move-result-wide v12

    invoke-direct {p0, v12, v13}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->generateJobId(J)I

    move-result v2

    .line 132
    .local v2, "jobId":I
    if-nez v4, :cond_3

    .line 133
    invoke-direct {p0, v1}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->scheduleTask(Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;)V

    goto :goto_1

    .line 136
    :cond_3
    const/4 v0, 0x0

    .line 137
    .local v0, "found":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 138
    .local v3, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v12

    if-ne v12, v2, :cond_4

    .line 139
    const/4 v0, 0x1

    .line 143
    .end local v3    # "jobInfo":Landroid/app/job/JobInfo;
    :cond_5
    if-nez v0, :cond_2

    .line 144
    add-int/lit8 v6, v6, 0x1

    .line 145
    invoke-direct {p0, v1}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->scheduleTask(Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;)V

    goto :goto_1

    .line 148
    .end local v0    # "found":Z
    .end local v1    # "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    .end local v2    # "jobId":I
    :cond_6
    invoke-static {v6}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordRescheduleCount(I)V

    goto :goto_0
.end method

.method public executeTask(JLcom/miui/gallery/pendingtask/base/PendingTask$Callback;)V
    .locals 25
    .param p1, "taskId"    # J
    .param p3, "callback"    # Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

    .prologue
    .line 218
    const-string v19, "PendingTaskManager"

    const-string v20, "executeTask taskId: %s"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v10

    .line 220
    .local v10, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v19, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v10, v0, v1, v2}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;J)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    .line 221
    .local v11, "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    if-nez v11, :cond_0

    .line 222
    const-string v19, "PendingTaskManager"

    const-string v20, "can\'t find taskInfo %s"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getTaskType()I

    move-result v18

    .line 227
    .local v18, "taskType":I
    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getExpireTime()J

    move-result-wide v12

    .line 228
    .local v12, "expireTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 229
    .local v6, "currentTime":J
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-lez v19, :cond_1

    cmp-long v19, v12, v6

    if-gez v19, :cond_1

    .line 230
    const-string v19, "PendingTaskManager"

    const-string/jumbo v20, "task %s is out of date"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v10, v11}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 232
    const-string v19, "out_date"

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordDropReason(ILjava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/pendingtask/PendingTaskFactory;->create(I)Lcom/miui/gallery/pendingtask/base/PendingTask;

    move-result-object v15

    .line 238
    .local v15, "task":Lcom/miui/gallery/pendingtask/base/PendingTask;
    if-nez v15, :cond_2

    .line 239
    const-string v19, "PendingTaskManager"

    const-string v20, "can\'t find PendingTask of this type %s"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v10, v11}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 241
    const-string v19, "create_task"

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordDropReason(ILjava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/miui/gallery/pendingtask/base/PendingTask;->setCallback(Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;)V

    .line 247
    const/4 v8, 0x0

    .line 249
    .local v8, "data":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getData()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/miui/gallery/pendingtask/base/PendingTask;->parseData([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 253
    .end local v8    # "data":Ljava/lang/Object;
    :goto_1
    if-nez v8, :cond_3

    .line 254
    invoke-virtual {v10, v11}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 255
    const-string v19, "data_parse"

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordDropReason(ILjava/lang/String;)V

    goto :goto_0

    .line 250
    .restart local v8    # "data":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 251
    .local v9, "e":Ljava/lang/Exception;
    const-string v19, "PendingTaskManager"

    const-string/jumbo v20, "task %s parseData error.\n"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    .end local v8    # "data":Ljava/lang/Object;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v14, 0x0

    .line 261
    .local v14, "retry":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 263
    .local v16, "start":J
    :try_start_1
    const-string v19, "PendingTaskManager"

    const-string/jumbo v20, "task %s begin process.\n"

    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getTaskType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v15, v8}, Lcom/miui/gallery/pendingtask/base/PendingTask;->process(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 268
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, v16

    .line 269
    .local v4, "cost":J
    move/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordProcessDuration(IJ)V

    .line 272
    if-eqz v14, :cond_5

    .line 273
    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->increaseRetryTime()V

    .line 274
    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getRetryTime()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 275
    const-string v19, "PendingTaskManager"

    const-string/jumbo v20, "task %s retry %s times, drop it!"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getRetryTime()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v10, v11}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 277
    const-string v19, "over_time"

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordDropReason(ILjava/lang/String;)V

    .line 286
    :goto_3
    const-string v19, "PendingTaskManager"

    const-string v20, "execute taskId %s done, cost %s ms, need retry %s"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-static/range {v19 .. v23}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 265
    .end local v4    # "cost":J
    :catch_1
    move-exception v9

    .line 266
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "PendingTaskManager"

    const-string/jumbo v20, "task %s process error.\n"

    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getTaskType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 279
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "cost":J
    :cond_4
    invoke-virtual {v10, v11}, Lcom/miui/gallery/dao/base/EntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->scheduleTask(Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;)V

    goto :goto_3

    .line 283
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual {v11}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->getCreateTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->recordFinishDuration(J)V

    .line 284
    invoke-virtual {v10, v11}, Lcom/miui/gallery/dao/base/EntityManager;->delete(Lcom/miui/gallery/dao/base/Entity;)Z

    goto :goto_3
.end method

.method public executeTask(Landroid/app/job/JobParameters;Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;)V
    .locals 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "callback"    # Lcom/miui/gallery/pendingtask/base/PendingTask$Callback;

    .prologue
    const-wide/16 v6, 0x0

    .line 205
    const-string v1, "PendingTaskManager"

    const-string v4, "executeTask jobId: %s"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 207
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string/jumbo v1, "taskId"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 211
    .local v2, "taskId":J
    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0, v2, v3, p2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->executeTask(JLcom/miui/gallery/pendingtask/base/PendingTask$Callback;)V

    goto :goto_0
.end method

.method public postTask(ILjava/lang/Object;)V
    .locals 1
    .param p1, "taskType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public postTask(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "taskType"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "data":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;J)V

    .line 79
    return-void
.end method

.method public postTask(ILjava/lang/Object;Ljava/lang/String;J)V
    .locals 6
    .param p1, "taskType"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {p0, p1, p3}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->cancel(ILjava/lang/String;)V

    .line 96
    :cond_0
    const-string v3, "PendingTaskManager"

    const-string v4, "postTask type: %s tag: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5, p3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {p1}, Lcom/miui/gallery/pendingtask/PendingTaskFactory;->create(I)Lcom/miui/gallery/pendingtask/base/PendingTask;

    move-result-object v2

    .line 98
    .local v2, "task":Lcom/miui/gallery/pendingtask/base/PendingTask;
    if-nez v2, :cond_1

    .line 99
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t find PendingTask of this type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_1
    new-instance v1, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    invoke-direct {v1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;-><init>()V

    .line 102
    .local v1, "info":Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setTaskType(I)V

    .line 103
    invoke-virtual {v1, p3}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setTaskTag(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setCreateTime(J)V

    .line 105
    invoke-virtual {v1, p4, p5}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setExpireTime(J)V

    .line 106
    invoke-virtual {v2}, Lcom/miui/gallery/pendingtask/base/PendingTask;->getNetworkType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setNetType(I)V

    .line 107
    invoke-virtual {v2}, Lcom/miui/gallery/pendingtask/base/PendingTask;->requireCharging()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setRequireCharging(Z)V

    .line 108
    invoke-virtual {v2}, Lcom/miui/gallery/pendingtask/base/PendingTask;->requireDeviceIdle()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setRequireDeviceIdle(Z)V

    .line 109
    invoke-virtual {v2}, Lcom/miui/gallery/pendingtask/base/PendingTask;->getMinLatency()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setMinLatencyMillis(J)V

    .line 111
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/miui/gallery/pendingtask/base/PendingTask;->wrapData(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;->setData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 117
    invoke-direct {p0, v1}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->scheduleTask(Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;)V

    .line 118
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PendingTaskManager"

    const-string v4, "postTask %s wrapData error.\n"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
