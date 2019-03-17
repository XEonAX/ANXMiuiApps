.class final Lcom/xiaomi/push/service/MIPushHelper;
.super Ljava/lang/Object;
.source "MIPushHelper.java"


# direct methods
.method static constructBlob(Lcom/xiaomi/push/service/MIPushAccount;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/slim/Blob;
    .locals 7
    .param p0, "account"    # Lcom/xiaomi/push/service/MIPushAccount;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lcom/xiaomi/slim/Blob;

    invoke-direct {v1}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 97
    .local v1, "blob":Lcom/xiaomi/slim/Blob;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 98
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/slim/Blob;->setFrom(Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Lcom/xiaomi/push/service/MIPushHelper;->getSourcePkgName(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/slim/Blob;->setPackageName(Ljava/lang/String;)V

    .line 100
    const-string v4, "SECMSG"

    const-string v5, "message"

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    .line 103
    .local v0, "accountStr":Ljava/lang/String;
    iget-object v4, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const/4 v5, 0x0

    const-string v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 104
    iget-object v4, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->target:Lcom/xiaomi/xmpush/thrift/Target;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/xmpush/thrift/Target;->resource:Ljava/lang/String;

    .line 106
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v3

    .line 107
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAccount;->security:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    .line 108
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/xiaomi/slim/Blob;->setPayloadType(S)V

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "try send mi push message. packagename:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "accountStr":Ljava/lang/String;
    .end local v1    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v3    # "payload":[B
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static constructBlob(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/slim/Blob;
    .locals 3
    .param p0, "service"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "payload"    # [B

    .prologue
    .line 121
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 123
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 124
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v2

    invoke-static {v2, p0, v0}, Lcom/xiaomi/push/service/MIPushHelper;->constructBlob(Lcom/xiaomi/push/service/MIPushAccount;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/slim/Blob;
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 127
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lorg/apache/thrift/TException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 127
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static contructAppAbsentMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 152
    .local v0, "message":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 153
    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 154
    invoke-static {}, Lcom/xiaomi/smack/packet/Packet;->nextID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 157
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/MIPushHelper;->generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    return-object v1
.end method

.method static generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;
    .param p3, "action"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/ActionType;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;"
        }
    .end annotation

    .prologue
    .line 133
    .line 134
    .local p2, "message":Lorg/apache/thrift/TBase;, "TT;"
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 135
    .local v1, "msgbytes":[B
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 136
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    new-instance v2, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 137
    .local v2, "target":Lcom/xiaomi/xmpush/thrift/Target;
    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 138
    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setTarget(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 140
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setPushAction(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 141
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setAction(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setIsRequest(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 143
    invoke-virtual {v0, p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setEncryptAction(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 145
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setAppid(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 146
    return-object v0
.end method

.method static getReceiverPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSourcePkgName(Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Ljava/lang/String;
    .locals 3
    .param p0, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->metaInfo:Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    const-string v2, "ext_traffic_source_pkg"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "sourcePkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    .end local v0    # "sourcePkgName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static prepareClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 1
    .param p0, "service"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "loginInfo"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->watch(Landroid/os/Messenger;)V

    .line 162
    new-instance v0, Lcom/xiaomi/push/service/MIPushHelper$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/MIPushHelper$2;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->addClientStatusListener(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;)V

    .line 175
    return-void
.end method

.method static prepareMIPushAccount(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 9
    .param p0, "service"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v5

    .line 38
    .local v5, "account":Lcom/xiaomi/push/service/MIPushAccount;
    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/MIPushAccount;->toClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 41
    .local v6, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-static {p0, v6}, Lcom/xiaomi/push/service/MIPushHelper;->prepareClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 42
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/PushClientsManager;->addActiveClient(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 45
    const v7, 0x2a300

    .line 46
    .local v7, "period":I
    invoke-static {p0}, Lcom/xiaomi/push/service/Sync;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/Sync;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/push/service/MIPushHelper$1;

    const-string v1, "GAID"

    const-wide/32 v2, 0x2a300

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/MIPushHelper$1;-><init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/MIPushAccount;)V

    invoke-virtual {v8, v0}, Lcom/xiaomi/push/service/Sync;->schedSync(Lcom/xiaomi/push/service/Sync$SyncJob;)V

    .line 71
    .end local v6    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v7    # "period":I
    :cond_0
    return-void
.end method

.method static sendPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 5
    .param p0, "service"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, p1, v4}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectUpStream(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;I)V

    .line 202
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getCurrentConnection()Lcom/xiaomi/smack/Connection;

    move-result-object v1

    .line 203
    .local v1, "conn":Lcom/xiaomi/smack/Connection;
    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v1}, Lcom/xiaomi/smack/Connection;->isBinaryConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lcom/xiaomi/push/service/MIPushHelper;->constructBlob(Lcom/xiaomi/push/service/MIPushAccount;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/slim/Blob;

    move-result-object v0

    .line 206
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/Connection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 215
    :cond_0
    return-void

    .line 210
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :cond_1
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    const-string v3, "Don\'t support XMPP connection."

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_2
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v3, "try send msg while connection is null."

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static sendPacket(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 4
    .param p0, "service"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectUpStream(Ljava/lang/String;Landroid/content/Context;[B)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getCurrentConnection()Lcom/xiaomi/smack/Connection;

    move-result-object v1

    .line 181
    .local v1, "conn":Lcom/xiaomi/smack/Connection;
    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {v1}, Lcom/xiaomi/smack/Connection;->isBinaryConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-static {p0, p2}, Lcom/xiaomi/push/service/MIPushHelper;->constructBlob(Lcom/xiaomi/push/service/XMPushService;[B)Lcom/xiaomi/slim/Blob;

    move-result-object v0

    .line 184
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/Connection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 197
    :goto_0
    return-void

    .line 189
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :cond_0
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    const-string v3, "Don\'t support XMPP connection."

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .restart local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :cond_1
    const v2, 0x42c1d83

    const-string v3, "not a valid message"

    invoke-static {p0, p1, p2, v2, v3}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :cond_2
    new-instance v2, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v3, "try send msg while connection is null."

    invoke-direct {v2, v3}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
