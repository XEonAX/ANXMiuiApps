.class public Lcom/xiaomi/push/service/GeoFenceDBCleaner;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "GeoFenceDBCleaner.java"


# instance fields
.field private mService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaomi/push/service/GeoFenceDBCleaner;->mService:Lcom/xiaomi/push/service/XMPushService;

    .line 22
    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xf

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 31
    iget-object v4, p0, Lcom/xiaomi/push/service/GeoFenceDBCleaner;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->findAllGeoFencingMessage()Ljava/util/ArrayList;

    move-result-object v3

    .line 32
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/module/GeoFenceMessage;

    .line 33
    .local v2, "message":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    invoke-virtual {v2}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getDeadline()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 34
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceDBCleaner;->mService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v5}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->deleteGeoMessagesByMessageId(Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "deleteGeoMessageResult":I
    if-nez v1, :cond_1

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GeofenceDbCleaner delete a geofence message failed message_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {v2}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getContent()[B

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/push/service/MIPushEventProcessor;->buildContainer([B)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 39
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    iget-object v5, p0, Lcom/xiaomi/push/service/GeoFenceDBCleaner;->mService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v6, 0x1

    invoke-static {v5, v0, v10, v10, v6}, Lcom/xiaomi/push/service/MIPushEventProcessor;->sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)V

    goto :goto_0

    .line 42
    .end local v0    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v1    # "deleteGeoMessageResult":I
    .end local v2    # "message":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    :cond_2
    return-void
.end method
