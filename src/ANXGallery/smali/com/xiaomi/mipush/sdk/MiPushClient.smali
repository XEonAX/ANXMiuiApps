.class public abstract Lcom/xiaomi/mipush/sdk/MiPushClient;
.super Ljava/lang/Object;
.source "MiPushClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    }
.end annotation


# static fields
.field private static isCrashHandlerSuggested:Z

.field private static mSyncMIIDHelper:Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

.field private static sContext:Landroid/content/Context;

.field private static sCurMsgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->isCrashHandlerSuggested:Z

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sCurMsgId:J

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static accountSetTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1205
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1206
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method static declared-synchronized addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;

    .prologue
    .line 1186
    const-class v3, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v3

    :try_start_0
    const-string v2, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1187
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accept_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1189
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    monitor-exit v3

    return-void

    .line 1186
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static declared-synchronized addAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1152
    const-class v2, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1153
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    monitor-exit v2

    return-void

    .line 1152
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized addAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1135
    const-class v2, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1136
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    monitor-exit v2

    return-void

    .line 1135
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static addPullNotificationTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1225
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1226
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1227
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_pull_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1228
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1229
    return-void
.end method

.method private static addRegRequestTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1237
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1238
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_reg_request"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1241
    return-void
.end method

.method static declared-synchronized addTopic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 1169
    const-class v2, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1170
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "topic_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    monitor-exit v2

    return-void

    .line 1169
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1210
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1211
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 1042
    if-nez p0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not nullable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    return-void
.end method

.method private static checkPermission(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x17

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "result":Z
    if-eqz p0, :cond_1

    .line 192
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    :cond_0
    const/4 v1, 0x1

    .line 211
    :cond_1
    :goto_0
    return v1

    .line 195
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 196
    .local v3, "targetSdkVersion":I
    if-lt v3, v6, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_4

    .line 198
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lcom/xiaomi/channel/commonutils/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 199
    invoke-static {p0, v4}, Lcom/xiaomi/channel/commonutils/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 203
    :cond_4
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "imei":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "sn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static clearExtras(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 625
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 626
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    return-void
.end method

.method public static clearLocalNotificationType(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 720
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->clearLocalNotificationType()V

    .line 721
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 888
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->clearNotification(I)V

    .line 889
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notifyId"    # I

    .prologue
    .line 880
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->clearNotification(I)V

    .line 881
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->clearNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public static disablePush(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 751
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendPushEnableDisableMessage(Z)V

    .line 752
    return-void
.end method

.method private static enableGeo(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getGeoEnableTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1268
    invoke-static {p0, p1}, Lcom/xiaomi/push/service/GeoFenceUtils;->setGeoEnableSwitch(Landroid/content/Context;Z)V

    .line 1269
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/GeoFenceRegMessageProcessor;->reportGeoAuthorizationNotificaion(Landroid/content/Context;Z)V

    .line 1270
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setGeoEnableTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 1272
    :cond_0
    return-void
.end method

.method public static enablePush(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 755
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendPushEnableDisableMessage(Z)V

    .line 756
    return-void
.end method

.method private static forceHandleCrash()V
    .locals 4

    .prologue
    .line 1304
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->ForceHandleCrashSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 1305
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    .line 1307
    .local v0, "forceHandleCrashSwitch":Z
    sget-boolean v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->isCrashHandlerSuggested:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1308
    new-instance v1, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1310
    :cond_0
    return-void
.end method

.method protected static getAcceptTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1220
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1221
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "accept_time"

    const-string v2, "00:00-23:59"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAllAlias(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "mipush_extra"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 589
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 590
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    .local v1, "key":Ljava/lang/String;
    const-string v5, "alias_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 592
    const-string v5, "alias_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getAllTopic(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v3, "topicList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "mipush_extra"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 601
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 602
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v5, "topic_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "**ALL**"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 604
    const-string/jumbo v5, "topic_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getAllUserAccount(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "mipush_extra"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 613
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 614
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, "key":Ljava/lang/String;
    const-string v5, "account_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 616
    const-string v5, "account_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getDefaultSwitch()Z
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isNotMIUI()Z

    move-result v0

    return v0
.end method

.method private static getGeoEnableTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "geoEnable"    # Ljava/lang/String;

    .prologue
    .line 1256
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1257
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected static getOpenFCMPush()Z
    .locals 2

    .prologue
    .line 1026
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getUserSwitch(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v0

    return v0
.end method

.method protected static getOpenHmsPush()Z
    .locals 2

    .prologue
    .line 1022
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getUserSwitch(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v0

    return v0
.end method

.method protected static getOpenOPPOPush()Z
    .locals 2

    .prologue
    .line 1030
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getUserSwitch(Lcom/xiaomi/mipush/sdk/AssemblePush;)Z

    move-result v0

    return v0
.end method

.method public static getRegId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 912
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegID()Ljava/lang/String;

    move-result-object v0

    .line 915
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initEventPerfLogic(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1282
    new-instance v1, Lcom/xiaomi/mipush/sdk/MiPushClient$5;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient$5;-><init>()V

    invoke-static {v1}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->setUploader(Lcom/xiaomi/push/service/clientReport/PushClientReportHelper$Uploader;)V

    .line 1289
    invoke-static {p0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getConfig(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    .line 1291
    .local v0, "config":Lcom/xiaomi/clientreport/data/Config;
    new-instance v1, Lcom/xiaomi/push/service/clientReport/MIPushEventDataProcessor;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/clientReport/MIPushEventDataProcessor;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/xiaomi/push/service/clientReport/MIPushPerfDataProcessor;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/clientReport/MIPushPerfDataProcessor;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/clientreport/manager/ClientReportClient;->init(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V

    .line 1293
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;->forceAttachApplication(Landroid/content/Context;)V

    .line 1294
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/ClientReportHelper;->sendConfigInfo(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config;)V

    .line 1296
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    const-string v4, "context"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    const-string v4, "appID"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    const-string v4, "appToken"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 251
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 252
    sput-object p0, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 254
    :cond_0
    if-eqz p3, :cond_1

    .line 255
    invoke-static/range {p3 .. p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->addPushCallbackClass(Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V

    .line 258
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/ManifestChecker;->asynCheckManifest(Landroid/content/Context;)V

    .line 262
    :cond_2
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getEnvType()I

    move-result v4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/Constants;->getEnvType()I

    move-result v6

    if-eq v4, v6, :cond_4

    const/16 v17, 0x1

    .line 264
    .local v17, "isEnvChange":Z
    :goto_0
    if-nez v17, :cond_5

    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldSendRegRequest(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 265
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->awakePushService()V

    .line 266
    const-string v4, "Could not send  register message within 5s repeatly ."

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 441
    .end local v17    # "isEnvChange":Z
    :cond_3
    :goto_1
    return-void

    .line 262
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 269
    .restart local v17    # "isEnvChange":Z
    :cond_5
    if-nez v17, :cond_14

    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 270
    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->invalidated()Z

    move-result v4

    if-nez v4, :cond_14

    .line 272
    const/4 v4, 0x1

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->getPushMode(Landroid/content/Context;)I

    move-result v6

    if-ne v4, v6, :cond_11

    .line 273
    const-string v4, "callback"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 275
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegID()Ljava/lang/String;

    move-result-object v6

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9, v4, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->awakePushService()V

    .line 286
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->checkVersionNameChanged()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 288
    new-instance v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 289
    .local v7, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 290
    const-string v4, "client_info_update"

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 291
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 292
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 293
    iget-object v4, v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "app_version"

    sget-object v8, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    sget-object v9, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 293
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v4, v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "app_version_code"

    sget-object v8, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    sget-object v9, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 296
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v4, v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "push_sdk_vn"

    const-string v8, "3_6_11"

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v4, v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "push_sdk_vc"

    const/16 v8, 0x7793

    .line 299
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegResource()Ljava/lang/String;

    move-result-object v19

    .line 301
    .local v19, "regResource":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 302
    iget-object v4, v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v6, "deviceid"

    move-object/from16 v0, v19

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v6, v8, v9}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 306
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->uploadCallStack(Landroid/content/Context;)V

    .line 309
    .end local v7    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .end local v19    # "regResource":Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    const-string/jumbo v6, "update_devId"

    const/4 v8, 0x0

    invoke-static {v4, v6, v8}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->getSettingBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 310
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->updateIMEI()V

    .line 311
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    const-string/jumbo v6, "update_devId"

    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Lcom/xiaomi/channel/commonutils/android/PreferenceUtils;->setSettingBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 314
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->checkVirtDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 315
    .local v22, "vdevid":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 317
    new-instance v13, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-direct {v13}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;-><init>()V

    .line 318
    .local v13, "cmd":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 320
    sget-object v4, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_CHK_VDEVID:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v4, v4, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setCmdName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 321
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v12, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getVirtDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v4, :cond_12

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_3
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    if-eqz v4, :cond_13

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    :goto_4
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v13, v12}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setCmdArgs(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 328
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    sget-object v6, Lcom/xiaomi/xmpush/thrift/ActionType;->Command:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v13, v6, v8, v9}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 333
    .end local v12    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "cmd":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    :cond_9
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldPullNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 334
    new-instance v7, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 335
    .restart local v7    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 336
    sget-object v4, Lcom/xiaomi/xmpush/thrift/NotificationType;->PullOfflineMessage:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 337
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 338
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 339
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 341
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addPullNotificationTime(Landroid/content/Context;)V

    .line 394
    .end local v7    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .end local v22    # "vdevid":Ljava/lang/String;
    :cond_a
    :goto_5
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->addRegRequestTime(Landroid/content/Context;)V

    .line 396
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->scheduleOcVersionCheckJob()V

    .line 398
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->scheduleGeoFenceLocUploadJobs()V

    .line 400
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->scheduleDataCollectionJobs(Landroid/content/Context;)V

    .line 402
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->initEventPerfLogic(Landroid/content/Context;)V

    .line 404
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/SyncInfoHelper;->tryToSyncInfo(Landroid/content/Context;)V

    .line 406
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->forceHandleCrash()V

    .line 408
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.xiaomi.xmsf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 409
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/Logger;->getUserLogger()Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaomi/mipush/sdk/Logger;->setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    .line 410
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->setLogLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_b
    :try_start_1
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->mSyncMIIDHelper:Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

    if-nez v4, :cond_c

    .line 415
    new-instance v4, Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->mSyncMIIDHelper:Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

    .line 417
    :cond_c
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->mSyncMIIDHelper:Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;->keepToSyncMIID(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    :goto_6
    :try_start_2
    const-string/jumbo v4, "syncing"

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->DISABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v6, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 423
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->disablePush(Landroid/content/Context;)V

    .line 425
    :cond_d
    const-string/jumbo v4, "syncing"

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->ENABLE_PUSH:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v6, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 426
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->enablePush(Landroid/content/Context;)V

    .line 428
    :cond_e
    const-string/jumbo v4, "syncing"

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_HUAWEI_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v6, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 429
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->syncAssemblePushToken(Landroid/content/Context;)V

    .line 431
    :cond_f
    const-string/jumbo v4, "syncing"

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_FCM_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v6, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 432
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->syncAssembleFCMPushToken(Landroid/content/Context;)V

    .line 434
    :cond_10
    const-string/jumbo v4, "syncing"

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/OperatePushHelper;

    move-result-object v6

    sget-object v8, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_COS_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    invoke-virtual {v6, v8}, Lcom/xiaomi/mipush/sdk/OperatePushHelper;->getSyncStatus(Lcom/xiaomi/mipush/sdk/RetryType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 435
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->syncAssembleCOSPushToken(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 437
    .end local v17    # "isEnvChange":Z
    :catch_0
    move-exception v15

    .line 439
    .local v15, "e":Ljava/lang/Throwable;
    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 277
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v17    # "isEnvChange":Z
    :cond_11
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v5, "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v4, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v4, v4, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v14

    .line 282
    .local v14, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4, v14}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto/16 :goto_2

    .line 324
    .end local v5    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    .restart local v12    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "cmd":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .restart local v22    # "vdevid":Ljava/lang/String;
    :cond_12
    const-string v4, ""

    goto/16 :goto_3

    .line 325
    :cond_13
    const-string v4, ""

    goto/16 :goto_4

    .line 346
    .end local v12    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "cmd":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .end local v22    # "vdevid":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v19

    .line 349
    .restart local v19    # "regResource":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->clear()V

    .line 350
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/Constants;->getEnvType()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->setEnvType(I)V

    .line 351
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->putAppIDAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->getInstance()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    move-result-object v4

    const-string v6, "com.xiaomi.xmpushsdk.tinydataPending.appId"

    invoke-virtual {v4, v6}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->processPendingList(Ljava/lang/String;)V

    .line 353
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearExtras(Landroid/content/Context;)V

    .line 355
    new-instance v18, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct/range {v18 .. v18}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V

    .line 356
    .local v18, "regMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 357
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 358
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setToken(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 360
    invoke-virtual/range {v18 .. v19}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setDeviceId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 361
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppVersion(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppVersionCode(I)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 364
    const-string v4, "3_6_11"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setPushSdkVersionName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 365
    const/16 v4, 0x7793

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setPushSdkVersionCode(I)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 366
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAndroidId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 367
    sget-object v4, Lcom/xiaomi/xmpush/thrift/RegistrationReason;->Init:Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setReason(Lcom/xiaomi/xmpush/thrift/RegistrationReason;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 368
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v4

    if-nez v4, :cond_17

    .line 369
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 370
    .local v16, "imei":Ljava/lang/String;
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetSubIMEIS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 371
    .local v21, "subImeis":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 372
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isNotMIUI()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 373
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 376
    :cond_15
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setImei(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 378
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 379
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->quicklyGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setImeiMd5(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 382
    .end local v16    # "imei":Ljava/lang/String;
    .end local v21    # "subImeis":Ljava/lang/String;
    :cond_17
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setSerial(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 383
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSpaceId()I

    move-result v20

    .line 384
    .local v20, "spaceId":I
    if-ltz v20, :cond_18

    .line 385
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setSpaceId(I)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 388
    :cond_18
    sget-object v4, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->register(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V

    .line 389
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->uploadCallStack(Landroid/content/Context;)V

    .line 390
    const-string v4, "mipush_extra"

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "mipush_registed"

    const/4 v8, 0x1

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_5

    .line 418
    .end local v18    # "regMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    .end local v19    # "regResource":Ljava/lang/String;
    .end local v20    # "spaceId":I
    :catch_1
    move-exception v15

    .line 419
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6
.end method

.method static reInitialize(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/RegistrationReason;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Lcom/xiaomi/xmpush/thrift/RegistrationReason;

    .prologue
    .line 631
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->appRegistered()Z

    move-result v4

    if-nez v4, :cond_0

    .line 654
    :goto_0
    return-void

    .line 635
    :cond_0
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "regResource":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "appId":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppToken()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "appToken":Ljava/lang/String;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->clear()V

    .line 639
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/Constants;->getEnvType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->setEnvType(I)V

    .line 640
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v4

    .line 641
    invoke-virtual {v4, v0, v1, v3}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->putAppIDAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;-><init>()V

    .line 644
    .local v2, "regMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 645
    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 646
    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setToken(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 647
    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setDeviceId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-static {p0, v4}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setAppVersion(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 651
    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;->setReason(Lcom/xiaomi/xmpush/thrift/RegistrationReason;)Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;

    .line 652
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->register(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V

    goto :goto_0
.end method

.method private static registerNetworkReceiver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    .local v0, "appContext":Landroid/content/Context;
    new-instance v3, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lcom/xiaomi/mipush/sdk/PushConfiguration;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/PushConfiguration;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/PushConfiguration;)V

    .line 142
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/PushConfiguration;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "pushConfiguration"    # Lcom/xiaomi/mipush/sdk/PushConfiguration;

    .prologue
    .line 146
    invoke-static {}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->isRegister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerNetworkReceiver(Landroid/content/Context;)V

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/mipush/sdk/AssemblePushCollectionsManager;->setConfiguration(Lcom/xiaomi/mipush/sdk/PushConfiguration;)V

    .line 151
    invoke-virtual {p3}, Lcom/xiaomi/mipush/sdk/PushConfiguration;->getGeoEnable()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->enableGeo(Landroid/content/Context;Z)V

    .line 152
    invoke-static {}, Lcom/xiaomi/mipush/sdk/AggregationSDKMonitor;->getRegisterPushCallStack()V

    .line 153
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/MiPushClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method static declared-synchronized removeAcceptTime(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1193
    const-class v3, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v3

    :try_start_0
    const-string v2, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1194
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1195
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accept_time"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1196
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    monitor-exit v3

    return-void

    .line 1193
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static declared-synchronized removeAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 1157
    const-class v2, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1158
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    monitor-exit v2

    return-void

    .line 1157
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized removeAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1140
    const-class v2, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1141
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    monitor-exit v2

    return-void

    .line 1140
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized removeAllAccounts(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1162
    const-class v3, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1163
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1164
    .local v0, "account":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1162
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1166
    .restart local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v3

    return-void
.end method

.method static declared-synchronized removeAllAliases(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1145
    const-class v3, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1146
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1147
    .local v0, "alias":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeAlias(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1145
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1149
    .restart local v1    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v3

    return-void
.end method

.method static declared-synchronized removeAllTopics(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1179
    const-class v3, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1180
    .local v1, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1181
    .local v0, "topic":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->removeTopic(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1179
    .end local v0    # "topic":Ljava/lang/String;
    .end local v1    # "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1183
    .restart local v1    # "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v3

    return-void
.end method

.method static declared-synchronized removeTopic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 1174
    const-class v2, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v2

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1175
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "topic_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    monitor-exit v2

    return-void

    .line 1174
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static reportIgnoreRegMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgid"    # Ljava/lang/String;
    .param p2, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 700
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 701
    .local v1, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "do not report clicked message"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 712
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 707
    const-string v0, "bar:click"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 708
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 709
    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 710
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 668
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>()V

    .line 669
    .local v0, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 670
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 671
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setDescription(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 672
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setTitle(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 673
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setNotifyId(I)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 674
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setNotifyType(I)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 675
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setPassThrough(I)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 676
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 677
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method static reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgid"    # Ljava/lang/String;
    .param p2, "metaInfo"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 681
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    .line 682
    .local v0, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->checkAppInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 692
    :goto_0
    const-string v1, "bar:click"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 693
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 694
    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setRequireAck(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 695
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 697
    :goto_1
    return-void

    .line 686
    :cond_0
    const-string v1, "do not report clicked message"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    goto :goto_0
.end method

.method private static scheduleDataCollectionJobs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigKey;->DataCollectionSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v0

    .line 479
    .local v0, "key":I
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    .line 480
    invoke-static {v1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getDefaultSwitch()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getInstance()Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/CDActionProviderImpl;

    invoke-direct {v2, p0}, Lcom/xiaomi/mipush/sdk/CDActionProviderImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->setCDActionProvider(Lcom/xiaomi/push/mpcd/CDActionProvider;)V

    .line 482
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/MiPushClient$2;

    invoke-direct {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient$2;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;I)V

    .line 489
    :cond_0
    return-void
.end method

.method private static scheduleGeoFenceLocUploadJobs()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 454
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/GeoFenceUtils;->getGeoEnableSwitch(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    .local v0, "frequency":I
    :cond_0
    :goto_0
    return-void

    .line 457
    .end local v0    # "frequency":I
    :cond_1
    const-string v1, "com.xiaomi.xmsf"

    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->UploadGeoAppLocSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->isGlobalVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;->reportLocInfo(Landroid/content/Context;Z)V

    .line 470
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->UploadWIFIGeoLocFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 471
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    const/16 v3, 0x384

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 472
    .restart local v0    # "frequency":I
    const/16 v1, 0x3c

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 473
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;

    sget-object v3, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mipush/sdk/GeoFenceNetInfoUploadJob;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2, v0, v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    goto :goto_0
.end method

.method private static scheduleOcVersionCheckJob()V
    .locals 4

    .prologue
    .line 447
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ConfigKey;->OcVersionCheckFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 448
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v2

    const v3, 0x15180

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    .line 449
    .local v0, "period":I
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/OcVersionCheckJob;

    sget-object v3, Lcom/xiaomi/mipush/sdk/MiPushClient;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/xiaomi/mipush/sdk/OcVersionCheckJob;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addRepeatJob(Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;II)Z

    .line 451
    return-void
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v0, v0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_0
    return-void
.end method

.method protected static setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 926
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v7, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_0
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 932
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->getPushMode(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 933
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onCommandResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    .line 957
    :goto_0
    return-void

    .line 935
    :cond_1
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    .line 937
    .local v0, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    .line 939
    .end local v0    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    :cond_2
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 940
    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t cancel alias for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->obfuscateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unseted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 942
    :cond_3
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->accountSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 944
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->getPushMode(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 945
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onCommandResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 947
    :cond_4
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v6, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    .line 949
    .restart local v0    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto/16 :goto_0

    .line 951
    .end local v0    # "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    :cond_5
    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v1, v1, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 952
    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->accountSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t cancel account for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->obfuscateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unseted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 955
    :cond_6
    invoke-static {p0, p1, v7, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 960
    .local p2, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    :goto_0
    return-void

    .line 963
    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;-><init>()V

    .line 964
    .local v1, "setConfigMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 965
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 966
    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setCmdName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 967
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 968
    .local v0, "argument":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->addToCmdArgs(Ljava/lang/String;)V

    goto :goto_1

    .line 970
    .end local v0    # "argument":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 971
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    .line 972
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/ActionType;->Command:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0
.end method

.method static declared-synchronized setGeoEnableTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "geoEnable"    # Ljava/lang/String;

    .prologue
    .line 1249
    const-class v3, Lcom/xiaomi/mipush/sdk/MiPushClient;

    monitor-enter v3

    :try_start_0
    const-string v2, "mipush_extra"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1250
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1251
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1252
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    monitor-exit v3

    return-void

    .line 1249
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v0, v0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_0
    return-void
.end method

.method private static shouldPullNotification(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1232
    const-string v2, "mipush_extra"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1233
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "last_pull_notification"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static shouldSendRegRequest(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1244
    const-string v2, "mipush_extra"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1245
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "last_reg_request"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static shouldUseMIUIPush(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->shouldUseMIUIPush()Z

    move-result v0

    return v0
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 810
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    .line 815
    new-instance v7, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    invoke-direct {v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;-><init>()V

    .line 816
    .local v7, "subscribeMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 817
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 818
    invoke-virtual {v7, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 820
    invoke-virtual {v7, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;

    .line 821
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Subscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0, v7, v2, v4}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0

    .line 824
    .end local v7    # "subscribeMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionSubscription;
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->getPushMode(Landroid/content/Context;)I

    move-result v5

    if-ne v0, v5, :cond_3

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    .line 825
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->onSubscribeResult(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v0, v0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v6

    .line 831
    .local v6, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    invoke-static {p0, v6}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0
.end method

.method public static syncAssembleCOSPushToken(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 767
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_COS_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendAssemblePushTokenCommon(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 768
    return-void
.end method

.method public static syncAssembleFCMPushToken(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 763
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_FCM_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendAssemblePushTokenCommon(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 764
    return-void
.end method

.method public static syncAssemblePushToken(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 759
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/RetryType;->UPLOAD_HUAWEI_TOKEN:Lcom/xiaomi/mipush/sdk/RetryType;

    sget-object v3, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendAssemblePushTokenCommon(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/RetryType;Lcom/xiaomi/mipush/sdk/AssemblePush;)V

    .line 760
    return-void
.end method

.method public static topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 1200
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1201
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static unregisterPush(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 728
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->unregisterAssemblePush(Landroid/content/Context;)V

    .line 729
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->checkAppInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;-><init>()V

    .line 733
    .local v0, "unregMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 734
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 735
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getRegID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setRegId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 736
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setToken(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;

    .line 738
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->unregister(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)V

    .line 739
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->removeAllPushCallbackClass()V

    .line 740
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->invalidate()V

    .line 741
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearLocalNotificationType(Landroid/content/Context;)V

    .line 742
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    .line 743
    sget-object v1, Lcom/xiaomi/mipush/sdk/MiPushClient;->mSyncMIIDHelper:Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

    if-eqz v1, :cond_1

    .line 745
    invoke-static {p0}, Lcom/xiaomi/push/service/MIIDManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/MIIDManager;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/MiPushClient;->mSyncMIIDHelper:Lcom/xiaomi/mipush/sdk/SyncMIIDHelper;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/MIIDManager;->removeMIIDUpdateCallback(Lcom/xiaomi/push/service/MIIDManager$MIIDUpdatedCallback;)V

    .line 747
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearExtras(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 800
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v0, v0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public static unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 843
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->checkAppInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t cancel subscribe for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unsubscribed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;-><init>()V

    .line 851
    .local v0, "unsubscribeMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;
    invoke-static {}, Lcom/xiaomi/push/service/PacketHelper;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 852
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v1

    .line 853
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 854
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 855
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 856
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscription;

    .line 857
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushServiceClient;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->UnSubscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/PushServiceClient;->sendMessage(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    goto :goto_0
.end method

.method private static updateIMEI()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/mipush/sdk/MiPushClient$3;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 525
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 526
    return-void
.end method
