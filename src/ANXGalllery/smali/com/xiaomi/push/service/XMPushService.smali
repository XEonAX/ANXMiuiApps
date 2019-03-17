.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMPushService$PingCallBack;,
        Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;,
        Lcom/xiaomi/push/service/XMPushService$PingJob;,
        Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;,
        Lcom/xiaomi/push/service/XMPushService$DisconnectJob;,
        Lcom/xiaomi/push/service/XMPushService$ConnectJob;,
        Lcom/xiaomi/push/service/XMPushService$UnbindJob;,
        Lcom/xiaomi/push/service/XMPushService$ReBindJob;,
        Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;,
        Lcom/xiaomi/push/service/XMPushService$BindJob;,
        Lcom/xiaomi/push/service/XMPushService$BlobReceiveJob;,
        Lcom/xiaomi/push/service/XMPushService$IntentJob;,
        Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;,
        Lcom/xiaomi/push/service/XMPushService$Job;,
        Lcom/xiaomi/push/service/XMPushService$KillJob;,
        Lcom/xiaomi/push/service/XMPushService$InitJob;
    }
.end annotation


# static fields
.field private static final PID:I

.field public static START_STICKY:I


# instance fields
.field private connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

.field private lastAlive:J

.field private mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

.field private mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

.field private mCurrentConnection:Lcom/xiaomi/smack/Connection;

.field private mExtremePowerModeObserver:Landroid/database/ContentObserver;

.field final mGeoReceiver:Landroid/content/BroadcastReceiver;

.field protected mJobClazz:Ljava/lang/Class;

.field private mJobController:Lcom/xiaomi/push/service/JobScheduler;

.field private mPacketListener:Lcom/xiaomi/smack/PacketListener;

.field private mPacketSync:Lcom/xiaomi/push/service/PacketSync;

.field private mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

.field private mRegion:Ljava/lang/String;

.field private mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

.field messenger:Landroid/os/Messenger;

.field private pingCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/XMPushService$PingCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/xiaomi/push/service/XMPushService;->PID:I

    .line 142
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "app.chat.xiaomi.net"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "42.62.94.2:443"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "114.54.23.2"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.13.142.2"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "app.chat.xiaomi.net"

    const-string v1, "111.206.200.2"

    invoke-static {v0, v1}, Lcom/xiaomi/network/HostManager;->addReservedHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    .line 137
    const-class v0, Lcom/xiaomi/push/service/XMJobService;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobClazz:Ljava/lang/Class;

    .line 155
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketSync:Lcom/xiaomi/push/service/PacketSync;

    .line 159
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    .line 161
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketListener:Lcom/xiaomi/smack/PacketListener;

    .line 423
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$8;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$8;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mGeoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/XMPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->updateAlarmTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connect()V

    return-void
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/xiaomi/push/service/XMPushService;->PID:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isExtremePowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/XMPushService;->updateGeoFenceState(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/ConnectionConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/Connection;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "x1"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->postOnCreate()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/JobScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketSync:Lcom/xiaomi/push/service/PacketSync;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastNetworkAvailable(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 1605
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    if-eqz p1, :cond_1

    .line 1607
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1615
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private canOpenForegroundService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2113
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2116
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->ForegroundServiceSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 2117
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static canShowGeoMessage(ILjava/lang/String;)Z
    .locals 2
    .param p0, "messageAction"    # I
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 508
    const-string v1, "Enter"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p0, v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    const-string v1, "Leave"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 514
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAlive(Z)V
    .locals 4
    .param p1, "isPong"    # Z

    .prologue
    const/4 v3, 0x1

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    .line 598
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 617
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 609
    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isReadAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 610
    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isWriteAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    :cond_1
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$PingJob;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$PingJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 614
    :cond_2
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 615
    invoke-virtual {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    goto :goto_0
.end method

.method private clearPingCallbacks()V
    .locals 2

    .prologue
    .line 2194
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2195
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2196
    monitor-exit v1

    .line 2197
    return-void

    .line 2196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeAllChannelByChid(Ljava/lang/String;I)V
    .locals 8
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "notifyType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1365
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 1366
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 1367
    .local v6, "loginInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-eqz v6, :cond_1

    .line 1368
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1369
    .local v2, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v2, :cond_0

    .line 1370
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$UnbindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 1374
    .end local v2    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateAllClientByChid(Ljava/lang/String;)V

    .line 1375
    return-void
.end method

.method private connect()V
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    const-string/jumbo v0, "try to connect while connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 1601
    :cond_0
    :goto_0
    return-void

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1588
    const-string/jumbo v0, "try to connect while is connected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/ConnectionConfiguration;->setConnectionPoint(Ljava/lang/String;)V

    .line 1594
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->connectBySlim()V

    .line 1596
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-nez v0, :cond_0

    .line 1598
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager;->notifyConnectionFailed(Landroid/content/Context;)V

    .line 1599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->broadcastNetworkAvailable(Z)V

    goto :goto_0
.end method

.method private connectBySlim()V
    .locals 4

    .prologue
    .line 1620
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketListener:Lcom/xiaomi/smack/PacketListener;

    new-instance v3, Lcom/xiaomi/push/service/XMPushService$13;

    invoke-direct {v3, p0}, Lcom/xiaomi/push/service/XMPushService$13;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/slim/SlimConnection;->addPacketListener(Lcom/xiaomi/smack/PacketListener;Lcom/xiaomi/smack/filter/PacketFilter;)V

    .line 1626
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v1}, Lcom/xiaomi/slim/SlimConnection;->connect()V

    .line 1628
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :goto_0
    return-void

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    const-string v1, "fail to create Slim connection"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1631
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/slim/SlimConnection;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private doAWLogic(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1137
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/PushLayerProcessIml;

    invoke-direct {v1}, Lcom/xiaomi/push/service/PushLayerProcessIml;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setSendDataIml(Lcom/xiaomi/push/service/awake/module/IProcessData;)V

    .line 1138
    const-string v0, "mipush_app_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1139
    .local v4, "packageName":Ljava/lang/String;
    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 1140
    .local v6, "bytes":[B
    if-nez v6, :cond_1

    .line 1166
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "bytes":[B
    :cond_0
    :goto_0
    return-void

    .line 1143
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "bytes":[B
    :cond_1
    new-instance v10, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v10}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 1144
    .local v10, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {v10, v6}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1145
    invoke-virtual {v10}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 1146
    .local v5, "appId":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v9

    .line 1147
    .local v9, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1148
    .local v3, "cmdId":I
    if-eqz v9, :cond_0

    .line 1149
    const-string v0, "extra_help_aw_info"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1150
    .local v2, "awkInfo":Ljava/lang/String;
    const-string v0, "extra_aw_app_online_cmd"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1151
    .local v7, "cmd":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1157
    :goto_1
    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    move-object v1, p0

    .line 1159
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->wakeup(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1163
    .end local v2    # "awkInfo":Ljava/lang/String;
    .end local v3    # "cmdId":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "appId":Ljava/lang/String;
    .end local v6    # "bytes":[B
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v9    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :catch_0
    move-exception v8

    .line 1164
    .local v8, "e":Lorg/apache/thrift/TException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aw_logic: translate fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/thrift/TException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    .end local v8    # "e":Lorg/apache/thrift/TException;
    .restart local v2    # "awkInfo":Ljava/lang/String;
    .restart local v3    # "cmdId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "appId":Ljava/lang/String;
    .restart local v6    # "bytes":[B
    .restart local v7    # "cmd":Ljava/lang/String;
    .restart local v9    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :catch_1
    move-exception v8

    .line 1155
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private doAWPingCMD(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "frequency"    # I

    .prologue
    .line 1181
    const-string v4, "mipush_payload"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 1182
    .local v2, "payload":[B
    const-string v4, "com.xiaomi.mipush.MESSAGE_CACHE"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1183
    .local v1, "isCache":Z
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 1186
    .local v3, "xmPushActionNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :try_start_0
    invoke-static {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1188
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/push/service/AwakeAppPingJob;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v3, v6, v1}, Lcom/xiaomi/push/service/AwakeAppPingJob;-><init>(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Ljava/lang/ref/WeakReference;Z)V

    .line 1189
    invoke-virtual {v4, v5, p2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :goto_0
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Lorg/apache/thrift/TException;
    const-string v4, "aw_ping : send help app ping  error"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableForegroundService()V
    .locals 3

    .prologue
    .line 2121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 2122
    sget v0, Lcom/xiaomi/push/service/XMPushService;->PID:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->startForeground(ILandroid/app/Notification;)V

    .line 2145
    :goto_0
    return-void

    .line 2126
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mJobClazz:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$15;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMPushService$15;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private ensureRegionAvaible()Ljava/lang/String;
    .locals 10

    .prologue
    .line 325
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/ThreadUtils;->checkNotUIThread()V

    .line 326
    const/4 v3, 0x0

    .line 327
    .local v3, "region":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 328
    .local v4, "start":J
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 330
    .local v6, "wait":Ljava/lang/Object;
    const-string v7, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 331
    invoke-static {p0}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v2

    .line 332
    .local v2, "provision":Lcom/xiaomi/push/service/PushProvision;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/push/service/PushProvision;->getProvisioned()I

    move-result v7

    if-nez v7, :cond_3

    .line 333
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    const-string v7, "ro.miui.region"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    const-string v7, "ro.product.locale.region"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    :cond_1
    :try_start_0
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 342
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :catch_0
    move-exception v7

    goto :goto_0

    .line 347
    .end local v2    # "provision":Lcom/xiaomi/push/service/PushProvision;
    :cond_2
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 350
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 351
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->getRegion(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/Region;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 354
    .local v0, "cost":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wait region :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 355
    return-object v3
.end method

.method private executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V
    .locals 1
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler;->executeJobNow(Lcom/xiaomi/push/service/JobScheduler$Job;)V

    .line 1397
    return-void
.end method

.method public static getPushServiceNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2149
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2150
    .local v2, "intent":Landroid/content/Intent;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 2151
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2152
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2153
    const-string v6, "Push Service"

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2154
    const-string v6, "Push Service"

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2155
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2156
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 2166
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_0
    return-object v4

    .line 2158
    :cond_0
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 2159
    .local v4, "notification":Landroid/app/Notification;
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2161
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "setLatestEventInfo"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2162
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const-string v8, "Push Service"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "Push Service"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2163
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2164
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 65
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 728
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v51

    .line 730
    .local v51, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 733
    :cond_0
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 734
    .local v8, "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 735
    .local v59, "security":Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 737
    const-string v4, "security is empty. ignore."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1128
    .end local v8    # "chid":Ljava/lang/String;
    .end local v59    # "security":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 738
    .restart local v8    # "chid":Ljava/lang/String;
    .restart local v59    # "security":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_8

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/push/service/XMPushService;->shouldRebind(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v47

    .line 741
    .local v47, "needRebind":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/xiaomi/push/service/XMPushService;->updatePushClient(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 743
    .local v6, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 747
    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_4

    .line 748
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$BindJob;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 750
    :cond_4
    if-eqz v47, :cond_5

    .line 754
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ReBindJob;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/xiaomi/push/service/XMPushService$ReBindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 755
    :cond_5
    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_6

    .line 757
    const-string/jumbo v4, "the client is binding. %1$s %2$s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v10, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    aput-object v10, v5, v7

    const/4 v7, 0x1

    iget-object v10, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    .line 758
    invoke-static {v10}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    .line 757
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_6
    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_1

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 766
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    goto/16 :goto_0

    .line 770
    .end local v6    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v47    # "needRebind":Z
    :cond_8
    const-string v4, "channel id is empty, do nothing!"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 772
    .end local v8    # "chid":Ljava/lang/String;
    .end local v59    # "security":Ljava/lang/String;
    :cond_9
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 773
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 774
    .local v57, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 775
    .restart local v8    # "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 776
    .local v9, "userId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service called close channel chid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 778
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 780
    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 781
    .local v39, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 782
    .local v38, "id":Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/push/service/XMPushService;->closeAllChannelByChid(Ljava/lang/String;I)V

    goto :goto_1

    .line 785
    .end local v38    # "id":Ljava/lang/String;
    .end local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 786
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/xiaomi/push/service/XMPushService;->closeAllChannelByChid(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 788
    :cond_b
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/xiaomi/push/service/XMPushService;->closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    .end local v8    # "chid":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v57    # "pkgName":Ljava/lang/String;
    :cond_c
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 793
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 794
    :cond_d
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 795
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->sendMessages(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 796
    :cond_e
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 797
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 798
    .restart local v57    # "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 799
    .local v60, "session":Ljava/lang/String;
    const-string v4, "ext_packet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v46

    .line 801
    .local v46, "msgBundle":Landroid/os/Bundle;
    new-instance v41, Lcom/xiaomi/smack/packet/IQ;

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/IQ;-><init>(Landroid/os/Bundle;)V

    .line 802
    .local v41, "iq":Lcom/xiaomi/smack/packet/IQ;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v57

    move-object/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v48

    .line 803
    .local v48, "newPacket":Lcom/xiaomi/smack/packet/Packet;
    if-eqz v48, :cond_1

    .line 804
    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v45

    .line 805
    .local v45, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-static {v0, v4}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v22

    .line 806
    .local v22, "blob":Lcom/xiaomi/slim/Blob;
    new-instance v4, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 808
    .end local v22    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v41    # "iq":Lcom/xiaomi/smack/packet/IQ;
    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v46    # "msgBundle":Landroid/os/Bundle;
    .end local v48    # "newPacket":Lcom/xiaomi/smack/packet/Packet;
    .end local v57    # "pkgName":Ljava/lang/String;
    .end local v60    # "session":Ljava/lang/String;
    :cond_f
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 809
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 810
    .restart local v57    # "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 811
    .restart local v60    # "session":Ljava/lang/String;
    const-string v4, "ext_packet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v46

    .line 813
    .restart local v46    # "msgBundle":Landroid/os/Bundle;
    new-instance v58, Lcom/xiaomi/smack/packet/Presence;

    move-object/from16 v0, v58

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/Presence;-><init>(Landroid/os/Bundle;)V

    .line 814
    .local v58, "pres":Lcom/xiaomi/smack/packet/Presence;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v57

    move-object/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v48

    .line 815
    .restart local v48    # "newPacket":Lcom/xiaomi/smack/packet/Packet;
    if-eqz v48, :cond_1

    .line 816
    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v48 .. v48}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v45

    .line 817
    .restart local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-static {v0, v4}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v22

    .line 818
    .restart local v22    # "blob":Lcom/xiaomi/slim/Blob;
    new-instance v4, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 820
    .end local v22    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v46    # "msgBundle":Landroid/os/Bundle;
    .end local v48    # "newPacket":Lcom/xiaomi/smack/packet/Packet;
    .end local v57    # "pkgName":Ljava/lang/String;
    .end local v58    # "pres":Lcom/xiaomi/smack/packet/Presence;
    .end local v60    # "session":Ljava/lang/String;
    :cond_10
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 821
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 822
    .restart local v8    # "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 823
    .restart local v9    # "userId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request reset connection from chid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 825
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 826
    .restart local v6    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v6, :cond_1

    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_1

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getCurrentConnection()Lcom/xiaomi/smack/Connection;

    move-result-object v26

    .line 830
    .local v26, "conn":Lcom/xiaomi/smack/Connection;
    if-eqz v26, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3a98

    sub-long/2addr v4, v10

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/smack/Connection;->isReadAlive(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 831
    :cond_11
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 835
    .end local v6    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v8    # "chid":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v26    # "conn":Lcom/xiaomi/smack/Connection;
    :cond_12
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 836
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 837
    .restart local v57    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 838
    .restart local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open channel should be called first before update info, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 844
    :cond_13
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 845
    .restart local v8    # "chid":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 846
    .restart local v9    # "userId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 848
    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "chid":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 850
    .restart local v8    # "chid":Ljava/lang/String;
    :cond_14
    const/16 v45, 0x0

    .line 851
    .restart local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 853
    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v40

    .line 854
    .local v40, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-eqz v40, :cond_15

    invoke-interface/range {v40 .. v40}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 855
    invoke-interface/range {v40 .. v40}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    check-cast v45, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 860
    .end local v40    # "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    .restart local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_15
    :goto_2
    if-eqz v45, :cond_1

    .line 861
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 862
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    .line 864
    :cond_16
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 865
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    goto/16 :goto_0

    .line 858
    :cond_17
    move-object/from16 v0, v51

    invoke-virtual {v0, v8, v9}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v45

    goto :goto_2

    .line 868
    .end local v8    # "chid":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v57    # "pkgName":Ljava/lang/String;
    :cond_18
    const-string v4, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushProvision;->checkProvisioned()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/PushProvision;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/PushProvision;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushProvision;->getProvisioned()I

    move-result v4

    if-nez v4, :cond_19

    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register without being provisioned. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mipush_app_package"

    .line 873
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 872
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_19
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 878
    .local v14, "payload":[B
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 879
    .local v15, "packageName":Ljava/lang/String;
    const-string v4, "mipush_env_chanage"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    .line 880
    .local v43, "isEnvChanage":Z
    const-string v4, "mipush_env_type"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 881
    .local v13, "envType":I
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->removeUnRegisteredPkg(Ljava/lang/String;)V

    .line 882
    if-eqz v43, :cond_1a

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 883
    new-instance v10, Lcom/xiaomi/push/service/XMPushService$9;

    const/16 v12, 0xe

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/xiaomi/push/service/XMPushService$9;-><init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto/16 :goto_0

    .line 900
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/xiaomi/push/service/XMPushService;->registerForMiPushApp([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 902
    .end local v13    # "envType":I
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v43    # "isEnvChanage":Z
    :cond_1b
    const-string v4, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 904
    :cond_1c
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 905
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 906
    .restart local v14    # "payload":[B
    const-string v4, "com.xiaomi.mipush.MESSAGE_CACHE"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v42

    .line 907
    .local v42, "isCache":Z
    const-string v4, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 908
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->addUnRegisteredPkg(Ljava/lang/String;)V

    .line 910
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v15, v14, v1}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Ljava/lang/String;[BZ)V

    goto/16 :goto_0

    .line 911
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v42    # "isCache":Z
    :cond_1e
    sget-object v4, Lcom/xiaomi/push/service/PushServiceConstants;->ACTION_UNINSTALL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 913
    const-string/jumbo v4, "uninstall_pkg_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 914
    .restart local v57    # "pkgName":Ljava/lang/String;
    if-eqz v57, :cond_1

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 918
    const/16 v64, 0x0

    .line 920
    .local v64, "uninstalled":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_3
    const-string v4, "com.xiaomi.channel"

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 926
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz v64, :cond_1f

    .line 928
    const-string v4, "1"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->closeAllChannelByChid(Ljava/lang/String;I)V

    .line 929
    const-string v4, "close the miliao channel as the app is uninstalled."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    :catch_0
    move-exception v28

    .line 922
    .local v28, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v64, 0x1

    goto :goto_3

    .line 933
    .end local v28    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1f
    const-string v4, "pref_registered_pkg_names"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v62

    .line 935
    .local v62, "sp":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v57

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 937
    .local v19, "appId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v64, :cond_1

    .line 939
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    .line 940
    .local v29, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 941
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->hasLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)V

    .line 946
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 949
    if-eqz v19, :cond_1

    .line 951
    :try_start_1
    move-object/from16 v0, v57

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushHelper;->contructAppAbsentMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uninstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg sent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 953
    :catch_1
    move-exception v28

    .line 954
    .local v28, "e":Lcom/xiaomi/smack/XMPPException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to send Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/xiaomi/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 955
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 960
    .end local v19    # "appId":Ljava/lang/String;
    .end local v28    # "e":Lcom/xiaomi/smack/XMPPException;
    .end local v29    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v57    # "pkgName":Ljava/lang/String;
    .end local v62    # "sp":Landroid/content/SharedPreferences;
    .end local v64    # "uninstalled":Z
    :cond_21
    const-string v4, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 961
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 962
    .local v56, "pkg":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_ID:Ljava/lang/String;

    const/4 v5, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    .line 963
    .local v49, "notifyId":I
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 964
    const/4 v4, -0x1

    move/from16 v0, v49

    if-lt v0, v4, :cond_22

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 967
    :cond_22
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TITLE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 968
    .local v63, "title":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_DESCRIPTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 969
    .local v27, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v63

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    .end local v27    # "description":Ljava/lang/String;
    .end local v49    # "notifyId":I
    .end local v56    # "pkg":Ljava/lang/String;
    .end local v63    # "title":Ljava/lang/String;
    :cond_23
    const-string v4, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 973
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 974
    .restart local v56    # "pkg":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SIG:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 975
    .local v61, "sig":Ljava/lang/String;
    const/16 v50, 0x0

    .line 976
    .local v50, "notifyType":I
    const/16 v24, 0x0

    .line 977
    .local v24, "clearType":Z
    const/16 v23, 0x0

    .line 978
    .local v23, "calSig":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TYPE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 979
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TYPE:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v50

    .line 980
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 985
    :goto_4
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, v61

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 986
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    :cond_25
    invoke-static/range {v56 .. v56}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 983
    const/16 v24, 0x1

    goto :goto_4

    .line 988
    :cond_26
    if-eqz v24, :cond_27

    .line 989
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->clearLocalNotifyType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 991
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushNotificationHelper;->setLocalNotifyType(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 994
    .end local v23    # "calSig":Ljava/lang/String;
    .end local v24    # "clearType":Z
    .end local v50    # "notifyType":I
    .end local v56    # "pkg":Ljava/lang/String;
    .end local v61    # "sig":Ljava/lang/String;
    :cond_28
    const-string v4, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 996
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 997
    .restart local v15    # "packageName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 998
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->addDisablePushPkg(Ljava/lang/String;)V

    .line 1000
    :cond_29
    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    if-eqz v4, :cond_2a

    .line 1003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1004
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    .line 1007
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/JobScheduler;->removeAllJobs()V

    .line 1009
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$10;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/xiaomi/push/service/XMPushService$10;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1024
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushClientsManager;->removeAllClientChangeListeners()V

    .line 1025
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 1026
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/PushClientsManager;->removeActiveClients()V

    .line 1027
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/ServiceConfig;->clear()V

    .line 1028
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    goto/16 :goto_0

    .line 1030
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_2b
    const-string v4, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1032
    :cond_2c
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1033
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 1034
    .restart local v14    # "payload":[B
    const-string v4, "mipush_app_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1035
    .restart local v19    # "appId":Ljava/lang/String;
    const-string v4, "mipush_app_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1036
    .local v20, "appToken":Ljava/lang/String;
    const-string v4, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1037
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->addDisablePushPkgCache(Ljava/lang/String;)V

    .line 1039
    :cond_2d
    const-string v4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1040
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->removeDisablePushPkg(Ljava/lang/String;)V

    .line 1041
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/xiaomi/push/service/MIPushAppInfo;->removeDisablePushPkgCache(Ljava/lang/String;)V

    .line 1043
    :cond_2e
    if-nez v14, :cond_2f

    .line 1044
    const v4, 0x42c1d83

    const-string v5, "null payload"

    move-object/from16 v0, p0

    invoke-static {v0, v15, v14, v4, v5}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    :cond_2f
    invoke-static {v15, v14}, Lcom/xiaomi/push/service/MIPushClientManager;->addPendingMessages(Ljava/lang/String;[B)V

    .line 1048
    new-instance v16, Lcom/xiaomi/push/service/MIPushAppRegisterJob;

    move-object/from16 v17, p0

    move-object/from16 v18, v15

    move-object/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Lcom/xiaomi/push/service/MIPushAppRegisterJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1049
    const-string v4, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    if-nez v4, :cond_1

    .line 1051
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    .line 1052
    new-instance v36, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v36, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1057
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v19    # "appId":Ljava/lang/String;
    .end local v20    # "appToken":Ljava/lang/String;
    .end local v36    # "filter":Landroid/content/IntentFilter;
    :cond_30
    const-string v4, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1058
    const-string v4, "mipush_app_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1059
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string v4, "mipush_payload"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 1060
    .restart local v14    # "payload":[B
    new-instance v44, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct/range {v44 .. v44}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 1062
    .local v44, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :try_start_2
    move-object/from16 v0, v44

    invoke-static {v0, v14}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1063
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/tinyData/TinyDataManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/tinyData/TinyDataManager;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v15}, Lcom/xiaomi/tinyData/TinyDataManager;->upload(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1064
    :catch_2
    move-exception v28

    .line 1065
    .local v28, "e":Lorg/apache/thrift/TException;
    invoke-static/range {v28 .. v28}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1067
    .end local v14    # "payload":[B
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v28    # "e":Lorg/apache/thrift/TException;
    .end local v44    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :cond_31
    const-string v4, "com.xiaomi.push.timer"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1068
    const-string v4, "Service called on timer"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1069
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/xiaomi/push/service/timers/Alarm;->registerPing(Z)V

    .line 1070
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->shouldCheckAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1071
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    goto/16 :goto_0

    .line 1073
    :cond_32
    const-string v4, "com.xiaomi.push.check_alive"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1074
    const-string v4, "Service called on check alive."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->shouldCheckAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    goto/16 :goto_0

    .line 1078
    :cond_33
    const-string v4, "com.xiaomi.mipush.thirdparty"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1079
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on thirdpart push :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.xiaomi.mipush.thirdparty_DESC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1080
    const-string v4, "com.xiaomi.mipush.thirdparty_LEVEL"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/push/service/timers/Alarm;->changePolicy(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1081
    :cond_34
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->networkChanged()V

    goto/16 :goto_0

    .line 1083
    :cond_35
    const-string v4, "action_cr_config"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1084
    const-string v4, "action_cr_event_switch"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1086
    .local v31, "eventSwitch":Z
    const-string v4, "action_cr_event_frequency"

    const-wide/32 v10, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v32

    .line 1088
    .local v32, "eventFrequency":J
    const-string v4, "action_cr_perf_switch"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v54

    .line 1090
    .local v54, "perfSwitch":Z
    const-string v4, "action_cr_perf_frequency"

    const-wide/32 v10, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v52

    .line 1092
    .local v52, "perfFrequency":J
    const-string v4, "action_cr_event_en"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1094
    .local v30, "eventEncrypted":Z
    const-string v4, "action_cr_max_file_size"

    const-wide/32 v10, 0x100000

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    .line 1096
    .local v34, "fileLength":J
    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1097
    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1098
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1099
    move-wide/from16 v0, v52

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/clientreport/data/Config$Builder;->setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1101
    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    .line 1102
    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setMaxFileLength(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v25

    .line 1104
    .local v25, "config":Lcom/xiaomi/clientreport/data/Config;
    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v52, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_1

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->initEventPerfLogic(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V

    goto/16 :goto_0

    .line 1108
    .end local v25    # "config":Lcom/xiaomi/clientreport/data/Config;
    .end local v30    # "eventEncrypted":Z
    .end local v31    # "eventSwitch":Z
    .end local v32    # "eventFrequency":J
    .end local v34    # "fileLength":J
    .end local v52    # "perfFrequency":J
    .end local v54    # "perfSwitch":Z
    :cond_36
    const-string v4, "action_help_ping"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1110
    const-string v4, "extra_help_ping_switch"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v55

    .line 1111
    .local v55, "pingSwitch":Z
    const-string v4, "extra_help_ping_frequency"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 1112
    .local v37, "frequency":I
    if-ltz v37, :cond_37

    const/16 v4, 0x1e

    move/from16 v0, v37

    if-ge v0, v4, :cond_37

    .line 1113
    const-string v4, "aw_ping: frquency need > 30s."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 1114
    const/16 v37, 0x1e

    .line 1116
    :cond_37
    if-gez v37, :cond_38

    .line 1117
    const/16 v55, 0x0

    .line 1120
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aw_ping: receive a aw_ping message. switch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frequency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1121
    if-eqz v55, :cond_1

    if-lez v37, :cond_1

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->doAWPingCMD(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1124
    .end local v37    # "frequency":I
    .end local v55    # "pingSwitch":Z
    :cond_39
    const-string v4, "action_aw_app_logic"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1125
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->doAWLogic(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private isExtremePowerSaveMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1528
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1529
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1531
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1529
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1531
    goto :goto_0
.end method

.method private isPushEnabled()Z
    .locals 2

    .prologue
    .line 1548
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1549
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAppInfo;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAppInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/MIPushAppInfo;->isPushDisabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1548
    :goto_0
    return v0

    .line 1549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private networkChanged()V
    .locals 7

    .prologue
    .line 524
    const/4 v1, 0x0

    .line 526
    .local v1, "currentNetworkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 527
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 532
    :goto_0
    if-eqz v1, :cond_1

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], state: "

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network changed,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 540
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 569
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_1
    return-void

    .line 528
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 544
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "network changed, no active network"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 547
    :cond_2
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 548
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/StatsContext;->statsChannelIfNeed()V

    .line 551
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->notifyNetworkChanage(Landroid/content/Context;)V

    .line 553
    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v4}, Lcom/xiaomi/slim/SlimConnection;->clearCachedStatus()V

    .line 554
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 555
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 556
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->shouldCheckAlive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 557
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    .line 560
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 561
    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/JobScheduler;->removeJobs(I)V

    .line 562
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$ConnectJob;

    invoke-direct {v4, p0}, Lcom/xiaomi/push/service/XMPushService$ConnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 564
    :cond_5
    invoke-static {p0}, Lcom/xiaomi/push/log/LogUploader;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/log/LogUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/log/LogUploader;->checkUpload()V

    .line 568
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->updateAlarmTimer()V

    goto :goto_1

    .line 566
    :cond_6
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_2
.end method

.method private postOnCreate()V
    .locals 7

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/push/service/AppRegionStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/AppRegionStorage;

    move-result-object v3

    .line 360
    .local v3, "store":Lcom/xiaomi/push/service/AppRegionStorage;
    invoke-virtual {v3}, Lcom/xiaomi/push/service/AppRegionStorage;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "appRegion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->ensureRegionAvaible()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 367
    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    .line 368
    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/AppRegionStorage;->setRegion(Ljava/lang/String;)V

    .line 370
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    const-string v4, "app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    .line 383
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$6;

    const/16 v4, 0xb

    invoke-direct {v2, p0, v4}, Lcom/xiaomi/push/service/XMPushService$6;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    .line 398
    .local v2, "job":Lcom/xiaomi/push/service/XMPushService$Job;
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 400
    new-instance v4, Lcom/xiaomi/push/service/XMPushService$7;

    invoke-direct {v4, p0, v2}, Lcom/xiaomi/push/service/XMPushService$7;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/XMPushService$Job;)V

    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushAccountUtils;->setAccountChangeListener(Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;)V

    .line 409
    .end local v2    # "job":Lcom/xiaomi/push/service/XMPushService$Job;
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/push/service/GeoFenceDBCleaner;

    invoke-direct {v5, p0}, Lcom/xiaomi/push/service/GeoFenceDBCleaner;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const v6, 0x15180

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z

    .line 414
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isBootCompleted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    invoke-virtual {v4, p0}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyServiceStarted(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_3
    :goto_1
    return-void

    .line 372
    :cond_4
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 373
    const-string v4, "fr.app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_5
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->Russia:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 375
    const-string v4, "ru.app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_6
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->India:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    const-string v4, "idmb.app.chat.global.xiaomi.net"

    invoke-static {v4}, Lcom/xiaomi/smack/ConnectionConfiguration;->setXmppServerHost(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_7
    sget-object v4, Lcom/xiaomi/channel/commonutils/android/Region;->China:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v4}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->mRegion:Ljava/lang/String;

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;
    .locals 6
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "session"    # Ljava/lang/String;

    .prologue
    .line 1274
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    .line 1275
    .local v3, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    invoke-virtual {v3, p2}, Lcom/xiaomi/push/service/PushClientsManager;->queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1276
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open channel should be called first before sending a packet, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1303
    :goto_0
    const/4 p1, 0x0

    .end local p1    # "packet":Lcom/xiaomi/smack/packet/Packet;
    :cond_0
    return-object p1

    .line 1281
    .restart local p1    # "packet":Lcom/xiaomi/smack/packet/Packet;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaomi/smack/packet/Packet;->setPackageName(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "chid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1285
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1286
    .restart local v0    # "chid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/xiaomi/smack/packet/Packet;->setChannelId(Ljava/lang/String;)V

    .line 1288
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 1289
    .local v2, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop a packet as the channel is not connected, chid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1292
    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v4, v5, :cond_5

    .line 1295
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop a packet as the channel is not opened, chid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    :cond_5
    iget-object v4, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid session. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMessage(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 657
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 658
    .local v13, "pkgName":Ljava/lang/String;
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 659
    .local v16, "session":Ljava/lang/String;
    const/4 v4, 0x0

    .line 661
    .local v4, "blob":Lcom/xiaomi/slim/Blob;
    const-string v17, "ext_packet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 662
    .local v10, "msgBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v12

    .line 664
    .local v12, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    if-eqz v10, :cond_3

    .line 665
    new-instance v9, Lcom/xiaomi/smack/packet/Message;

    invoke-direct {v9, v10}, Lcom/xiaomi/smack/packet/Message;-><init>(Landroid/os/Bundle;)V

    .line 666
    .local v9, "msg":Lcom/xiaomi/smack/packet/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v13, v1}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v11

    check-cast v11, Lcom/xiaomi/smack/packet/Message;

    .line 668
    .local v11, "packet":Lcom/xiaomi/smack/packet/Message;
    if-nez v11, :cond_1

    .line 699
    .end local v9    # "msg":Lcom/xiaomi/smack/packet/Message;
    .end local v11    # "packet":Lcom/xiaomi/smack/packet/Message;
    :cond_0
    :goto_0
    return-void

    .line 671
    .restart local v9    # "msg":Lcom/xiaomi/smack/packet/Message;
    .restart local v11    # "packet":Lcom/xiaomi/smack/packet/Message;
    :cond_1
    invoke-virtual {v11}, Lcom/xiaomi/smack/packet/Message;->getChannelId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Lcom/xiaomi/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v8

    .line 672
    .local v8, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v0, v8, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v4

    .line 696
    .end local v8    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v9    # "msg":Lcom/xiaomi/smack/packet/Message;
    .end local v11    # "packet":Lcom/xiaomi/smack/packet/Message;
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 697
    new-instance v17, Lcom/xiaomi/push/service/SendMessageJob;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/push/service/SendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 674
    :cond_3
    const-string v17, "ext_raw_packet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 675
    .local v14, "rawMsg":[B
    if-eqz v14, :cond_2

    .line 676
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 677
    .local v6, "from":J
    sget-object v17, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_RES:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 678
    .local v15, "res":Ljava/lang/String;
    const-string v17, "ext_chid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, "chid":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v5, v0}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v8

    .line 681
    .restart local v8    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v8, :cond_2

    .line 682
    new-instance v4, Lcom/xiaomi/slim/Blob;

    .end local v4    # "blob":Lcom/xiaomi/slim/Blob;
    invoke-direct {v4}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 684
    .restart local v4    # "blob":Lcom/xiaomi/slim/Blob;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_2
    const-string v17, "SECMSG"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v17, "xiaomi.com"

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v7, v0, v15}, Lcom/xiaomi/slim/Blob;->setFrom(JLjava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v17, "ext_pkt_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/xiaomi/slim/Blob;->setPacketID(Ljava/lang/String;)V

    .line 691
    iget-object v0, v8, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 685
    :catch_0
    move-exception v17

    goto :goto_2
.end method

.method private sendMessages(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 702
    sget-object v10, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 703
    .local v8, "pkgName":Ljava/lang/String;
    sget-object v10, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 704
    .local v9, "session":Ljava/lang/String;
    const-string v10, "ext_packets"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 705
    .local v6, "msgParcelable":[Landroid/os/Parcelable;
    array-length v10, v6

    new-array v4, v10, [Lcom/xiaomi/smack/packet/Message;

    .line 706
    .local v4, "messages":[Lcom/xiaomi/smack/packet/Message;
    const-string v10, "ext_encrypt"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 707
    .local v1, "encrypt":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v6

    if-ge v2, v10, :cond_1

    .line 708
    new-instance v11, Lcom/xiaomi/smack/packet/Message;

    aget-object v10, v6, v2

    check-cast v10, Landroid/os/Bundle;

    invoke-direct {v11, v10}, Lcom/xiaomi/smack/packet/Message;-><init>(Landroid/os/Bundle;)V

    aput-object v11, v4, v2

    .line 709
    aget-object v10, v4, v2

    invoke-direct {p0, v10, v8, v9}, Lcom/xiaomi/push/service/XMPushService;->preparePacket(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/smack/packet/Message;

    aput-object v10, v4, v2

    .line 710
    aget-object v10, v4, v2

    if-nez v10, :cond_0

    .line 724
    :goto_1
    return-void

    .line 707
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 716
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v7

    .line 717
    .local v7, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    array-length v10, v4

    new-array v0, v10, [Lcom/xiaomi/slim/Blob;

    .line 718
    .local v0, "blobs":[Lcom/xiaomi/slim/Blob;
    const/4 v2, 0x0

    :goto_2
    array-length v10, v4

    if-ge v2, v10, :cond_2

    .line 719
    aget-object v5, v4, v2

    .line 720
    .local v5, "msg":Lcom/xiaomi/smack/packet/Message;
    invoke-virtual {v5}, Lcom/xiaomi/smack/packet/Message;->getChannelId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/xiaomi/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v3

    .line 721
    .local v3, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v10, v3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/xiaomi/slim/Blob;->from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;

    move-result-object v10

    aput-object v10, v0, v2

    .line 718
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 723
    .end local v3    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v5    # "msg":Lcom/xiaomi/smack/packet/Message;
    :cond_2
    new-instance v10, Lcom/xiaomi/push/service/BatchSendMessageJob;

    invoke-direct {v10, p0, v0}, Lcom/xiaomi/push/service/BatchSendMessageJob;-><init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/slim/Blob;)V

    invoke-direct {p0, v10}, Lcom/xiaomi/push/service/XMPushService;->executeJobNow(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_1
.end method

.method private shouldCheckAlive()Z
    .locals 4

    .prologue
    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 574
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isConnected(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldRebind(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1307
    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1308
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v0

    .line 1309
    .local v0, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    const/4 v1, 0x0

    .line 1310
    .local v1, "needRebind":Z
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1311
    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1312
    .local v3, "session":Ljava/lang/String;
    sget-object v5, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1313
    .local v2, "security":Ljava/lang/String;
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1314
    const/4 v1, 0x1

    .line 1315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session changed. old session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " chid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1317
    :cond_0
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "security changed. chid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sechash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/string/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1319
    const/4 v1, 0x1

    .line 1322
    .end local v2    # "security":Ljava/lang/String;
    .end local v3    # "session":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private updateAlarmTimer()V
    .locals 1

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1574
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/push/service/timers/Alarm;->registerPing(Z)V

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    goto :goto_0
.end method

.method private updateGeoFenceState(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "geoId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 490
    const-string v1, "Leave"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enter"

    .line 491
    invoke-static {p3}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaomi/push/service/GeoFenceDao;->findGeoStatueByGeoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    :goto_0
    return v0

    .line 494
    :cond_0
    invoke-static {p3}, Lcom/xiaomi/push/service/GeoFenceDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDao;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/xiaomi/push/service/GeoFenceDao;->updateGeoStatueByGeoid(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update geofence statue failed geo_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updatePushClient(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 5
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1326
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1328
    .local v2, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v0

    .line 1329
    .local v0, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .end local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1334
    .restart local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_0
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    .line 1335
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    .line 1336
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    .line 1337
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    .line 1338
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    .line 1339
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    .line 1340
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->kick:Z

    .line 1341
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    .line 1342
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    .line 1343
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    .line 1344
    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    .line 1346
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 1347
    .local v1, "peer":Landroid/os/Messenger;
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->watch(Landroid/os/Messenger;)V

    .line 1349
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->context:Landroid/content/Context;

    .line 1351
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/PushClientsManager;->addActiveClient(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 1352
    return-object v0
.end method


# virtual methods
.method public addPingCallBack(Lcom/xiaomi/push/service/XMPushService$PingCallBack;)V
    .locals 2
    .param p1, "pingCallBack"    # Lcom/xiaomi/push/service/XMPushService$PingCallBack;

    .prologue
    .line 2178
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2179
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    monitor-exit v1

    .line 2181
    return-void

    .line 2180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public batchSendPacket([Lcom/xiaomi/slim/Blob;)V
    .locals 2
    .param p1, "blobs"    # [Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/Connection;->batchSend([Lcom/xiaomi/slim/Blob;)V

    .line 1475
    return-void

    .line 1473
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "notifyType"    # I
    .param p4, "reasonMsg"    # Ljava/lang/String;
    .param p5, "kickType"    # Ljava/lang/String;

    .prologue
    .line 1356
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    .line 1357
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 1358
    .local v2, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v2, :cond_0

    .line 1359
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;

    move-object v1, p0

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$UnbindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1361
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/PushClientsManager;->deactivateClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method public connectionClosed(Lcom/xiaomi/smack/Connection;ILjava/lang/Exception;)V
    .locals 1
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;
    .param p2, "reason"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2073
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/stats/StatsContext;->connectionClosed(Lcom/xiaomi/smack/Connection;ILjava/lang/Exception;)V

    .line 2074
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 2075
    return-void
.end method

.method public connectionStarted(Lcom/xiaomi/smack/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 2048
    const-string v0, "begin to connect..."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 2049
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stats/StatsContext;->connectionStarted(Lcom/xiaomi/smack/Connection;)V

    .line 2050
    return-void
.end method

.method public createClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;
    .locals 1

    .prologue
    .line 1636
    new-instance v0, Lcom/xiaomi/push/service/ClientEventDispatcher;

    invoke-direct {v0}, Lcom/xiaomi/push/service/ClientEventDispatcher;-><init>()V

    return-object v0
.end method

.method public disconnect(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/smack/Connection;->disconnect(ILjava/lang/Exception;)V

    .line 1517
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 1520
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 1521
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(I)V

    .line 1523
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 1524
    return-void

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1513
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;

    .prologue
    .line 1400
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 1401
    return-void
.end method

.method public executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;
    .param p2, "delay"    # J

    .prologue
    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/push/service/JobScheduler;->executeJobDelayed(Lcom/xiaomi/push/service/JobScheduler$Job;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    return-object v0
.end method

.method public getCurrentConnection()Lcom/xiaomi/smack/Connection;
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    return-object v0
.end method

.method public hasJob(I)Z
    .locals 1
    .param p1, "jobType"    # I

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler;->hasJob(I)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0}, Lcom/xiaomi/smack/Connection;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPushDisabled()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1559
    :try_start_0
    const-string v6, "miui.os.Build"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1560
    .local v0, "cc":Ljava/lang/Class;
    const-string v6, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1561
    .local v1, "cmccField":Ljava/lang/reflect/Field;
    const-string v6, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1562
    .local v3, "cuccField":Ljava/lang/reflect/Field;
    const-string v6, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1563
    .local v2, "ctccFiled":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 1565
    .end local v0    # "cc":Ljava/lang/Class;
    .end local v1    # "cmccField":Ljava/lang/reflect/Field;
    .end local v2    # "ctccFiled":Ljava/lang/reflect/Field;
    .end local v3    # "cuccField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    return v5

    .line 1564
    :catch_0
    move-exception v4

    .line 1565
    .local v4, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 184
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->initialize(Landroid/content/Context;)V

    .line 186
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v6

    .line 187
    .local v6, "account":Lcom/xiaomi/push/service/MIPushAccount;
    if-eqz v6, :cond_0

    .line 188
    iget v0, v6, Lcom/xiaomi/push/service/MIPushAccount;->envType:I

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->setEnvType(I)V

    .line 191
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMPushService$2;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    .line 223
    invoke-static {p0}, Lcom/xiaomi/push/service/PushHostManagerFactory;->init(Lcom/xiaomi/push/service/XMPushService;)V

    .line 226
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$3;

    const/16 v3, 0x1466

    const-string/jumbo v4, "xiaomi.com"

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService$3;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    .line 240
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 242
    new-instance v0, Lcom/xiaomi/slim/SlimConnection;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->connConfig:Lcom/xiaomi/smack/ConnectionConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/slim/SlimConnection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/ConnectionConfiguration;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    .line 244
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->createClientEventDispatcher()Lcom/xiaomi/push/service/ClientEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    .line 246
    invoke-static {p0}, Lcom/xiaomi/push/service/timers/Alarm;->initialize(Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v0, p0}, Lcom/xiaomi/slim/SlimConnection;->addConnectionListener(Lcom/xiaomi/smack/ConnectionListener;)V

    .line 250
    new-instance v0, Lcom/xiaomi/push/service/PacketSync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PacketSync;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mPacketSync:Lcom/xiaomi/push/service/PacketSync;

    .line 252
    new-instance v0, Lcom/xiaomi/push/service/ReconnectionManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ReconnectionManager;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

    .line 254
    new-instance v7, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;

    invoke-direct {v7}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;-><init>()V

    .line 255
    .local v7, "commonProvider":Lcom/xiaomi/push/service/CommonPacketExtensionProvider;
    invoke-virtual {v7}, Lcom/xiaomi/push/service/CommonPacketExtensionProvider;->register()V

    .line 257
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getInstance()Lcom/xiaomi/stats/StatsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/stats/StatsHandler;->init(Lcom/xiaomi/push/service/XMPushService;)V

    .line 259
    new-instance v0, Lcom/xiaomi/push/service/JobScheduler;

    const-string v1, "Connection Controller Thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/JobScheduler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    .line 261
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v10

    .line 262
    .local v10, "pcm":Lcom/xiaomi/push/service/PushClientsManager;
    invoke-virtual {v10}, Lcom/xiaomi/push/service/PushClientsManager;->removeAllClientChangeListeners()V

    .line 263
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$4;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v10, v0}, Lcom/xiaomi/push/service/PushClientsManager;->addClientChangeListener(Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;)V

    .line 276
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->canOpenForegroundService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->enableForegroundService()V

    .line 280
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/tinyData/TinyDataManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/tinyData/TinyDataManager;

    move-result-object v11

    .line 281
    .local v11, "tinyDataManager":Lcom/xiaomi/tinyData/TinyDataManager;
    new-instance v0, Lcom/xiaomi/push/service/LongConnUploader;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/LongConnUploader;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const-string v1, "UPLOADER_PUSH_CHANNEL"

    invoke-virtual {v11, v0, v1}, Lcom/xiaomi/tinyData/TinyDataManager;->addUploader(Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->addPingCallBack(Lcom/xiaomi/push/service/XMPushService$PingCallBack;)V

    .line 285
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$InitJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$InitJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 287
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    .line 289
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 290
    .local v9, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/xiaomi/push/service/XMPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    .end local v9    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string v0, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 295
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_3

    .line 296
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/XMPushService$5;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPushService created pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaomi/push/service/XMPushService;->PID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 322
    return-void

    .line 313
    .restart local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register observer err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mConnectionChangeReceiver:Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1420
    :cond_0
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1423
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->mExtremePowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/JobScheduler;->removeAllJobs()V

    .line 1431
    new-instance v1, Lcom/xiaomi/push/service/XMPushService$12;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/XMPushService$12;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1446
    new-instance v1, Lcom/xiaomi/push/service/XMPushService$KillJob;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMPushService$KillJob;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 1449
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/PushClientsManager;->removeAllClientChangeListeners()V

    .line 1450
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 1451
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/PushClientsManager;->removeActiveClients()V

    .line 1453
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->mSlimConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v1, p0}, Lcom/xiaomi/slim/SlimConnection;->removeConnectionListener(Lcom/xiaomi/smack/ConnectionListener;)V

    .line 1454
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/ServiceConfig;->clear()V

    .line 1455
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    .line 1456
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->clearPingCallbacks()V

    .line 1457
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1458
    const-string v1, "Service destroyed"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1459
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregister observer err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onPong()V
    .locals 4

    .prologue
    .line 2171
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->pingCallBacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2172
    .local v1, "pingCallBacksDump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/XMPushService$PingCallBack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/XMPushService$PingCallBack;

    .line 2173
    .local v0, "callBack":Lcom/xiaomi/push/service/XMPushService$PingCallBack;
    invoke-interface {v0}, Lcom/xiaomi/push/service/XMPushService$PingCallBack;->pingFollowUpAction()V

    goto :goto_0

    .line 2175
    .end local v0    # "callBack":Lcom/xiaomi/push/service/XMPushService$PingCallBack;
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 624
    if-nez p1, :cond_2

    .line 625
    const-string v0, "onStart() with intent NULL"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 629
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 630
    const-string v0, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.push.check_alive"

    .line 631
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/JobScheduler;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    const-string v0, "ERROR, the job controller is blocked."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->resetAllClients(Landroid/content/Context;I)V

    .line 637
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->stopSelf()V

    .line 649
    :cond_1
    :goto_1
    return-void

    .line 627
    :cond_2
    const-string v0, "onStart() with intent.Action = %s, chid = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_3
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$IntentJob;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$IntentJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_1

    .line 641
    :cond_4
    const-string v0, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$IntentJob;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$IntentJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1382
    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    .line 1386
    sget v0, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    return v0
.end method

.method public reconnectionFailed(Lcom/xiaomi/smack/Connection;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 2091
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stats/StatsContext;->reconnectionFailed(Lcom/xiaomi/smack/Connection;Ljava/lang/Exception;)V

    .line 2092
    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->broadcastNetworkAvailable(Z)V

    .line 2093
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 2094
    return-void
.end method

.method public reconnectionSuccessful(Lcom/xiaomi/smack/Connection;)V
    .locals 5
    .param p1, "conn"    # Lcom/xiaomi/smack/Connection;

    .prologue
    .line 2079
    invoke-static {}, Lcom/xiaomi/stats/StatsHandler;->getContext()Lcom/xiaomi/stats/StatsContext;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaomi/stats/StatsContext;->reconnectionSuccessful(Lcom/xiaomi/smack/Connection;)V

    .line 2080
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->broadcastNetworkAvailable(Z)V

    .line 2081
    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/ReconnectionManager;->onConnectSucceeded()V

    .line 2082
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClients()Ljava/util/ArrayList;

    move-result-object v1

    .line 2083
    .local v1, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 2084
    .local v0, "client":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$BindJob;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 2085
    .local v2, "job":Lcom/xiaomi/push/service/XMPushService$BindJob;
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0

    .line 2087
    .end local v0    # "client":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v2    # "job":Lcom/xiaomi/push/service/XMPushService$BindJob;
    :cond_0
    return-void
.end method

.method public registerForMiPushApp([BLjava/lang/String;)V
    .locals 10
    .param p1, "payload"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const v9, 0x42c1d83

    .line 1236
    if-nez p1, :cond_0

    .line 1237
    const-string v0, "null payload"

    invoke-static {p0, p2, p1, v9, v0}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 1239
    const-string v0, "register request without payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1271
    :goto_0
    return-void

    .line 1241
    :cond_0
    new-instance v6, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 1243
    .local v6, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {v6, p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1244
    iget-object v0, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->action:Lcom/xiaomi/xmpush/thrift/ActionType;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    if-ne v0, v1, :cond_1

    .line 1246
    new-instance v8, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1249
    .local v8, "registerPacket":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    :try_start_1
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPushAction()[B

    move-result-object v0

    .line 1248
    invoke-static {v8, v0}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 1251
    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/MIPushClientManager;->registerApp(Ljava/lang/String;[B)V

    .line 1252
    new-instance v0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->getToken()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/MIPushAppRegisterJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1252
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v7

    .line 1256
    .local v7, "e":Lorg/apache/thrift/TException;
    :try_start_2
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1257
    const v0, 0x42c1d83

    const-string v1, " data action error."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1265
    .end local v7    # "e":Lorg/apache/thrift/TException;
    .end local v8    # "registerPacket":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    :catch_1
    move-exception v7

    .line 1266
    .restart local v7    # "e":Lorg/apache/thrift/TException;
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1267
    const-string v0, " data container error."

    invoke-static {p0, p2, p1, v9, v0}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 1261
    .end local v7    # "e":Lorg/apache/thrift/TException;
    :cond_1
    const v0, 0x42c1d83

    :try_start_3
    const-string v1, " registration action required."

    invoke-static {p0, p2, p1, v0, v1}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 1263
    const-string v0, "register request with invalid payload"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public removeJobs(I)V
    .locals 1
    .param p1, "jobType"    # I

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/JobScheduler;->removeJobs(I)V

    .line 2032
    return-void
.end method

.method public removeJobs(Lcom/xiaomi/push/service/XMPushService$Job;)V
    .locals 2
    .param p1, "job"    # Lcom/xiaomi/push/service/XMPushService$Job;

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mJobController:Lcom/xiaomi/push/service/JobScheduler;

    iget v1, p1, Lcom/xiaomi/push/service/XMPushService$Job;->type:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/push/service/JobScheduler;->removeJobs(ILcom/xiaomi/push/service/JobScheduler$Job;)V

    .line 2040
    return-void
.end method

.method public scheduleConnect(Z)V
    .locals 1
    .param p1, "rightNow"    # Z

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mReconnManager:Lcom/xiaomi/push/service/ReconnectionManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/ReconnectionManager;->tryReconnect(Z)V

    .line 1502
    return-void
.end method

.method public scheduleRebindChannel(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 1505
    if-eqz p1, :cond_0

    .line 1506
    invoke-virtual {p1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getNextRetryInterval()J

    move-result-wide v0

    .line 1507
    .local v0, "interval":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule rebind job in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1508
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$BindJob;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 1510
    .end local v0    # "interval":J
    :cond_0
    return-void
.end method

.method sendMessage(Ljava/lang/String;[BZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .param p3, "isCache"    # Z

    .prologue
    .line 1197
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1199
    .local v1, "loginInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1200
    if-eqz p3, :cond_0

    .line 1201
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/MIPushClientManager;->addPendingMessages(Ljava/lang/String;[B)V

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1207
    .local v0, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v2, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, v3, :cond_2

    .line 1208
    if-eqz p3, :cond_0

    .line 1209
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/MIPushClientManager;->addPendingMessages(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1214
    :cond_2
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$11;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/xiaomi/push/service/XMPushService$11;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0
.end method

.method public sendPacket(Lcom/xiaomi/slim/Blob;)V
    .locals 2
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->mCurrentConnection:Lcom/xiaomi/smack/Connection;

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/Connection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 1467
    return-void

    .line 1465
    :cond_0
    new-instance v0, Lcom/xiaomi/smack/XMPPException;

    const-string/jumbo v1, "try send msg while connection is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendPongIfNeed()V
    .locals 4

    .prologue
    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->lastAlive:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/smack/SmackConfiguration;->getCheckAliveInterval()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->checkAlive(Z)V

    goto :goto_0
.end method

.method public shouldReconnect()Z
    .locals 1

    .prologue
    .line 1540
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->getActiveClientCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1542
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1543
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->isExtremePowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1540
    :goto_0
    return v0

    .line 1544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
