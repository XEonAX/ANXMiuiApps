.class public Lcom/xiaomi/mipush/sdk/OcVersionCheckJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "OcVersionCheckJob.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/OcVersionCheckJob;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 38
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OcVersionCheckJob;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    .line 40
    .local v1, "config":Lcom/xiaomi/push/service/OnlineConfig;
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;-><init>()V

    .line 41
    .local v0, "checkMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;
    sget-object v3, Lcom/xiaomi/xmpush/thrift/ConfigListType;->MISC_CONFIG:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-static {v1, v3}, Lcom/xiaomi/push/service/OnlineConfigHelper;->getVersion(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/ConfigListType;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->setMiscConfigVersion(I)Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    .line 42
    sget-object v3, Lcom/xiaomi/xmpush/thrift/ConfigListType;->PLUGIN_CONFIG:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-static {v1, v3}, Lcom/xiaomi/push/service/OnlineConfigHelper;->getVersion(Lcom/xiaomi/push/service/OnlineConfig;Lcom/xiaomi/xmpush/thrift/ConfigListType;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->setPluginConfigVersion(I)Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    .line 44
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v3, "-1"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 45
    .local v2, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->DailyCheckClientConfig:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 46
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 48
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/OcVersionCheckJob;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 50
    return-void
.end method
