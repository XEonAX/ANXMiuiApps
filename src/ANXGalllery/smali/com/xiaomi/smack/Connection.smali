.class public abstract Lcom/xiaomi/smack/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/Connection$ListenerWrapper;
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z

.field private static final connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected challenge:Ljava/lang/String;

.field protected config:Lcom/xiaomi/smack/ConnectionConfiguration;

.field protected connTimes:I

.field private connectStatus:I

.field protected connectTime:J

.field protected final connectionCounterValue:I

.field private final connectionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/xiaomi/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected connectionPoint:Ljava/lang/String;

.field protected debugger:Lcom/xiaomi/smack/debugger/SmackDebugger;

.field protected volatile lastPingReceived:J

.field protected volatile lastPingSent:J

.field private mCachedStatus:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPushService:Lcom/xiaomi/push/service/XMPushService;

.field private readAlive:J

.field protected final recvListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/smack/PacketListener;",
            "Lcom/xiaomi/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final sendListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/smack/PacketListener;",
            "Lcom/xiaomi/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected writeAlive:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    sput-boolean v1, Lcom/xiaomi/smack/Connection;->DEBUG_ENABLED:Z

    .line 146
    :try_start_0
    const-string/jumbo v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/smack/Connection;->DEBUG_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 153
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V
    .locals 4
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "configuration"    # Lcom/xiaomi/smack/ConnectionConfiguration;

    .prologue
    const-wide/16 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/smack/Connection;->connTimes:I

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/smack/Connection;->connectTime:J

    .line 129
    iput-wide v2, p0, Lcom/xiaomi/smack/Connection;->lastPingSent:J

    .line 130
    iput-wide v2, p0, Lcom/xiaomi/smack/Connection;->lastPingReceived:J

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    .line 158
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->recvListeners:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->sendListeners:Ljava/util/Map;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->debugger:Lcom/xiaomi/smack/debugger/SmackDebugger;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->challenge:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/Connection;->connectionPoint:Ljava/lang/String;

    .line 179
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    .line 185
    sget-object v0, Lcom/xiaomi/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 186
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smack/Connection;->connectionCounterValue:I

    .line 649
    iput-wide v2, p0, Lcom/xiaomi/smack/Connection;->readAlive:J

    .line 651
    iput-wide v2, p0, Lcom/xiaomi/smack/Connection;->writeAlive:J

    .line 201
    iput-object p2, p0, Lcom/xiaomi/smack/Connection;->config:Lcom/xiaomi/smack/ConnectionConfiguration;

    .line 202
    iput-object p1, p0, Lcom/xiaomi/smack/Connection;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    .line 203
    invoke-virtual {p0}, Lcom/xiaomi/smack/Connection;->initDebugger()V

    .line 204
    return-void
.end method

.method private addStatus(I)V
    .locals 6
    .param p1, "newStatus"    # I

    .prologue
    .line 670
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    monitor-enter v1

    .line 671
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 679
    :cond_0
    :goto_0
    monitor-exit v1

    .line 680
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    .line 676
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDesc(I)Ljava/lang/String;
    .locals 1
    .param p1, "connectStatus"    # I

    .prologue
    .line 624
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 625
    const-string v0, "connected"

    .line 631
    :goto_0
    return-object v0

    .line 626
    :cond_0
    if-nez p1, :cond_1

    .line 627
    const-string v0, "connecting"

    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 629
    const-string v0, "disconnected"

    goto :goto_0

    .line 631
    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public addConnectionListener(Lcom/xiaomi/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lcom/xiaomi/smack/ConnectionListener;

    .prologue
    .line 346
    if-nez p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPacketListener(Lcom/xiaomi/smack/PacketListener;Lcom/xiaomi/smack/filter/PacketFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lcom/xiaomi/smack/PacketListener;
    .param p2, "packetFilter"    # Lcom/xiaomi/smack/filter/PacketFilter;

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/Connection$ListenerWrapper;-><init>(Lcom/xiaomi/smack/PacketListener;Lcom/xiaomi/smack/filter/PacketFilter;)V

    .line 388
    .local v0, "wrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method public addPacketSendingListener(Lcom/xiaomi/smack/PacketListener;Lcom/xiaomi/smack/filter/PacketFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lcom/xiaomi/smack/PacketListener;
    .param p2, "packetFilter"    # Lcom/xiaomi/smack/filter/PacketFilter;

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/smack/Connection$ListenerWrapper;-><init>(Lcom/xiaomi/smack/PacketListener;Lcom/xiaomi/smack/filter/PacketFilter;)V

    .line 425
    .local v0, "wrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public abstract batchSend([Lcom/xiaomi/slim/Blob;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract bind(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method

.method public clearCachedStatus()V
    .locals 2

    .prologue
    .line 704
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->mCachedStatus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 706
    monitor-exit v1

    .line 707
    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/smack/Connection;->disconnect(ILjava/lang/Exception;)V

    .line 336
    return-void
.end method

.method public abstract disconnect(ILjava/lang/Exception;)V
.end method

.method public getConfiguration()Lcom/xiaomi/smack/ConnectionConfiguration;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->config:Lcom/xiaomi/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public getConnTryTimes()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/xiaomi/smack/Connection;->connTimes:I

    return v0
.end method

.method public getConnectionPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->config:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/smack/ConnectionConfiguration;->getConnectionPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->config:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPingRecv()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/xiaomi/smack/Connection;->lastPingReceived:J

    return-wide v0
.end method

.method protected initDebugger()V
    .locals 7

    .prologue
    .line 468
    iget-object v4, p0, Lcom/xiaomi/smack/Connection;->config:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-virtual {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    iget-object v4, p0, Lcom/xiaomi/smack/Connection;->debugger:Lcom/xiaomi/smack/debugger/SmackDebugger;

    if-nez v4, :cond_1

    .line 471
    const/4 v0, 0x0

    .line 476
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "smack.debuggerClass"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 480
    :goto_0
    const/4 v2, 0x0

    .line 481
    .local v2, "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 483
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 488
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 489
    new-instance v4, Lcom/xiaomi/measite/smack/AndroidDebugger;

    invoke-direct {v4, p0}, Lcom/xiaomi/measite/smack/AndroidDebugger;-><init>(Lcom/xiaomi/smack/Connection;)V

    iput-object v4, p0, Lcom/xiaomi/smack/Connection;->debugger:Lcom/xiaomi/smack/debugger/SmackDebugger;

    .line 510
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    return-void

    .line 484
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 485
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 496
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x3

    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/xiaomi/smack/Connection;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/io/Writer;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/io/Reader;

    aput-object v6, v4, v5

    .line 497
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 499
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 500
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/smack/debugger/SmackDebugger;

    iput-object v4, p0, Lcom/xiaomi/smack/Connection;->debugger:Lcom/xiaomi/smack/debugger/SmackDebugger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 501
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v3

    .line 502
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t initialize the configured debugger!"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 477
    .end local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public isBinaryConnection()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 554
    iget v1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isReadAlive()Z
    .locals 4

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/Connection;->readAlive:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getCheckAliveInterval()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReadAlive(J)Z
    .locals 3
    .param p1, "checkTime"    # J

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/smack/Connection;->readAlive:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWriteAlive()Z
    .locals 4

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/smack/Connection;->writeAlive:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getCheckAliveInterval()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract ping(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method

.method public removeConnectionListener(Lcom/xiaomi/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lcom/xiaomi/smack/ConnectionListener;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public abstract send(Lcom/xiaomi/slim/Blob;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract sendPacket(Lcom/xiaomi/smack/packet/Packet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method

.method public declared-synchronized setChallenge(Ljava/lang/String;)V
    .locals 4
    .param p1, "challenge"    # Ljava/lang/String;

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 641
    iput-object p1, p0, Lcom/xiaomi/smack/Connection;->challenge:Ljava/lang/String;

    .line 642
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/smack/Connection;->setConnectionStatus(IILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :goto_0
    monitor-exit p0

    return-void

    .line 644
    :cond_0
    :try_start_1
    const-string v0, "ignore setChallenge because connection was disconnected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectionStatus(IILjava/lang/Exception;)V
    .locals 8
    .param p1, "newStatus"    # I
    .param p2, "reason"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 574
    iget v1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-eq p1, v1, :cond_0

    .line 575
    const-string/jumbo v1, "update the connection status. %1$s -> %2$s : %3$s "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    invoke-direct {p0, v4}, Lcom/xiaomi/smack/Connection;->getDesc(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 576
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/Connection;->getDesc(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 577
    invoke-static {p2}, Lcom/xiaomi/push/service/PushConstants;->getErrorDesc(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 575
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/Connection;->addStatus(I)V

    .line 584
    :cond_1
    if-ne p1, v5, :cond_3

    .line 585
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v7}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 587
    iget v1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-eqz v1, :cond_2

    .line 588
    const-string/jumbo v1, "try set connected while not connecting."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 591
    :cond_2
    iput p1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    .line 593
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/ConnectionListener;

    .line 594
    .local v0, "listener":Lcom/xiaomi/smack/ConnectionListener;
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/ConnectionListener;->reconnectionSuccessful(Lcom/xiaomi/smack/Connection;)V

    goto :goto_0

    .line 596
    .end local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    :cond_3
    if-nez p1, :cond_5

    .line 597
    iget v1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-eq v1, v6, :cond_4

    .line 598
    const-string/jumbo v1, "try set connecting while not disconnected."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 601
    :cond_4
    iput p1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    .line 603
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/ConnectionListener;

    .line 604
    .restart local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    invoke-interface {v0, p0}, Lcom/xiaomi/smack/ConnectionListener;->connectionStarted(Lcom/xiaomi/smack/Connection;)V

    goto :goto_1

    .line 606
    .end local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    :cond_5
    if-ne p1, v6, :cond_9

    .line 607
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v7}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 609
    iget v1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-nez v1, :cond_7

    .line 610
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/ConnectionListener;

    .line 611
    .restart local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    if-nez p3, :cond_6

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v3, "disconnect while connecting"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0, p0, v1}, Lcom/xiaomi/smack/ConnectionListener;->reconnectionFailed(Lcom/xiaomi/smack/Connection;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_6
    move-object v1, p3

    goto :goto_3

    .line 614
    .end local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    :cond_7
    iget v1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    if-ne v1, v5, :cond_8

    .line 615
    iget-object v1, p0, Lcom/xiaomi/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/ConnectionListener;

    .line 616
    .restart local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    invoke-interface {v0, p0, p2, p3}, Lcom/xiaomi/smack/ConnectionListener;->connectionClosed(Lcom/xiaomi/smack/Connection;ILjava/lang/Exception;)V

    goto :goto_4

    .line 619
    .end local v0    # "listener":Lcom/xiaomi/smack/ConnectionListener;
    :cond_8
    iput p1, p0, Lcom/xiaomi/smack/Connection;->connectStatus:I

    .line 621
    :cond_9
    return-void
.end method

.method public declared-synchronized setReadAlive()V
    .locals 2

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/Connection;->readAlive:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract unbind(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method
