.class public Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;
.super Ljava/lang/Object;
.source "SyncMIIDHelper.java"

# interfaces
.implements Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/xiaomi/push/service/MIIDManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/MIIDManager;->addMIIDUpdateCallback(Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;)V

    .line 36
    return-void
.end method

.method private sendUpdateMIIDNotification(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "miid"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 65
    .local v1, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->ClientMIIDUpdate:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 66
    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 67
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "miid"

    invoke-static {v0, v3, p1}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 71
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSpaceId()I

    move-result v2

    .line 72
    .local v2, "spaceId":I
    if-ltz v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "space_id"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 77
    return-void
.end method


# virtual methods
.method public keepToSyncMIID(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, -0x1

    .line 42
    const-string v6, "mipush_extra"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 45
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "last_sync_miid_time"

    invoke-interface {v5, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 46
    .local v2, "lastSyncMIIDTimeStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 47
    .local v0, "currentInSecond":J
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/ConfigKey;->SyncMIIDFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 48
    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v7

    const/16 v8, 0x5460

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v4

    .line 50
    .local v4, "periodInSecond":I
    cmp-long v6, v2, v10

    if-nez v6, :cond_1

    .line 52
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "last_sync_miid_time"

    invoke-interface {v6, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sub-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 55
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;

    invoke-direct {v7, p1}, Lcom/xiaomi/mipush/sdk/SyncMIIDJob;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v4}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z

    .line 56
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "last_sync_miid_time"

    invoke-interface {v6, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onMIIDUpdate(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "miid"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;->sendUpdateMIIDNotification(Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    return-void
.end method
