.class public Lcom/xiaomi/push/service/PushHostManagerFactory;
.super Lcom/xiaomi/push/service/ServiceConfig$Listener;
.source "PushHostManagerFactory.java"

# interfaces
.implements Lcom/xiaomi/network/HostManager$HostManagerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/PushHostManagerFactory$PushHostManager;,
        Lcom/xiaomi/push/service/PushHostManagerFactory$GslbHttpGet;
    }
.end annotation


# instance fields
.field private lastFetchTime:J

.field private pushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceConfig$Listener;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/xiaomi/push/service/PushHostManagerFactory;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 45
    return-void
.end method

.method public static init(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 8
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 34
    new-instance v6, Lcom/xiaomi/push/service/PushHostManagerFactory;

    invoke-direct {v6, p0}, Lcom/xiaomi/push/service/PushHostManagerFactory;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 35
    .local v6, "factory":Lcom/xiaomi/push/service/PushHostManagerFactory;
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/push/service/ServiceConfig;->addListener(Lcom/xiaomi/push/service/ServiceConfig$Listener;)V

    .line 37
    const-class v7, Lcom/xiaomi/network/HostManager;

    monitor-enter v7

    .line 38
    :try_start_0
    invoke-static {v6}, Lcom/xiaomi/network/HostManager;->setHostManagerFactory(Lcom/xiaomi/network/HostManager$HostManagerFactory;)V

    .line 39
    const/4 v1, 0x0

    new-instance v2, Lcom/xiaomi/push/service/PushHostManagerFactory$GslbHttpGet;

    invoke-direct {v2}, Lcom/xiaomi/push/service/PushHostManagerFactory$GslbHttpGet;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/network/HostManager;->init(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    monitor-exit v7

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public createHostManager(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)Lcom/xiaomi/network/HostManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostFilter"    # Lcom/xiaomi/network/HostFilter;
    .param p3, "httpGet"    # Lcom/xiaomi/network/HostManager$HttpGet;
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Lcom/xiaomi/push/service/PushHostManagerFactory$PushHostManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/PushHostManagerFactory$PushHostManager;-><init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V

    return-object v0
.end method

.method public onConfigChange(Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    .prologue
    .line 142
    return-void
.end method

.method public onConfigMsgReceive(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)V
    .locals 11
    .param p1, "config"    # Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .prologue
    const/4 v10, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasFetchBucket()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getFetchBucket()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaomi/push/service/PushHostManagerFactory;->lastFetchTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetch bucket :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getFetchBucket()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xiaomi/push/service/PushHostManagerFactory;->lastFetchTime:J

    .line 110
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v4

    .line 111
    .local v4, "hostManager":Lcom/xiaomi/network/HostManager;
    invoke-virtual {v4}, Lcom/xiaomi/network/HostManager;->clear()V

    .line 112
    invoke-virtual {v4}, Lcom/xiaomi/network/HostManager;->refreshFallbacks()V

    .line 114
    iget-object v6, p0, Lcom/xiaomi/push/service/PushHostManagerFactory;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getCurrentConnection()Lcom/xiaomi/smack/Connection;

    move-result-object v1

    .line 115
    .local v1, "con":Lcom/xiaomi/smack/Connection;
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Lcom/xiaomi/smack/Connection;->getConfiguration()Lcom/xiaomi/smack/ConnectionConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    .line 117
    .local v2, "fallback":Lcom/xiaomi/network/Fallback;
    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v2}, Lcom/xiaomi/network/Fallback;->getHosts()Ljava/util/ArrayList;

    move-result-object v5

    .line 119
    .local v5, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 120
    .local v0, "changed":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaomi/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 128
    .end local v3    # "host":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 130
    const-string v6, "bucket changed, force reconnect"

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/xiaomi/push/service/PushHostManagerFactory;->pushService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v7, 0x0

    invoke-virtual {v6, v10, v7}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 132
    iget-object v6, p0, Lcom/xiaomi/push/service/PushHostManagerFactory;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v6, v10}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 137
    .end local v0    # "changed":Z
    .end local v1    # "con":Lcom/xiaomi/smack/Connection;
    .end local v2    # "fallback":Lcom/xiaomi/network/Fallback;
    .end local v4    # "hostManager":Lcom/xiaomi/network/HostManager;
    .end local v5    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
