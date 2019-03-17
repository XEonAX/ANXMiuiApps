.class Lcom/xiaomi/push/service/XMPushService$8$1;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/push/service/XMPushService$8;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalState:Ljava/lang/String;

.field final synthetic val$geoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService$8;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/push/service/XMPushService$8;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->this$1:Lcom/xiaomi/push/service/XMPushService$8;

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$geoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$finalState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 442
    iget-object v7, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$geoId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->canShownGeoMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 443
    .local v0, "canBeShownMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/module/GeoFenceMessage;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/push/service/module/GeoFenceMessage;

    .line 444
    .local v5, "message":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getAction()I

    move-result v8

    iget-object v9, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$finalState:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/xiaomi/push/service/XMPushService;->canShowGeoMessage(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 449
    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getDeadline()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 450
    iget-object v8, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v8

    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->deleteGeoMessagesByMessageId(Ljava/lang/String;)I

    move-result v4

    .line 451
    .local v4, "deleteGeoMessageResult":I
    if-nez v4, :cond_0

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMPushService remove some geofence message failed. message_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    .end local v4    # "deleteGeoMessageResult":I
    :cond_1
    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getContent()[B

    move-result-object v1

    .line 457
    .local v1, "content":[B
    if-nez v1, :cond_2

    .line 458
    const-string v8, "Geo canBeShownMessage content null"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 463
    .local v2, "currentTime":J
    invoke-static {v1, v2, v3}, Lcom/xiaomi/push/service/MIPushEventProcessor;->buildIntent([BJ)Landroid/content/Intent;

    move-result-object v6

    .line 464
    .local v6, "xmPushIntent":Landroid/content/Intent;
    if-nez v6, :cond_3

    .line 465
    const-string v8, "Geo canBeShownMessage intent null"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object v8, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->this$1:Lcom/xiaomi/push/service/XMPushService$8;

    iget-object v8, v8, Lcom/xiaomi/push/service/XMPushService$8;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v9, v1, v6, v10}, Lcom/xiaomi/push/service/MIPushEventProcessor;->postProcessMIPushMessage(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BLandroid/content/Intent;Z)V

    .line 469
    iget-object v8, p0, Lcom/xiaomi/push/service/XMPushService$8$1;->this$1:Lcom/xiaomi/push/service/XMPushService$8;

    iget-object v8, v8, Lcom/xiaomi/push/service/XMPushService$8;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v8}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceMessageDao;

    move-result-object v8

    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/push/service/GeoFenceMessageDao;->deleteGeoMessagesByMessageId(Ljava/lang/String;)I

    move-result v4

    .line 470
    .restart local v4    # "deleteGeoMessageResult":I
    if-nez v4, :cond_0

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "show some exit geofence message. then remove this message failed. message_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/xiaomi/push/service/module/GeoFenceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v1    # "content":[B
    .end local v2    # "currentTime":J
    .end local v4    # "deleteGeoMessageResult":I
    .end local v5    # "message":Lcom/xiaomi/push/service/module/GeoFenceMessage;
    .end local v6    # "xmPushIntent":Landroid/content/Intent;
    :cond_4
    return-void
.end method
