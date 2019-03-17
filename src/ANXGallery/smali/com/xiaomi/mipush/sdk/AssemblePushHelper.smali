.class public Lcom/xiaomi/mipush/sdk/AssemblePushHelper;
.super Ljava/lang/Object;
.source "AssemblePushHelper.java"


# static fields
.field private static mTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->mTokens:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/xiaomi/mipush/sdk/AssemblePush;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->saveAssemblePushToken(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V

    return-void
.end method

.method static checkAssemblePushStatus(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "fallbackMipush":Z
    const-string v4, "mipush_extra"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 99
    .local v3, "sp":Landroid/content/SharedPreferences;
    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getTokenKey(Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "hwkey":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getTokenKey(Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "fcmkey":Ljava/lang/String;
    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 109
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->send3rdPushHint(ILjava/lang/String;)V

    .line 111
    :cond_1
    return-void
.end method

.method public static getAssemblePushExtra(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/util/HashMap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/mipush/sdk/AssemblePush;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v3, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 381
    .local v4, "regInfo":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getTokenKey(Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "spKey":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    :goto_0
    return-object v3

    .line 385
    :cond_0
    sget-object v6, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$2;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 431
    :goto_1
    const-string v6, "RegInfo"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :pswitch_0
    const/4 v1, 0x0

    .line 389
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 395
    :goto_2
    const/4 v0, -0x1

    .line 396
    .local v0, "appId":I
    if-eqz v1, :cond_1

    .line 397
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.huawei.hms.client.appid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 405
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brand:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushUtils;->getPhoneBrand(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PhoneBrand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 406
    invoke-static {p0, v5}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "package_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "app_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    goto/16 :goto_1

    .line 392
    .end local v0    # "appId":I
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 416
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brand:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/mipush/sdk/PhoneBrand;->FCM:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 417
    invoke-static {p0, v5}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "package_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    goto/16 :goto_1

    .line 426
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brand:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/mipush/sdk/PhoneBrand;->OPPO:Lcom/xiaomi/mipush/sdk/PhoneBrand;

    invoke-virtual {v7}, Lcom/xiaomi/mipush/sdk/PhoneBrand;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 427
    invoke-static {p0, v5}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getAssemblePushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "package_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static declared-synchronized getAssemblePushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    const-class v2, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->mTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit v2

    return-object v0

    .line 226
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getTokenKey(Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$2;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 455
    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    const-string v0, "hms_push_token"

    .line 447
    goto :goto_0

    .line 449
    :pswitch_1
    const-string v0, "fcm_push_token"

    .line 450
    goto :goto_0

    .line 452
    :pswitch_2
    const-string v0, "cos_push_token"

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isOpenAssemblePushOnlineSwitch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->getConfigKeyByType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/xmpush/thrift/ConfigKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->getConfigKeyByType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/xmpush/thrift/ConfigKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerAssemblePush(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->register()V

    .line 291
    return-void
.end method

.method private static declared-synchronized saveAssemblePushToken(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 152
    const-class v3, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->getTokenKey(Lcom/xiaomi/mipush/sdk/AssemblePush;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "ASSEMBLE_PUSH : can not find the key of token used in sp file"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit v3

    return-void

    .line 157
    :cond_0
    :try_start_1
    const-string v2, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASSEMBLE_PUSH : update sp file success!  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static saveAssemblePushTokenAfterAck(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;
    .param p2, "regInfo"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public static unregisterAssemblePush(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->unregister()V

    .line 300
    return-void
.end method
