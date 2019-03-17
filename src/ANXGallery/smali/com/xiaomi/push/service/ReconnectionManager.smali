.class Lcom/xiaomi/push/service/ReconnectionManager;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"


# static fields
.field private static MAX_RETRY_INTERVAL:I


# instance fields
.field private attempts:I

.field private curDelay:I

.field private lastConnectTime:J

.field private mPushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x493e0

    sput v0, Lcom/xiaomi/push/service/ReconnectionManager;->MAX_RETRY_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    .line 30
    iput-object p1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    .line 31
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/ReconnectionManager;->lastConnectTime:J

    .line 33
    return-void
.end method

.method private timeDelay()I
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 86
    iget v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    const/16 v8, 0x8

    if-le v3, v8, :cond_1

    .line 87
    const v2, 0x493e0

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    .line 91
    .local v6, "randomness":D
    iget v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    const/4 v8, 0x4

    if-le v3, v8, :cond_2

    .line 92
    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v8, v6

    double-to-int v2, v8

    goto :goto_0

    .line 94
    :cond_2
    iget v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    const/4 v8, 0x1

    if-le v3, v8, :cond_3

    .line 95
    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v8, v6

    double-to-int v2, v8

    goto :goto_0

    .line 98
    :cond_3
    iget-wide v8, p0, Lcom/xiaomi/push/service/ReconnectionManager;->lastConnectTime:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "curTime":J
    iget-wide v8, p0, Lcom/xiaomi/push/service/ReconnectionManager;->lastConnectTime:J

    sub-long v4, v0, v8

    .line 103
    .local v4, "interval":J
    const-wide/32 v8, 0x493e0

    cmp-long v3, v4, v8

    if-gez v3, :cond_5

    .line 106
    iget v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    sget v8, Lcom/xiaomi/push/service/ReconnectionManager;->MAX_RETRY_INTERVAL:I

    if-lt v3, v8, :cond_4

    .line 107
    iget v2, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    goto :goto_0

    .line 109
    :cond_4
    iget v2, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    .line 110
    .local v2, "delay":I
    iget v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    int-to-double v8, v3

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    goto :goto_0

    .line 114
    .end local v2    # "delay":I
    :cond_5
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->curDelay:I

    goto :goto_0
.end method


# virtual methods
.method public onConnectSucceeded()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/ReconnectionManager;->lastConnectTime:J

    .line 38
    iget-object v0, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    .line 40
    return-void
.end method

.method public tryReconnect(Z)V
    .locals 6
    .param p1, "rightNow"    # Z

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->shouldReconnect()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    if-eqz p1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->hasJob(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 49
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$ConnectJob;

    iget-object v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/XMPushService$ConnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->hasJob(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/push/service/ReconnectionManager;->timeDelay()I

    move-result v0

    .line 56
    .local v0, "delay":I
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->hasJob(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    iget v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    .line 59
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$ConnectJob;

    iget-object v3, p0, Lcom/xiaomi/push/service/ReconnectionManager;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/XMPushService$ConnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 63
    iget v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/StatsHandler;->isAllowStats()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    invoke-static {}, Lcom/xiaomi/push/service/NetworkCheckup;->dumpNativeNetInfo()V

    .line 66
    :cond_4
    iget v1, p0, Lcom/xiaomi/push/service/ReconnectionManager;->attempts:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 67
    invoke-static {}, Lcom/xiaomi/push/service/NetworkCheckup;->connectivityTest()V

    goto :goto_0

    .line 71
    .end local v0    # "delay":I
    :cond_5
    const-string/jumbo v1, "should not reconnect as no client or network."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
