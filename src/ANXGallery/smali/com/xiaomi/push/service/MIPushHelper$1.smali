.class final Lcom/xiaomi/push/service/MIPushHelper$1;
.super Lcom/xiaomi/push/service/Sync$SyncJob;
.source "MIPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIPushHelper;->prepareMIPushAccount(Lcom/xiaomi/push/service/XMPushService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/xiaomi/push/service/MIPushAccount;

.field final synthetic val$service:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/MIPushAccount;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "period"    # J

    .prologue
    .line 46
    iput-object p4, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$service:Lcom/xiaomi/push/service/XMPushService;

    iput-object p5, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$account:Lcom/xiaomi/push/service/MIPushAccount;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/Sync$SyncJob;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method sync(Lcom/xiaomi/push/service/Sync;)V
    .locals 8
    .param p1, "sync"    # Lcom/xiaomi/push/service/Sync;

    .prologue
    .line 49
    const-string v5, "GAID"

    const-string v6, "gaid"

    invoke-virtual {p1, v5, v6}, Lcom/xiaomi/push/service/Sync;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "gaid":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$service:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "curGaid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gaid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    const-string v5, "GAID"

    const-string v6, "gaid"

    invoke-virtual {p1, v5, v6, v1}, Lcom/xiaomi/push/service/Sync;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 56
    .local v4, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    iget-object v5, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$account:Lcom/xiaomi/push/service/MIPushAccount;

    iget-object v5, v5, Lcom/xiaomi/push/service/MIPushAccount;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 57
    sget-object v5, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientInfoUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v5, v5, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 58
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 60
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v5

    const-string v6, "gaid"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v5, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$service:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v5}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$account:Lcom/xiaomi/push/service/MIPushAccount;

    iget-object v6, v6, Lcom/xiaomi/push/service/MIPushAccount;->appId:Ljava/lang/String;

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v5, v6, v4, v7}, Lcom/xiaomi/push/service/MIPushHelper;->generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 64
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v3

    .line 66
    .local v3, "newPayload":[B
    iget-object v5, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$service:Lcom/xiaomi/push/service/XMPushService;

    iget-object v6, p0, Lcom/xiaomi/push/service/MIPushHelper$1;->val$service:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v6}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Ljava/lang/String;[BZ)V

    .line 68
    .end local v0    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v3    # "newPayload":[B
    .end local v4    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :cond_0
    return-void
.end method
