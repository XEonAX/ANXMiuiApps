.class public Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
.super Ljava/lang/Object;
.source "ScheduledJobManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;,
        Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private jobFutureMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field private mapLock:Ljava/lang/Object;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->mapLock:Ljava/lang/Object;

    .line 82
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->preferences:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->mapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getFutureByJobId(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .param p1, "job"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->mapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->instance:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->instance:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->instance:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->instance:Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getJobKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "jobId"    # I

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_job_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOneShootJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;I)V

    .line 151
    return-void
.end method

.method public addOneShootJob(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 161
    return-void
.end method

.method public addOneShootJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z
    .locals 6
    .param p1, "job"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
    .param p2, "delay"    # I

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getFutureByJobId(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    const/4 v2, 0x0

    .line 199
    :goto_0
    return v2

    .line 185
    :cond_1
    new-instance v1, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$2;-><init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)V

    .line 194
    .local v1, "wrapper":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v4, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v1, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 196
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;
    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->mapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;->getJobId()I

    move-result v4

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    monitor-exit v3

    .line 199
    const/4 v2, 0x1

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z
    .locals 1
    .param p1, "job"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
    .param p2, "period"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    move-result v0

    return v0
.end method

.method public addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z
    .locals 16
    .param p1, "job"    # Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
    .param p2, "period"    # I
    .param p3, "minDelay"    # I

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getFutureByJobId(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 141
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;->getJobId()I

    move-result v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getJobKey(I)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "key":Ljava/lang/String;
    new-instance v3, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v11}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$1;-><init>(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;Ljava/lang/String;)V

    .line 127
    .local v3, "wrapper":Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$JobWrapper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v11, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 128
    .local v12, "lastTs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v14, v4, v6

    .line 129
    .local v14, "timePassed":J
    move/from16 v9, p3

    .line 130
    .local v9, "delay":I
    sub-int v2, p2, p3

    int-to-long v4, v2

    cmp-long v2, v14, v4

    if-gez v2, :cond_2

    .line 131
    move/from16 v0, p2

    int-to-long v4, v0

    sub-long/2addr v4, v14

    long-to-int v9, v4

    .line 134
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v4, v9

    move/from16 v0, p2

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 135
    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v10

    .line 137
    .local v10, "future":Ljava/util/concurrent/ScheduledFuture;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->mapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;->getJobId()I

    move-result v5

    invoke-virtual {v2, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    monitor-exit v4

    .line 141
    const/4 v2, 0x1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public cancelJob(I)Z
    .locals 4
    .param p1, "jobId"    # I

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->mapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 218
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;
    if-nez v0, :cond_0

    .line 219
    monitor-exit v2

    .line 225
    :goto_0
    return v1

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->jobFutureMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    goto :goto_0

    .line 222
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
