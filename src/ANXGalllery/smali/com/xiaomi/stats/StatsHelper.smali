.class public Lcom/xiaomi/stats/StatsHelper;
.super Ljava/lang/Object;
.source "StatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/StatsHelper$Holder;
    }
.end annotation


# static fields
.field private static final PING_RTT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->PING_RTT:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    sput v0, Lcom/xiaomi/stats/StatsHelper;->PING_RTT:I

    return-void
.end method

.method public static connectFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/stats/StatsAnalyser;->fromConnectionException(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    move-result-object v1

    .line 32
    .local v1, "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 33
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    iget-object v2, v1, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 34
    iget-object v2, v1, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setAnnotation(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 35
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 36
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    .end local v1    # "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static connectionDown(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/stats/StatsAnalyser;->fromDisconnectEx(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    move-result-object v1

    .line 45
    .local v1, "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 46
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    iget-object v2, v1, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 47
    iget-object v2, v1, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setAnnotation(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 48
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 49
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    .end local v1    # "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static count(I)V
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 136
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 137
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_STATS_COUNTER:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 138
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 139
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 140
    return-void
.end method

.method public static pingEnded()V
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/stats/StatsHelper;->PING_RTT:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stats/StatsHelper;->trackEnd(IILjava/lang/String;I)V

    .line 118
    return-void
.end method

.method public static pingStarted()V
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/stats/StatsHelper;->PING_RTT:I

    invoke-static {v0, v1}, Lcom/xiaomi/stats/StatsHelper;->trackStart(II)V

    .line 114
    return-void
.end method

.method public static retriveStatsAsByte()[B
    .locals 3

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "stats":[B
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stats/StatsHandler;->retriveStatsEvents()Lcom/xiaomi/push/thrift/StatsEvents;

    move-result-object v0

    .line 157
    .local v0, "evts":Lcom/xiaomi/push/thrift/StatsEvents;
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 160
    :cond_0
    return-object v1
.end method

.method public static stats(IIILjava/lang/String;I)V
    .locals 2
    .param p0, "chid"    # I
    .param p1, "key"    # I
    .param p2, "val"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "subVal"    # I

    .prologue
    .line 121
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 122
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setChid(B)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 123
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 124
    invoke-virtual {v0, p2}, Lcom/xiaomi/push/thrift/StatsEvent;->setValue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 125
    invoke-virtual {v0, p3}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 126
    invoke-virtual {v0, p4}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 127
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 128
    return-void
.end method

.method public static statsBind(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 1
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "client"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 81
    new-instance v0, Lcom/xiaomi/stats/BindTracker;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stats/BindTracker;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 82
    .local v0, "tracker":Lcom/xiaomi/stats/BindTracker;
    invoke-virtual {v0}, Lcom/xiaomi/stats/BindTracker;->track()V

    .line 83
    return-void
.end method

.method public static statsGslb(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "cost"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 56
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 57
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    if-lez p1, :cond_0

    .line 58
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->GSLB_REQUEST_SUCCESS:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 59
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 60
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->setValue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 61
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/stats/StatsAnalyser;->fromGslbException(Ljava/lang/Exception;)Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;

    move-result-object v1

    .line 65
    .local v1, "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    iget-object v2, v1, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->type:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 66
    iget-object v2, v1, Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setAnnotation(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 67
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 68
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v1    # "wraper":Lcom/xiaomi/stats/StatsAnalyser$TypeWraper;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized trackEnd(IILjava/lang/String;I)V
    .locals 8
    .param p0, "chid"    # I
    .param p1, "key"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "subVal"    # I

    .prologue
    .line 95
    const-class v5, Lcom/xiaomi/stats/StatsHelper;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    .local v2, "time":J
    shl-int/lit8 v4, p0, 0x18

    or-int v1, v4, p1

    .line 97
    .local v1, "tKey":I
    sget-object v4, Lcom/xiaomi/stats/StatsHelper$Holder;->sTimeTracker:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 99
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 100
    sget-object v4, Lcom/xiaomi/stats/StatsHelper$Holder;->sTimeTracker:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-int v4, v6

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/thrift/StatsEvent;->setValue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 101
    invoke-virtual {v0, p2}, Lcom/xiaomi/push/thrift/StatsEvent;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 102
    const/4 v4, -0x1

    if-le p3, v4, :cond_0

    .line 103
    invoke-virtual {v0, p3}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 105
    :cond_0
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 106
    sget-object v4, Lcom/xiaomi/stats/StatsHelper$Holder;->sTimeTracker:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v0    # "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    :goto_0
    monitor-exit v5

    return-void

    .line 108
    :cond_1
    :try_start_1
    const-string/jumbo v4, "stats key not found"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v1    # "tKey":I
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized trackStart(II)V
    .locals 6
    .param p0, "chid"    # I
    .param p1, "key"    # I

    .prologue
    .line 86
    const-class v2, Lcom/xiaomi/stats/StatsHelper;

    monitor-enter v2

    const v1, 0xffffff

    if-ge p1, v1, :cond_0

    .line 87
    shl-int/lit8 v1, p0, 0x18

    or-int v0, v1, p1

    .line 88
    .local v0, "tKey":I
    :try_start_0
    sget-object v1, Lcom/xiaomi/stats/StatsHelper$Holder;->sTimeTracker:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "tKey":I
    :goto_0
    monitor-exit v2

    return-void

    .line 90
    :cond_0
    :try_start_1
    const-string/jumbo v1, "stats key should less than 16777215"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
