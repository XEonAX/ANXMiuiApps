.class final Lcom/xiaomi/push/service/MIPushEventProcessor$7;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "MIPushEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIPushEventProcessor;->sendGeoAck(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

.field final synthetic val$isGeoPassed:Z

.field final synthetic val$isGeoReceived:Z

.field final synthetic val$isGeoShowed:Z

.field final synthetic val$isGeoUnauthorized:Z

.field final synthetic val$pushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZZ)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 814
    iput-object p2, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$container:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iput-boolean p4, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoReceived:Z

    iput-boolean p5, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoShowed:Z

    iput-boolean p6, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoPassed:Z

    iput-boolean p7, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoUnauthorized:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    const-string v0, "send wrong message ack for message."

    return-object v0
.end method

.method public process()V
    .locals 8

    .prologue
    .line 820
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$container:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    iget-boolean v5, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoReceived:Z

    iget-boolean v6, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoShowed:Z

    iget-boolean v7, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoPassed:Z

    invoke-static {v3, v4, v5, v6, v7}, Lcom/xiaomi/push/service/MIPushEventProcessor;->constructAckMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;ZZZ)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 822
    .local v0, "ackContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    iget-boolean v3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$isGeoUnauthorized:Z

    if-eqz v3, :cond_0

    .line 823
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v1

    .line 824
    .local v1, "actionMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    const-string v3, "permission_to_location"

    sget-object v4, Lcom/xiaomi/push/service/PushServiceConstants;->GEO_VALUE_AUTHORIZATION_NOT_GRANT:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .end local v1    # "actionMetaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3, v0}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v0    # "ackContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 830
    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$7;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v2}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
