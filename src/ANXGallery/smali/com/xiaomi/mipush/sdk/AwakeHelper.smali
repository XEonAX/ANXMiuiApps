.class public Lcom/xiaomi/mipush/sdk/AwakeHelper;
.super Ljava/lang/Object;
.source "AwakeHelper.java"


# direct methods
.method public static doAWork(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->awakePushService()V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getSendDataIml()Lcom/xiaomi/push/service/awake/module/IProcessData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AwakeInfoUploadWaySwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 124
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v3

    new-instance v4, Lcom/xiaomi/mipush/sdk/AppLayerProcessDataIml;

    invoke-direct {v4}, Lcom/xiaomi/mipush/sdk/AppLayerProcessDataIml;-><init>()V

    .line 121
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->setPackageInfo(Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/push/service/awake/module/IProcessData;)V

    .line 128
    :cond_2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

    invoke-virtual {v0, v1, p0, p1, v6}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sendResult(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 131
    const-string v0, "com.xiaomi.mipush.sdk.WAKEUP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_COMPONENT:Lcom/xiaomi/push/service/awake/module/HelpType;

    invoke-virtual {v0, v1, p0, p1, v6}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sendResult(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_ACTION:Lcom/xiaomi/push/service/awake/module/HelpType;

    invoke-virtual {v0, v1, p0, p1, v6}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sendResult(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v6, v2}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->sendResult(Lcom/xiaomi/push/service/awake/module/HelpType;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static doAwAppLogic(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cmd"    # I
    .param p3, "awkInfo"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 175
    .local v2, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 176
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 177
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v3

    const-string v4, "extra_aw_app_online_cmd"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->getExtra()Ljava/util/Map;

    move-result-object v3

    const-string v4, "extra_help_aw_info"

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 180
    invoke-static {v2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 181
    .local v1, "msgBytes":[B
    if-nez v1, :cond_0

    .line 182
    const-string v3, "send message fail, because msgBytes is null."

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action_aw_app_logic"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v3, "mipush_payload"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 188
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendDataCommon(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static doSendPingByWakedUpApp(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AwakeAppPingSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 65
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v1

    .line 67
    .local v1, "pingSwitch":Z
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ConfigKey;->AwakeAppPingFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 68
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 70
    .local v0, "frequency":I
    if-ltz v0, :cond_0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 71
    const-string v2, "aw_ping: frquency need > 30s."

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 72
    const/16 v0, 0x1e

    .line 75
    :cond_0
    if-gez v0, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 78
    :cond_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    invoke-static {p0, p1, v1, v0}, Lcom/xiaomi/mipush/sdk/AwakeHelper;->sendAwakeAppPingMessage(Landroid/content/Context;Lorg/apache/thrift/TBase;ZI)V

    .line 105
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;

    invoke-direct {v3, p1, p0}, Lcom/xiaomi/mipush/sdk/AwakeHelper$1;-><init>(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Landroid/content/Context;)V

    .line 87
    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;I)Z

    goto :goto_0
.end method

.method public static final sendAwakeAppPingMessage(Landroid/content/Context;Lorg/apache/thrift/TBase;ZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "pingSwitch"    # Z
    .param p3, "frequency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/TBase",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;ZI)V"
        }
    .end annotation

    .prologue
    .line 151
    .line 152
    .local p1, "packet":Lorg/apache/thrift/TBase;, "TT;"
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 153
    .local v1, "msgBytes":[B
    if-nez v1, :cond_0

    .line 154
    const-string v2, "send message fail, because msgBytes is null."

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "action_help_ping"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "extra_help_ping_switch"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v2, "extra_help_ping_frequency"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 162
    const-string v2, "com.xiaomi.mipush.MESSAGE_CACHE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendDataCommon(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendPingByWakeUpApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awakeInfo"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v2, "aw_ping : send aw_ping cmd and content to push service from 3rd app"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "awake_info"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "event_type"

    const/16 v3, 0x270f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v2, "description"

    const-string v3, "ping message"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 50
    .local v1, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 52
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->AwakeAppResponse:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 53
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 54
    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 55
    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/AwakeHelper;->doSendPingByWakedUpApp(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;)V

    .line 56
    return-void
.end method
