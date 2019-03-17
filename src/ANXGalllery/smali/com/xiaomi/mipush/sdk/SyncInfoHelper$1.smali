.class final Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;
.super Ljava/lang/Object;
.source "SyncInfoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->doSyncInfoAsync(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$md5Info:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$md5Info:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 69
    const-string v5, "do sync info"

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 70
    new-instance v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 71
    .local v4, "syncMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    .line 73
    .local v1, "appInfoHolder":Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    sget-object v5, Lcom/xiaomi/xmpush/thrift/NotificationType;->SyncInfo:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v5, v5, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 74
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 75
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 77
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 79
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "app_version"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 80
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "app_version_code"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 82
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "push_sdk_vn"

    const-string v7, "3_6_11"

    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "push_sdk_vc"

    const/16 v7, 0x7793

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string/jumbo v6, "token"

    .line 88
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppToken()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "imeiMd5":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "subImeisMd5":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 96
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "imei_md5"

    invoke-static {v5, v6, v2}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v2    # "imeiMd5":Ljava/lang/String;
    .end local v3    # "subImeisMd5":Ljava/lang/String;
    :cond_1
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "reg_id"

    .line 100
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegID()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "reg_secret"

    .line 102
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegSecret()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAcceptTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    const-string v7, "-"

    .line 106
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "acceptTime":Ljava/lang/String;
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "accept_time"

    invoke-static {v5, v6, v0}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$md5Info:Z

    if-eqz v5, :cond_2

    .line 110
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "aliases_md5"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 111
    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->access$000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string/jumbo v6, "topics_md5"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 113
    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->access$000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "accounts_md5"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 115
    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->access$000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v9, v7}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 126
    return-void

    .line 117
    :cond_2
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "aliases"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 118
    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string/jumbo v6, "topics"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 120
    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v5, v4, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string/jumbo v6, "user_accounts"

    iget-object v7, p0, Lcom/xiaomi/mipush/sdk/SyncInfoHelper$1;->val$context:Landroid/content/Context;

    .line 122
    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-static {v5, v6, v7}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->putNotNullExtra(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
