.class Lcom/xiaomi/push/service/timers/AlarmManagerTimer;
.super Ljava/lang/Object;
.source "AlarmManagerTimer.java"

# interfaces
.implements Lcom/xiaomi/push/service/timers/Alarm$IAlarm;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private volatile mNextPingTs:J

.field private mPi:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    .line 22
    iput-object v0, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mContext:Landroid/content/Context;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    .line 26
    iput-object p1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private setExact(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 8
    .param p1, "mgr"    # Landroid/app/AlarmManager;
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 47
    const-class v0, Landroid/app/AlarmManager;

    .line 49
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/AlarmManager;>;"
    :try_start_0
    const-string/jumbo v3, "setExact"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method getPingInteval()J
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getPingInteval()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isAlive()Z
    .locals 4

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Landroid/content/Intent;J)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "triggerTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 32
    .local v0, "mgr":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 35
    const-string/jumbo v1, "setExactAndAllowWhileIdle"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 44
    return-void

    .line 36
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 37
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->setExact(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public registerPing(Z)V
    .locals 8
    .param p1, "firstPing"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->getPingInteval()J

    move-result-wide v2

    .line 70
    .local v2, "interval":J
    if-nez p1, :cond_0

    iget-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->stop()V

    .line 78
    :cond_1
    if-nez p1, :cond_2

    iget-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 79
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    rem-long/2addr v4, v2

    sub-long/2addr v2, v4

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    .line 87
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/PushConstants;->ACTION_PING_TIMER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->register(Landroid/content/Intent;J)V

    goto :goto_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    .line 83
    iget-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    goto :goto_1
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 94
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .local v0, "mgr":Landroid/app/AlarmManager;
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iput-object v3, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    .line 102
    const-string/jumbo v1, "unregister timer"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 103
    :goto_0
    iput-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    .line 106
    .end local v0    # "mgr":Landroid/app/AlarmManager;
    :cond_0
    iput-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    .line 107
    return-void

    .line 101
    .restart local v0    # "mgr":Landroid/app/AlarmManager;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    .line 102
    const-string/jumbo v2, "unregister timer"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 103
    iput-wide v4, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mNextPingTs:J

    .line 101
    throw v1

    .line 99
    :catch_0
    move-exception v1

    .line 101
    iput-object v3, p0, Lcom/xiaomi/push/service/timers/AlarmManagerTimer;->mPi:Landroid/app/PendingIntent;

    .line 102
    const-string/jumbo v1, "unregister timer"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
