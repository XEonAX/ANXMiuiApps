.class public Lcom/xiaomi/push/service/PacketSync;
.super Ljava/lang/Object;
.source "PacketSync.java"


# instance fields
.field private mService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "service"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    .line 40
    return-void
.end method

.method private dispatchNetFlow(Lcom/xiaomi/slim/Blob;)V
    .locals 11
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;

    .prologue
    const/4 v4, 0x1

    .line 271
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getFullUserName()Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, "chid":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v9

    .line 277
    .local v9, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v9, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v9, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getSerializedSize()I

    move-result v2

    int-to-long v2, v2

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v5, v4

    .line 278
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/smack/util/TrafficUtils;->distributionTraffic(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    .line 282
    .end local v9    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_0
    return-void
.end method

.method private dispatchNetFlow(Lcom/xiaomi/smack/packet/Packet;)V
    .locals 11
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    const/4 v4, 0x1

    .line 257
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getTo()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "chid":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v9

    .line 263
    .local v9, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v9, :cond_0

    .line 264
    iget-object v0, p0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, v9, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/util/TrafficUtils;->getTrafficFlow(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v5, v4

    .line 264
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/smack/util/TrafficUtils;->distributionTraffic(Landroid/content/Context;Ljava/lang/String;JZZJ)V

    .line 268
    .end local v9    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_0
    return-void
.end method

.method private processRedirectMessage(Lcom/xiaomi/smack/packet/CommonPacketExtension;)V
    .locals 6
    .param p1, "exten"    # Lcom/xiaomi/smack/packet/CommonPacketExtension;

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->getText()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "hosts":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "splitedHosts":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/smack/ConnectionConfiguration;->getXmppServerHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    .line 289
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    if-eqz v0, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 290
    invoke-virtual {v0, v2}, Lcom/xiaomi/network/Fallback;->addPreferredHost([Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 292
    iget-object v3, p0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 295
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v2    # "splitedHosts":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleBlob(Lcom/xiaomi/slim/Blob;)V
    .locals 28
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v17

    .line 118
    .local v17, "cmd":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "chid":Ljava/lang/String;
    const-string v3, "SECMSG"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->hasErr()Z

    move-result v3

    if-nez v3, :cond_9

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->getClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v9, v0}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyPacketArrival(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/slim/Blob;)V

    .line 254
    .end local v9    # "chid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const-string v3, "PING"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v22

    .line 122
    .local v22, "payload":[B
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v3, v0

    if-lez v3, :cond_1

    .line 123
    invoke-static/range {v22 .. v22}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;

    move-result-object v23

    .line 124
    .local v23, "ping":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;
    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;->hasPsc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;->getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/ServiceConfig;->handle(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)V

    .line 132
    .end local v23    # "ping":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgPing;
    :cond_1
    const-string v3, "com.xiaomi.xmsf"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->sendPongIfNeed()V

    .line 136
    :cond_2
    const-string v3, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    const-string v3, "received a server ping"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 142
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->onPong()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-static {}, Lcom/xiaomi/stats/StatsHelper;->pingEnded()V

    goto :goto_1

    .line 143
    .end local v22    # "payload":[B
    :cond_4
    const-string v3, "SYNC"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 144
    const-string v3, "CONF"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getSubcmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v16

    .line 146
    .local v16, "cfg":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/ServiceConfig;->handle(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)V

    goto/16 :goto_0

    .line 147
    .end local v16    # "cfg":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    :cond_5
    const-string v3, "U"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getSubcmd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    move-result-object v20

    .line 149
    .local v20, "msgU":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/push/log/LogUploader;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/log/LogUploader;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    .line 150
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getStart()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getEnd()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getMaxlen()I

    move-result v8

    mul-int/lit16 v7, v8, 0x400

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getForce()Z

    move-result v8

    .line 149
    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/push/log/LogUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V

    .line 152
    new-instance v14, Lcom/xiaomi/slim/Blob;

    invoke-direct {v14}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 153
    .local v14, "ack":Lcom/xiaomi/slim/Blob;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UCA"

    invoke-virtual {v14, v3, v4}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/xiaomi/slim/Blob;->setPacketID(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v4, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v4, v5, v14}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 157
    .end local v14    # "ack":Lcom/xiaomi/slim/Blob;
    .end local v20    # "msgU":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    :cond_6
    const-string v3, "P"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getSubcmd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    move-result-object v19

    .line 160
    .local v19, "msgP":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    new-instance v14, Lcom/xiaomi/slim/Blob;

    invoke-direct {v14}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 161
    .restart local v14    # "ack":Lcom/xiaomi/slim/Blob;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PCA"

    invoke-virtual {v14, v3, v4}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/xiaomi/slim/Blob;->setPacketID(Ljava/lang/String;)V

    .line 164
    new-instance v22, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    invoke-direct/range {v22 .. v22}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;-><init>()V

    .line 165
    .local v22, "payload":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->hasCookie()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 166
    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->getCookie()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->setCookie(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    .line 168
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v4, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v4, v5, v14}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACK msgP: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v14    # "ack":Lcom/xiaomi/slim/Blob;
    .end local v19    # "msgP":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    .end local v22    # "payload":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    :cond_8
    const-string v3, "NOTIFY"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    move-result-object v21

    .line 174
    .local v21, "notify":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify by server err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getErrCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " desc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getErrStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    .end local v21    # "notify":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
    .restart local v9    # "chid":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recv SECMSG errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getErrCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getErrStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_a
    const-string v3, "BIND"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    move-result-object v15

    .line 189
    .local v15, "bindResp":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getFullUserName()Ljava/lang/String;

    move-result-object v24

    .line 191
    .local v24, "user":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    .line 192
    move-object/from16 v0, v24

    invoke-virtual {v3, v9, v0}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 193
    .local v2, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getResult()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMACK: channel bind succeeded, chid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 198
    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_b
    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorType()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "err":Ljava/lang/String;
    const-string v3, "auth"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 204
    const-string v3, "invalid-sig"

    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMACK: bind error invalid-sig token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 208
    const/4 v3, 0x0

    sget-object v4, Lcom/xiaomi/push/thrift/ChannelStatsType;->BIND_INVALID_SIG:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v5, v6, v8}, Lcom/xiaomi/stats/StatsHelper;->stats(IIILjava/lang/String;I)V

    .line 210
    :cond_c
    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v4, 0x1

    const/4 v5, 0x5

    .line 211
    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v9, v0}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_d
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMACK: channel bind failed, chid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_e
    const-string v3, "cancel"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 215
    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v4, 0x1

    const/4 v5, 0x7

    .line 216
    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v9, v0}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :cond_f
    const-string/jumbo v3, "wait"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/service/XMPushService;->scheduleRebindChannel(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 221
    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v4, 0x1

    const/4 v5, 0x7

    .line 222
    invoke-virtual {v15}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v2    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v7    # "err":Ljava/lang/String;
    .end local v15    # "bindResp":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .end local v24    # "user":Ljava/lang/String;
    :cond_10
    const-string v3, "KICK"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    move-result-object v18

    .line 229
    .local v18, "kick":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/slim/Blob;->getFullUserName()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "userId":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getType()Ljava/lang/String;

    move-result-object v13

    .line 232
    .local v13, "type":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getReason()Ljava/lang/String;

    move-result-object v12

    .line 233
    .local v12, "reason":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kicked by server, chid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v3, "wait"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 237
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 239
    .restart local v2    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v2, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/service/XMPushService;->scheduleRebindChannel(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 242
    sget-object v9, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .end local v9    # "chid":Ljava/lang/String;
    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v2    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .restart local v9    # "chid":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v11, 0x3

    invoke-virtual/range {v8 .. v13}, Lcom/xiaomi/push/service/XMPushService;->closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateClient(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBlobReceive(Lcom/xiaomi/slim/Blob;)V
    .locals 3
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;

    .prologue
    .line 101
    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->dispatchNetFlow(Lcom/xiaomi/slim/Blob;)V

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/PacketSync;->handleBlob(Lcom/xiaomi/slim/Blob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Blob chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packetid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPacketReceive(Lcom/xiaomi/smack/packet/Packet;)V
    .locals 16
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    .line 43
    const-string v2, "5"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/PacketSync;->dispatchNetFlow(Lcom/xiaomi/smack/packet/Packet;)V

    .line 48
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "chid":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const-string v8, "1"

    .line 52
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/xiaomi/smack/packet/Packet;->setChannelId(Ljava/lang/String;)V

    .line 56
    :cond_1
    const-string v2, "0"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received wrong packet with chid = 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 60
    :cond_2
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/xiaomi/smack/packet/IQ;

    if-eqz v2, :cond_5

    .line 61
    const-string v2, "kick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/xiaomi/smack/packet/Packet;->getExtension(Ljava/lang/String;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v13

    .line 62
    .local v13, "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    if-eqz v13, :cond_6

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/smack/packet/Packet;->getTo()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "userId":Ljava/lang/String;
    const-string/jumbo v2, "type"

    invoke-virtual {v13, v2}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "type":Ljava/lang/String;
    const-string v2, "reason"

    invoke-virtual {v13, v2}, Lcom/xiaomi/smack/packet/CommonPacketExtension;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kicked by server, chid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v2, "wait"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v1

    .line 73
    .local v1, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v1, :cond_3

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/service/XMPushService;->scheduleRebindChannel(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 76
    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v1    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v5    # "reason":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v13    # "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    :cond_3
    :goto_0
    return-void

    .line 81
    .restart local v5    # "reason":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v9    # "userId":Ljava/lang/String;
    .restart local v13    # "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v10, 0x3

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/xiaomi/push/service/XMPushService;->closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateClient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v5    # "reason":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v13    # "ext":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    :cond_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/xiaomi/smack/packet/Message;

    if-eqz v2, :cond_6

    move-object/from16 v15, p1

    .line 87
    check-cast v15, Lcom/xiaomi/smack/packet/Message;

    .line 88
    .local v15, "message":Lcom/xiaomi/smack/packet/Message;
    const-string v2, "redir"

    invoke-virtual {v15}, Lcom/xiaomi/smack/packet/Message;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    const-string v2, "hosts"

    invoke-virtual {v15, v2}, Lcom/xiaomi/smack/packet/Message;->getExtension(Ljava/lang/String;)Lcom/xiaomi/smack/packet/CommonPacketExtension;

    move-result-object v14

    .line 90
    .local v14, "exten":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    if-eqz v14, :cond_3

    .line 91
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/xiaomi/push/service/PacketSync;->processRedirectMessage(Lcom/xiaomi/smack/packet/CommonPacketExtension;)V

    goto :goto_0

    .line 97
    .end local v14    # "exten":Lcom/xiaomi/smack/packet/CommonPacketExtension;
    .end local v15    # "message":Lcom/xiaomi/smack/packet/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->getClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/push/service/PacketSync;->mService:Lcom/xiaomi/push/service/XMPushService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v8, v0}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyPacketArrival(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/Packet;)V

    goto :goto_0
.end method
