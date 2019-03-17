.class public Lcom/xiaomi/push/service/timers/AlarmV21;
.super Ljava/lang/Object;
.source "AlarmV21.java"

# interfaces
.implements Lcom/xiaomi/push/service/timers/Alarm$IAlarm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mJobScheduler:Landroid/app/job/JobScheduler;

.field private mStarted:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mStarted:Z

    .line 24
    iput-object p1, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mContext:Landroid/content/Context;

    .line 25
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 26
    return-void
.end method


# virtual methods
.method public isAlive()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mStarted:Z

    return v0
.end method

.method register(J)V
    .locals 7
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v5, 0x1

    .line 29
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/xiaomi/push/service/XMJobService;

    .line 31
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 32
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 34
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 37
    .local v1, "info":Landroid/app/job/JobInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule Job = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 39
    return-void
.end method

.method public registerPing(Z)V
    .locals 6
    .param p1, "firstPing"    # Z

    .prologue
    .line 43
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mStarted:Z

    if-nez v4, :cond_0

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getPingInteval()I

    move-result v4

    int-to-long v0, v4

    .line 47
    .local v0, "interval":J
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/xiaomi/push/service/timers/AlarmV21;->stop()V

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 51
    .local v2, "now":J
    rem-long v4, v2, v0

    sub-long/2addr v0, v4

    .line 53
    .end local v2    # "now":J
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mStarted:Z

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/timers/AlarmV21;->register(J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mStarted:Z

    .line 60
    iget-object v0, p0, Lcom/xiaomi/push/service/timers/AlarmV21;->mJobScheduler:Landroid/app/job/JobScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 61
    return-void
.end method
