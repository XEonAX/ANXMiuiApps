.class Lcom/xiaomi/push/service/JobScheduler$TaskWraper;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskWraper"
.end annotation


# instance fields
.field cancelled:Z

.field job:Lcom/xiaomi/push/service/JobScheduler$Job;

.field final lock:Ljava/lang/Object;

.field private scheduledTime:J

.field type:I

.field when:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 118
    iget-object v2, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancelled:Z

    if-nez v1, :cond_0

    iget-wide v4, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->when:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 120
    .local v0, "willRun":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->cancelled:Z

    .line 121
    monitor-exit v2

    return v0

    .line 119
    .end local v0    # "willRun":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setScheduledTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 104
    iget-object v1, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iput-wide p1, p0, Lcom/xiaomi/push/service/JobScheduler$TaskWraper;->scheduledTime:J

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
