.class public abstract Lcom/xiaomi/smack/SocketConnection;
.super Lcom/xiaomi/smack/Connection;
.source "SocketConnection.java"


# instance fields
.field private connectedHost:Ljava/lang/String;

.field connectionID:Ljava/lang/String;

.field private curShortConnCount:I

.field protected failedException:Ljava/lang/Exception;

.field protected volatile lastConnectedTime:J

.field protected volatile lastPingReceived:J

.field protected volatile lastPingSent:J

.field protected pushService:Lcom/xiaomi/push/service/XMPushService;

.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V
    .locals 3
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "config"    # Lcom/xiaomi/smack/ConnectionConfiguration;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/Connection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V

    .line 52
    iput-object v2, p0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    .line 61
    iput-object v2, p0, Lcom/xiaomi/smack/SocketConnection;->connectionID:Ljava/lang/String;

    .line 67
    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastPingSent:J

    .line 68
    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastPingReceived:J

    .line 76
    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastConnectedTime:J

    .line 85
    iput-object p1, p0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 86
    return-void
.end method

.method private connectDirectly(Ljava/lang/String;I)V
    .locals 19
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v15, 0x0

    .line 229
    .local v15, "succeeded":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    .line 231
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v13, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get bucket for host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->ps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 233
    .local v9, "code":I
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/smack/SocketConnection;->getFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    .line 234
    .local v2, "fallback":Lcom/xiaomi/network/Fallback;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->pe(Ljava/lang/Integer;)V

    .line 235
    if-eqz v2, :cond_0

    .line 236
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 239
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/SocketConnection;->lastConnectedTime:J

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "currentNetwork":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v12, "errorSB":Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, "currentHost":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 249
    .local v16, "start":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/smack/SocketConnection;->connTimes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xiaomi/smack/SocketConnection;->connTimes:I

    .line 251
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/SocketConnection;->createSocket()Ljava/net/Socket;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->socket:Ljava/net/Socket;

    .line 256
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/xiaomi/network/Host;->from(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v14

    .line 257
    .local v14, "socketAddress":Ljava/net/InetSocketAddress;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->socket:Ljava/net/Socket;

    const/16 v5, 0x1f40

    invoke-virtual {v4, v14, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 258
    const-string/jumbo v4, "tcp connected"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 261
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/smack/SocketConnection;->connectedHost:Ljava/lang/String;

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/smack/SocketConnection;->initConnection()V

    .line 264
    const/4 v15, 0x1

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/SocketConnection;->connectTime:J

    .line 266
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/xiaomi/smack/SocketConnection;->connectionPoint:Ljava/lang/String;

    .line 268
    if-eqz v2, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/xiaomi/smack/SocketConnection;->connectTime:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/network/Fallback;->succeedHost(Ljava/lang/String;JJ)V

    .line 271
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xiaomi/smack/SocketConnection;->lastConnectedTime:J

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/xiaomi/smack/SocketConnection;->connectTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-nez v15, :cond_5

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 283
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " err:"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/stats/StatsHelper;->connectFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    if-eqz v2, :cond_4

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/network/Fallback;->failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 291
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 298
    .end local v3    # "currentHost":Ljava/lang/String;
    .end local v14    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v16    # "start":J
    :cond_5
    :goto_0
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/network/HostManager;->persist()V

    .line 300
    if-nez v15, :cond_9

    .line 301
    new-instance v4, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    .restart local v3    # "currentHost":Ljava/lang/String;
    .restart local v16    # "start":J
    :catch_0
    move-exception v11

    .line 275
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    if-nez v15, :cond_2

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 283
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " err:"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/stats/StatsHelper;->connectFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    if-eqz v2, :cond_6

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/network/Fallback;->failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 291
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 276
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 278
    .local v11, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "abnormal exception"

    invoke-direct {v4, v5, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    .line 279
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    if-nez v15, :cond_2

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 283
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " err:"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/stats/StatsHelper;->connectFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    if-eqz v2, :cond_7

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/network/Fallback;->failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 291
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 281
    .end local v11    # "e":Ljava/lang/Throwable;
    :cond_8
    throw v18

    .line 303
    .end local v3    # "currentHost":Ljava/lang/String;
    .end local v16    # "start":J
    :cond_9
    return-void

    .line 281
    .restart local v3    # "currentHost":Ljava/lang/String;
    .restart local v16    # "start":J
    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    if-nez v15, :cond_8

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK: Could not connect to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 283
    const-string v4, "SMACK: Could not connect to "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " err:"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-static {v3, v4}, Lcom/xiaomi/stats/StatsHelper;->connectFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    if-eqz v2, :cond_a

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/smack/SocketConnection;->failedException:Ljava/lang/Exception;

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/network/Fallback;->failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 291
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_0
.end method

.method private connectUsingConfiguration(Lcom/xiaomi/smack/ConnectionConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/xiaomi/smack/ConnectionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/xiaomi/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/smack/ConnectionConfiguration;->getPort()I

    move-result v1

    .line 217
    .local v1, "port":I
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/smack/SocketConnection;->connectDirectly(Ljava/lang/String;I)V

    .line 218
    return-void
.end method


# virtual methods
.method public batchSend([Lcom/xiaomi/slim/Blob;)V
    .locals 2
    .param p1, "blobs"    # [Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string v1, "Don\'t support send Blob"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/SocketConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/smack/SocketConnection;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    const-string v1, "WARNING: current xmpp has connected"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/smack/SocketConnection;->setConnectionStatus(IILjava/lang/Exception;)V

    .line 332
    iget-object v1, p0, Lcom/xiaomi/smack/SocketConnection;->config:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-direct {p0, v1}, Lcom/xiaomi/smack/SocketConnection;->connectUsingConfiguration(Lcom/xiaomi/smack/ConnectionConfiguration;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 354
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public disconnect(ILjava/lang/Exception;)V
    .locals 4
    .param p1, "reason"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/smack/SocketConnection;->shutdown(ILjava/lang/Exception;)V

    .line 162
    if-nez p2, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastConnectedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, p2}, Lcom/xiaomi/smack/SocketConnection;->sinkdownHost(Ljava/lang/Exception;)V

    .line 166
    :cond_1
    return-void
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xiaomi/smack/SocketConnection;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method getFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    .line 359
    .local v0, "fallback":Lcom/xiaomi/network/Fallback;
    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->isEffective()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Lcom/xiaomi/smack/SocketConnection$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smack/SocketConnection$3;-><init>(Lcom/xiaomi/smack/SocketConnection;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/smack/util/TaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 368
    :cond_0
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xiaomi/smack/SocketConnection;->connectedHost:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized initConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public notifyConnectionError(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/SocketConnection$2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/smack/SocketConnection$2;-><init>(Lcom/xiaomi/smack/SocketConnection;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 351
    return-void
.end method

.method public ping(Z)V
    .locals 6
    .param p1, "isPong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "current":J
    invoke-virtual {p0, p1}, Lcom/xiaomi/smack/SocketConnection;->sendPing(Z)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/smack/SocketConnection$1;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/xiaomi/smack/SocketConnection$1;-><init>(Lcom/xiaomi/smack/SocketConnection;IJ)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 117
    :cond_0
    return-void
.end method

.method protected abstract sendPing(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation
.end method

.method protected declared-synchronized shutdown(ILjava/lang/Exception;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x2

    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/SocketConnection;->getConnectionStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/smack/SocketConnection;->setConnectionStatus(IILjava/lang/Exception;)V

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/SocketConnection;->challenge:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :goto_1
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastPingSent:J

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastPingReceived:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected sinkdownHost(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/smack/SocketConnection;->lastConnectedTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/xiaomi/smack/SocketConnection;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget v1, p0, Lcom/xiaomi/smack/SocketConnection;->curShortConnCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/smack/SocketConnection;->curShortConnCount:I

    .line 173
    iget v1, p0, Lcom/xiaomi/smack/SocketConnection;->curShortConnCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/xiaomi/smack/SocketConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "failedHost":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max short conn time reached, sink down current host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 177
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/xiaomi/smack/SocketConnection;->sinkdownHost(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 178
    iput v6, p0, Lcom/xiaomi/smack/SocketConnection;->curShortConnCount:I

    .line 184
    .end local v0    # "failedHost":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iput v6, p0, Lcom/xiaomi/smack/SocketConnection;->curShortConnCount:I

    goto :goto_0
.end method

.method protected sinkdownHost(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cost"    # J
    .param p4, "e"    # Ljava/lang/Exception;

    .prologue
    .line 195
    invoke-static {}, Lcom/xiaomi/smack/ConnectionConfiguration;->getXmppServerHost()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "oriHost":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    .line 197
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    if-eqz v0, :cond_0

    .line 198
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/Fallback;->failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 199
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/network/HostManager;->persist()V

    .line 201
    :cond_0
    return-void
.end method

.method public updateLastReceived()V
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastPingReceived:J

    .line 377
    return-void
.end method

.method public updateLastSent()V
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/smack/SocketConnection;->lastPingSent:J

    .line 373
    return-void
.end method
