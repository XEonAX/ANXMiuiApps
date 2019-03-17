.class public Lcom/xiaomi/slim/SlimConnection;
.super Lcom/xiaomi/smack/SocketConnection;
.source "SlimConnection.java"


# instance fields
.field private mKey:[B

.field private mReader:Lcom/xiaomi/slim/BlobReader;

.field private mReaderThread:Ljava/lang/Thread;

.field private mWriter:Lcom/xiaomi/slim/BlobWriter;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V
    .locals 0
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "config"    # Lcom/xiaomi/smack/ConnectionConfiguration;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/SocketConnection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/slim/SlimConnection;)Lcom/xiaomi/slim/BlobReader;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/slim/SlimConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/slim/SlimConnection;->mReader:Lcom/xiaomi/slim/BlobReader;

    return-object v0
.end method

.method private getPing(Z)Lcom/xiaomi/slim/Blob;
    .locals 5
    .param p1, "isPong"    # Z

    .prologue
    .line 53
    new-instance v1, Lcom/xiaomi/slim/Ping;

    invoke-direct {v1}, Lcom/xiaomi/slim/Ping;-><init>()V

    .line 54
    .local v1, "ping":Lcom/xiaomi/slim/Ping;
    if-eqz p1, :cond_0

    .line 55
    const-string v3, "1"

    invoke-virtual {v1, v3}, Lcom/xiaomi/slim/Ping;->setPacketID(Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/xiaomi/stats/StatsHelper;->retriveStatsAsByte()[B

    move-result-object v2

    .line 59
    .local v2, "stats":[B
    if-eqz v2, :cond_1

    .line 60
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;-><init>()V

    .line 61
    .local v0, "body":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;
    invoke-static {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;->setStats(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;

    .line 62
    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/slim/Ping;->setPayload([BLjava/lang/String;)V

    .line 64
    .end local v0    # "body":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;
    :cond_1
    return-object v1
.end method

.method private initReaderAndWriter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    new-instance v1, Lcom/xiaomi/slim/BlobReader;

    iget-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/xiaomi/slim/BlobReader;-><init>(Ljava/io/InputStream;Lcom/xiaomi/slim/SlimConnection;)V

    iput-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mReader:Lcom/xiaomi/slim/BlobReader;

    .line 146
    new-instance v1, Lcom/xiaomi/slim/BlobWriter;

    iget-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/xiaomi/slim/BlobWriter;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/slim/SlimConnection;)V

    iput-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    .line 148
    new-instance v1, Lcom/xiaomi/slim/SlimConnection$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob Reader ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/slim/SlimConnection;->connectionCounterValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/slim/SlimConnection$1;-><init>(Lcom/xiaomi/slim/SlimConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mReaderThread:Ljava/lang/Thread;

    .line 158
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mReaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public batchSend([Lcom/xiaomi/slim/Blob;)V
    .locals 3
    .param p1, "blobs"    # [Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 115
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 116
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/SlimConnection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :cond_0
    return-void
.end method

.method public declared-synchronized bind(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/slim/SlimConnection;->getChallenge()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/slim/Binder;->bind(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Ljava/lang/String;Lcom/xiaomi/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getKey()[B
    .locals 5

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->mKey:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->challenge:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "uuid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/slim/SlimConnection;->challenge:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/slim/SlimConnection;->challenge:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "keySeed":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->challenge:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/RC4Cryption;->encrypt([B[B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->mKey:[B

    .line 49
    .end local v0    # "keySeed":Ljava/lang/String;
    .end local v1    # "uuid":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/slim/SlimConnection;->mKey:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 44
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized initConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/slim/SlimConnection;->initReaderAndWriter()V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    invoke-virtual {v0}, Lcom/xiaomi/slim/BlobWriter;->openStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBinaryConnection()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method notifyDataArrived(Lcom/xiaomi/slim/Blob;)V
    .locals 3
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->hasErr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] RCV blob chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getErrCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getErrStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 189
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v1

    if-nez v1, :cond_3

    .line 190
    const-string v1, "PING"

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] RCV ping id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/xiaomi/slim/SlimConnection;->updateLastReceived()V

    .line 200
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->recvListeners:Ljava/util/Map;

    .line 201
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/Connection$ListenerWrapper;

    .line 202
    .local v0, "listenerWrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/Connection$ListenerWrapper;->notifyListener(Lcom/xiaomi/slim/Blob;)V

    goto :goto_1

    .line 193
    .end local v0    # "listenerWrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    :cond_4
    const-string v1, "CLOSE"

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/slim/SlimConnection;->notifyConnectionError(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method notifyDataArrived(Lcom/xiaomi/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 175
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->recvListeners:Ljava/util/Map;

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 171
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/Connection$ListenerWrapper;

    .line 173
    .local v0, "listenerWrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/Connection$ListenerWrapper;->notifyListener(Lcom/xiaomi/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public send(Lcom/xiaomi/slim/Blob;)V
    .locals 11
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    if-eqz v0, :cond_1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/slim/BlobWriter;->write(Lcom/xiaomi/slim/Blob;)I

    move-result v10

    .line 211
    .local v10, "size":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/slim/SlimConnection;->writeAlive:J

    .line 213
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaomi/slim/SlimConnection;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 215
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/smack/util/TrafficUtils;->distributionTraffic(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/SlimConnection;->sendListeners:Ljava/util/Map;

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/smack/Connection$ListenerWrapper;

    .line 221
    .local v9, "listenerWrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    invoke-virtual {v9, p1}, Lcom/xiaomi/smack/Connection$ListenerWrapper;->notifyListener(Lcom/xiaomi/slim/Blob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v9    # "listenerWrapper":Lcom/xiaomi/smack/Connection$ListenerWrapper;
    .end local v10    # "size":I
    :catch_0
    move-exception v8

    .line 224
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    invoke-direct {v0, v8}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 227
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v2, "the writer is null."

    invoke-direct {v0, v2}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v10    # "size":I
    :cond_2
    return-void
.end method

.method public sendPacket(Lcom/xiaomi/smack/packet/Packet;)V
    .locals 1
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/SlimConnection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 123
    return-void
.end method

.method protected sendPing(Z)V
    .locals 3
    .param p1, "isPong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/xiaomi/slim/SlimConnection;->getPing(Z)Lcom/xiaomi/slim/Blob;

    move-result-object v0

    .line 71
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] SND ping id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/SlimConnection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaomi/slim/SlimConnection;->updateLastSent()V

    .line 77
    return-void

    .line 75
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :cond_0
    new-instance v1, Lcom/xiaomi/smack/XMPPException;

    const-string v2, "The BlobWriter is null."

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized shutdown(ILjava/lang/Exception;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mReader:Lcom/xiaomi/slim/BlobReader;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mReader:Lcom/xiaomi/slim/BlobReader;

    invoke-virtual {v1}, Lcom/xiaomi/slim/BlobReader;->shutdown()V

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mReader:Lcom/xiaomi/slim/BlobReader;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    invoke-virtual {v1}, Lcom/xiaomi/slim/BlobWriter;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mWriter:Lcom/xiaomi/slim/BlobWriter;

    .line 109
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/slim/SlimConnection;->mKey:[B

    .line 111
    invoke-super {p0, p1, p2}, Lcom/xiaomi/smack/SocketConnection;->shutdown(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/xiaomi/slim/Binder;->unbind(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
