.class public Lcom/xiaomi/stats/StatsHandler;
.super Ljava/lang/Object;
.source "StatsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/StatsHandler$Holder;
    }
.end annotation


# instance fields
.field private allowStatsUpload:Z

.field private context:Lcom/xiaomi/stats/StatsContext;

.field private duration:I

.field private startTime:J

.field private statsContainer:Lcom/xiaomi/channel/commonutils/stats/Stats;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    .line 43
    invoke-static {}, Lcom/xiaomi/channel/commonutils/stats/Stats;->instance()Lcom/xiaomi/channel/commonutils/stats/Stats;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stats/StatsHandler;->statsContainer:Lcom/xiaomi/channel/commonutils/stats/Stats;

    return-void
.end method

.method private from(Lcom/xiaomi/channel/commonutils/stats/Stats$Item;)Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 2
    .param p1, "item"    # Lcom/xiaomi/channel/commonutils/stats/Stats$Item;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    iget v1, p1, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;->key:I

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p1, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/xiaomi/push/thrift/StatsEvent;

    if-eqz v1, :cond_0

    .line 197
    iget-object v0, p1, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;->obj:Ljava/lang/Object;

    .end local v0    # "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent;

    .line 205
    .restart local v0    # "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/stats/StatsHandler;->createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->CHANNEL_STATS_COUNTER:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setType(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 202
    iget v1, p1, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;->key:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setSubvalue(I)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 203
    iget-object v1, p1, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->setAnnotation(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    goto :goto_0
.end method

.method public static getContext()Lcom/xiaomi/stats/StatsContext;
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/xiaomi/stats/StatsHandler$Holder;->sStatsHandler:Lcom/xiaomi/stats/StatsHandler;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/xiaomi/stats/StatsHandler$Holder;->sStatsHandler:Lcom/xiaomi/stats/StatsHandler;

    iget-object v0, v0, Lcom/xiaomi/stats/StatsHandler;->context:Lcom/xiaomi/stats/StatsContext;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/xiaomi/stats/StatsHandler;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/xiaomi/stats/StatsHandler$Holder;->sStatsHandler:Lcom/xiaomi/stats/StatsHandler;

    return-object v0
.end method

.method private retriveStatsEvents(I)Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 8
    .param p1, "size"    # I

    .prologue
    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/push/thrift/StatsEvent;>;"
    new-instance v1, Lcom/xiaomi/push/thrift/StatsEvents;

    iget-object v7, p0, Lcom/xiaomi/stats/StatsHandler;->uuid:Ljava/lang/String;

    invoke-direct {v1, v7, v3}, Lcom/xiaomi/push/thrift/StatsEvents;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    .local v1, "evts":Lcom/xiaomi/push/thrift/StatsEvents;
    iget-object v7, p0, Lcom/xiaomi/stats/StatsHandler;->context:Lcom/xiaomi/stats/StatsContext;

    iget-object v7, v7, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 131
    iget-object v7, p0, Lcom/xiaomi/stats/StatsHandler;->context:Lcom/xiaomi/stats/StatsContext;

    iget-object v7, v7, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "operator":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/xiaomi/push/thrift/StatsEvents;->setOperator(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents;

    .line 135
    .end local v4    # "operator":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/apache/thrift/transport/TMemoryBuffer;

    invoke-direct {v0, p1}, Lorg/apache/thrift/transport/TMemoryBuffer;-><init>(I)V

    .line 136
    .local v0, "buffer":Lorg/apache/thrift/transport/TMemoryBuffer;
    new-instance v7, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;

    invoke-direct {v7}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;-><init>()V

    invoke-virtual {v7, v0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;->getProtocol(Lorg/apache/thrift/transport/TTransport;)Lorg/apache/thrift/protocol/TProtocol;

    move-result-object v5

    .line 138
    .local v5, "protocol":Lorg/apache/thrift/protocol/TProtocol;
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/xiaomi/push/thrift/StatsEvents;->write(Lorg/apache/thrift/protocol/TProtocol;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    iget-object v7, p0, Lcom/xiaomi/stats/StatsHandler;->statsContainer:Lcom/xiaomi/channel/commonutils/stats/Stats;

    invoke-virtual {v7}, Lcom/xiaomi/channel/commonutils/stats/Stats;->getStats()Ljava/util/LinkedList;

    move-result-object v2

    .line 145
    .local v2, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaomi/channel/commonutils/stats/Stats$Item;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 146
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;

    invoke-direct {p0, v7}, Lcom/xiaomi/stats/StatsHandler;->from(Lcom/xiaomi/channel/commonutils/stats/Stats$Item;)Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v6

    .line 147
    .local v6, "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    if-eqz v6, :cond_1

    .line 148
    invoke-virtual {v6, v5}, Lcom/xiaomi/push/thrift/StatsEvent;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 150
    :cond_1
    invoke-virtual {v0}, Lorg/apache/thrift/transport/TMemoryBuffer;->length()I

    move-result v7

    if-le v7, p1, :cond_3

    .line 166
    .end local v6    # "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    :cond_2
    :goto_2
    return-object v1

    .line 154
    .restart local v6    # "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    :cond_3
    if-eqz v6, :cond_4

    .line 155
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 160
    .end local v6    # "stats":Lcom/xiaomi/push/thrift/StatsEvent;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 139
    .end local v2    # "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaomi/channel/commonutils/stats/Stats$Item;>;"
    :catch_1
    move-exception v7

    goto :goto_0

    .line 162
    .restart local v2    # "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaomi/channel/commonutils/stats/Stats$Item;>;"
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method private stopStatsIfNeed()V
    .locals 6

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/stats/StatsHandler;->startTime:J

    sub-long v0, v2, v4

    .line 102
    .local v0, "time":J
    iget v2, p0, Lcom/xiaomi/stats/StatsHandler;->duration:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/stats/StatsHandler;->startTime:J

    .line 107
    .end local v0    # "time":J
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/xiaomi/push/thrift/StatsEvent;)V
    .locals 1
    .param p1, "evt"    # Lcom/xiaomi/push/thrift/StatsEvent;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stats/StatsHandler;->statsContainer:Lcom/xiaomi/channel/commonutils/stats/Stats;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/stats/Stats;->stat(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized createStatsEvent()Lcom/xiaomi/push/thrift/StatsEvent;
    .locals 6

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v1}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 184
    .local v1, "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    iget-object v2, p0, Lcom/xiaomi/stats/StatsHandler;->context:Lcom/xiaomi/stats/StatsContext;

    iget-object v2, v2, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "connpt":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/StatsEvent;->setConnpt(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 186
    const/4 v2, 0x0

    iput-byte v2, v1, Lcom/xiaomi/push/thrift/StatsEvent;->chid:B

    .line 187
    const/4 v2, 0x1

    iput v2, v1, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/StatsEvent;->setTime(I)Lcom/xiaomi/push/thrift/StatsEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-object v1

    .line 183
    .end local v0    # "connpt":Ljava/lang/String;
    .end local v1    # "evt":Lcom/xiaomi/push/thrift/StatsEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized init(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2
    .param p1, "service"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/stats/StatsContext;

    invoke-direct {v0, p1}, Lcom/xiaomi/stats/StatsContext;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/stats/StatsHandler;->context:Lcom/xiaomi/stats/StatsContext;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/stats/StatsHandler;->uuid:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stats/StatsHandler$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/stats/StatsHandler$1;-><init>(Lcom/xiaomi/stats/StatsHandler;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/ServiceConfig;->addListener(Lcom/xiaomi/push/service/ServiceConfig$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAllowStats()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    return v0
.end method

.method declared-synchronized retriveStatsEvents()Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    .local v0, "evts":Lcom/xiaomi/push/thrift/StatsEvents;
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/stats/StatsHandler;->shouldSendStatsNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/16 v1, 0x2ee

    .line 118
    .local v1, "limit":I
    iget-object v2, p0, Lcom/xiaomi/stats/StatsHandler;->context:Lcom/xiaomi/stats/StatsContext;

    iget-object v2, v2, Lcom/xiaomi/stats/StatsContext;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    div-int/lit8 v1, v1, 0x2

    .line 121
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaomi/stats/StatsHandler;->retriveStatsEvents(I)Lcom/xiaomi/push/thrift/StatsEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 123
    .end local v1    # "limit":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 115
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setDuration(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 83
    if-lez p1, :cond_2

    .line 85
    mul-int/lit16 p1, p1, 0x3e8

    .line 86
    const v0, 0x240c8400

    if-le p1, v0, :cond_0

    .line 87
    const p1, 0x240c8400

    .line 89
    :cond_0
    iget v0, p0, Lcom/xiaomi/stats/StatsHandler;->duration:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    if-nez v0, :cond_2

    .line 90
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stats/StatsHandler;->startTime:J

    .line 93
    iput p1, p0, Lcom/xiaomi/stats/StatsHandler;->duration:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable dot duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/stats/StatsHandler;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 97
    :cond_2
    return-void
.end method

.method shouldSendStatsNow()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/xiaomi/stats/StatsHandler;->stopStatsIfNeed()V

    .line 111
    iget-boolean v0, p0, Lcom/xiaomi/stats/StatsHandler;->allowStatsUpload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stats/StatsHandler;->statsContainer:Lcom/xiaomi/channel/commonutils/stats/Stats;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/stats/Stats;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
