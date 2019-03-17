.class public Lcom/xiaomi/push/service/AwakeAppPingJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "AwakeAppPingJob.java"


# instance fields
.field private mIsCache:Z

.field private mXMPushServiceWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/push/service/XMPushService;",
            ">;"
        }
    .end annotation
.end field

.field private mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;


# direct methods
.method public constructor <init>(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Ljava/lang/ref/WeakReference;Z)V
    .locals 1
    .param p1, "xmPushActionNotification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .param p3, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/push/service/XMPushService;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "xMPushServiceWR":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/push/service/XMPushService;>;"
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mIsCache:Z

    .line 24
    iput-object p1, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 25
    iput-object p2, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXMPushServiceWR:Ljava/lang/ref/WeakReference;

    .line 26
    iput-boolean p3, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mIsCache:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x16

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 36
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXMPushServiceWR:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-nez v6, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXMPushServiceWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/push/service/XMPushService;

    .line 40
    .local v5, "xMPushService":Lcom/xiaomi/push/service/XMPushService;
    if-eqz v5, :cond_0

    .line 44
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 45
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MoleInfo aw_ping : send aw_Ping msg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "appId":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mXmPushActionNotification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v4, v0, v6, v7}, Lcom/xiaomi/push/service/MIPushHelper;->generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 52
    .local v1, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v3

    .line 53
    .local v3, "newPayload":[B
    iget-boolean v6, p0, Lcom/xiaomi/push/service/AwakeAppPingJob;->mIsCache:Z

    invoke-virtual {v5, v4, v3, v6}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Ljava/lang/String;[BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v3    # "newPayload":[B
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MoleInfo aw_ping : send help app ping error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
