.class final Lcom/xiaomi/push/service/MIPushEventProcessor$2;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "MIPushEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIPushEventProcessor;->sendAckMessage(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

.field final synthetic val$pushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 680
    iput-object p2, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;->val$container:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    const-string v0, "send ack message for message."

    return-object v0
.end method

.method public process()V
    .locals 4

    .prologue
    .line 686
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v3, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;->val$container:Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/MIPushEventProcessor;->constructAckMessage(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 687
    .local v0, "ackContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v0    # "ackContainer":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 690
    iget-object v2, p0, Lcom/xiaomi/push/service/MIPushEventProcessor$2;->val$pushService:Lcom/xiaomi/push/service/XMPushService;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
