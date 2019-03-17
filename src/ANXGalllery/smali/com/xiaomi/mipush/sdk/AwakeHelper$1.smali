.class final Lcom/xiaomi/mipush/sdk/AwakeHelper$1;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "AwakeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/AwakeHelper;->doSendPingByWakedUpApp(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$notification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;


# direct methods
.method constructor <init>(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;->val$notification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x16

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;->val$notification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;->val$notification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 97
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;->val$notification:Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x0

    move v5, v3

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 100
    :cond_0
    return-void
.end method
