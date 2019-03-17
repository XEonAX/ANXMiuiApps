.class public Lcom/xiaomi/stats/StatsContext;
.super Ljava/lang/Object;
.source "StatsContext.java"

# interfaces
.implements Lcom/xiaomi/smack/ConnectionListener;


# instance fields
.field private accumulatedChannelDuration:J

.field private accumulatedNetworkDuration:J

.field private channelConnectedTime:J

.field connection:Lcom/xiaomi/smack/Connection;

.field private connectionPoint:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private mRxBytes:J

.field private mTxBytes:J

.field private networkConnectedTime:J

.field pushService:Lcom/xiaomi/push/service/XMPushService;

.field private reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 4
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    .line 33
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    .line 36
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    .line 39
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    .line 48
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->mTxBytes:J

    .line 49
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->mRxBytes:J

    .line 52
    iput-object p1, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/stats/StatsContext;->connectionPoint:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/stats/StatsContext;->resetChannelStats()V

    .line 56
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 57
    .local v0, "uid":I
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->mRxBytes:J

    .line 58
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->mTxBytes:J

    .line 60
    return-void
.end method

.method private resetChannelStats()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    .line 100
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    .line 101
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    .line 102
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 105
    .local v0, "now":J
    iget-object v2, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iput-wide v0, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iput-wide v0, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    .line 111
    :cond_1
    return-void
.end method

.method private declared-synchronized statsChannelDuration()V
    .locals 6

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stat connpt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stats/StatsContext;->connectionPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ChannelDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelConnectedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 118
    .local v0, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 119
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_ONLINE_RATE:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 120
    iget-object v1, p0, Lcom/xiaomi/stats/StatsContext;->connectionPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setConnpt(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setTime(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 122
    iget-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setValue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 123
    iget-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 124
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/StatsHandler;->add(Lcom/xiaomi/push/thrift/StatsEvent;)V

    .line 125
    invoke-direct {p0}, Lcom/xiaomi/stats/StatsContext;->resetChannelStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 114
    .end local v0    # "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public connectionClosed(Lcom/xiaomi/smack/Connection;ILjava/lang/Exception;)V
    .locals 12
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;
    .param p2, "reason"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 140
    iget v7, p0, Lcom/xiaomi/stats/StatsContext;->reason:I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/xiaomi/stats/StatsContext;->exception:Ljava/lang/Exception;

    if-nez v7, :cond_0

    .line 141
    iput p2, p0, Lcom/xiaomi/stats/StatsContext;->reason:I

    .line 142
    iput-object p3, p0, Lcom/xiaomi/stats/StatsContext;->exception:Ljava/lang/Exception;

    .line 143
    invoke-virtual {p1}, Lcom/xiaomi/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p3}, Lcom/xiaomi/stats/StatsHelper;->connectionDown(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    :cond_0
    const/16 v7, 0x16

    if-ne p2, v7, :cond_2

    .line 150
    iget-wide v8, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/xiaomi/smack/Connection;->getLastPingRecv()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    sub-long v0, v8, v10

    .line 152
    .local v0, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_1

    .line 153
    const-wide/16 v0, 0x0

    .line 155
    :cond_1
    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getPingInteval()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    add-long/2addr v0, v8

    .line 156
    iget-wide v8, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    .line 157
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    .line 161
    .end local v0    # "duration":J
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/stats/StatsContext;->statsChannelIfNeed()V

    .line 163
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 164
    .local v6, "uid":I
    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 165
    .local v2, "rx":J
    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 167
    .local v4, "tx":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stats rx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/xiaomi/stats/StatsContext;->mRxBytes:J

    sub-long v8, v2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/xiaomi/stats/StatsContext;->mTxBytes:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 168
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->mRxBytes:J

    .line 169
    iput-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->mTxBytes:J

    .line 170
    return-void
.end method

.method public connectionStarted(Lcom/xiaomi/smack/Connection;)V
    .locals 2
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;

    .prologue
    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/xiaomi/stats/StatsContext;->reason:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stats/StatsContext;->exception:Ljava/lang/Exception;

    .line 132
    iput-object p1, p0, Lcom/xiaomi/stats/StatsContext;->connection:Lcom/xiaomi/smack/Connection;

    .line 133
    iget-object v0, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stats/StatsContext;->connectionPoint:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_SUCCESS:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/stats/StatsHelper;->trackStart(II)V

    .line 135
    return-void
.end method

.method getCaughtException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/stats/StatsContext;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public reconnectionFailed(Lcom/xiaomi/smack/Connection;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 183
    .local v0, "causedByNetwork":I
    :goto_0
    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_CON_FAIL:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v0}, Lcom/xiaomi/stats/StatsHelper;->stats(IIILjava/lang/String;I)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaomi/stats/StatsContext;->statsChannelIfNeed()V

    .line 185
    return-void

    .end local v0    # "causedByNetwork":I
    :cond_0
    move v0, v2

    .line 182
    goto :goto_0
.end method

.method public reconnectionSuccessful(Lcom/xiaomi/smack/Connection;)V
    .locals 4
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/xiaomi/stats/StatsContext;->statsChannelIfNeed()V

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    .line 177
    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->CONN_SUCCESS:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/smack/Connection;->getConnTryTimes()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stats/StatsHelper;->trackEnd(IILjava/lang/String;I)V

    .line 178
    return-void
.end method

.method public declared-synchronized statsChannelIfNeed()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "connpt":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    .line 71
    .local v1, "networkConnected":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 72
    .local v2, "now":J
    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 73
    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    iget-wide v6, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    .line 74
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    .line 77
    :cond_2
    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 78
    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    iget-wide v6, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedChannelDuration:J

    .line 79
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J

    .line 82
    :cond_3
    if-eqz v1, :cond_0

    .line 83
    iget-object v4, p0, Lcom/xiaomi/stats/StatsContext;->connectionPoint:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    :cond_4
    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->accumulatedNetworkDuration:J

    const-wide/32 v6, 0x5265c0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 86
    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/stats/StatsContext;->statsChannelDuration()V

    .line 88
    :cond_6
    iput-object v0, p0, Lcom/xiaomi/stats/StatsContext;->connectionPoint:Ljava/lang/String;

    .line 89
    iget-wide v4, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 90
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->networkConnectedTime:J

    .line 92
    :cond_7
    iget-object v4, p0, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iput-wide v2, p0, Lcom/xiaomi/stats/StatsContext;->channelConnectedTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "connpt":Ljava/lang/String;
    .end local v1    # "networkConnected":Z
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
