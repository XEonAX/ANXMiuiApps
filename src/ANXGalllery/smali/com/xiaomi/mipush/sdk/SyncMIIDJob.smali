.class public Lcom/xiaomi/mipush/sdk/SyncMIIDJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "SyncMIIDJob.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xa

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 35
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 36
    .local v2, "syncMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    .line 38
    .local v0, "appInfoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    sget-object v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncMIID:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 39
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 40
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "miid"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/MIIDManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/MIIDManager;->getMIID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object v1, v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 46
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 47
    return-void
.end method
