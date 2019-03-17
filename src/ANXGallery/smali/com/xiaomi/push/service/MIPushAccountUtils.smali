.class public Lcom/xiaomi/push/service/MIPushAccountUtils;
.super Ljava/lang/Object;
.source "MIPushAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;
    }
.end annotation


# static fields
.field private static accountChangeListener:Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;

.field private static sAccount:Lcom/xiaomi/push/service/MIPushAccount;


# direct methods
.method public static clearAccount(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const-string v1, "mipush_account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    .line 248
    invoke-static {}, Lcom/xiaomi/push/service/MIPushAccountUtils;->notifyAccountChange()V

    .line 249
    return-void
.end method

.method public static getAccountURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-static {p0}, Lcom/xiaomi/push/service/AppRegionStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/AppRegionStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/AppRegionStorage;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "appRegion":Ljava/lang/String;
    const-string v1, "/pass/v2/register"

    .line 206
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsOneBoxBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/smack/ConnectionConfiguration;->XMPP_SERVER_HOST_ONEBOX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":9085"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    :goto_0
    return-object v2

    .line 208
    :cond_0
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Global:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://register.xmpush.global.xiaomi.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_1
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Europe:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://fr.register.xmpush.global.xiaomi.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 212
    :cond_2
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->Russia:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://ru.register.xmpush.global.xiaomi.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 214
    :cond_3
    sget-object v2, Lcom/xiaomi/channel/commonutils/android/Region;->India:Lcom/xiaomi/channel/commonutils/android/Region;

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/android/Region;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://idmb.register.xmpush.global.xiaomi.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 217
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsSandBoxBuild()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "sandbox.xmpush.xiaomi.com"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    const-string v2, "register.xmpush.xiaomi.com"

    goto :goto_1
.end method

.method public static declared-synchronized getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    const-class v11, Lcom/xiaomi/push/service/MIPushAccountUtils;

    monitor-enter v11

    :try_start_0
    sget-object v12, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    if-eqz v12, :cond_1

    .line 55
    sget-object v0, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    :goto_0
    monitor-exit v11

    return-object v0

    .line 58
    :cond_1
    :try_start_1
    const-string v12, "mipush_account"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 60
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "uuid"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "uuid":Ljava/lang/String;
    const-string/jumbo v12, "token"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "token":Ljava/lang/String;
    const-string v12, "security"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "security":Ljava/lang/String;
    const-string v12, "app_id"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "appId":Ljava/lang/String;
    const-string v12, "app_token"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "appToken":Ljava/lang/String;
    const-string v12, "package_name"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "packageName":Ljava/lang/String;
    const-string v12, "device_id"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "deviceId":Ljava/lang/String;
    const-string v12, "env_type"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 69
    .local v7, "envType":I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "a-"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 70
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "device_id"

    invoke-interface {v12, v13, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 75
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "currentDeviceId":Ljava/lang/String;
    const-string v12, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 80
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 81
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 82
    const-string v12, "erase the old account."

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->clearAccount(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 54
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "security":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "appToken":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "envType":I
    .end local v8    # "currentDeviceId":Ljava/lang/String;
    .end local v9    # "deviceId":Ljava/lang/String;
    .end local v10    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 87
    .restart local v1    # "uuid":Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    .restart local v3    # "security":Ljava/lang/String;
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v5    # "appToken":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "envType":I
    .restart local v8    # "currentDeviceId":Ljava/lang/String;
    .restart local v9    # "deviceId":Ljava/lang/String;
    .restart local v10    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    new-instance v0, Lcom/xiaomi/push/service/MIPushAccount;

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/service/MIPushAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    .line 88
    sget-object v0, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static isMIUIPush(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static notifyAccountChange()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/xiaomi/push/service/MIPushAccountUtils;->accountChangeListener:Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/xiaomi/push/service/MIPushAccountUtils;->accountChangeListener:Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;

    invoke-interface {v0}, Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;->onChange()V

    .line 259
    :cond_0
    return-void
.end method

.method public static persist(Landroid/content/Context;Lcom/xiaomi/push/service/MIPushAccount;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushAccount"    # Lcom/xiaomi/push/service/MIPushAccount;

    .prologue
    .line 228
    const-string v2, "mipush_account"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "uuid"

    iget-object v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v2, "security"

    iget-object v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->security:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string/jumbo v2, "token"

    iget-object v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->token:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->appId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v2, "package_name"

    iget-object v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v2, "app_token"

    iget-object v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->appToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v2, "device_id"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v2, "env_type"

    iget v3, p1, Lcom/xiaomi/push/service/MIPushAccount;->envType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    invoke-static {}, Lcom/xiaomi/push/service/MIPushAccountUtils;->notifyAccountChange()V

    .line 241
    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/MIPushAccount;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    const-class v28, Lcom/xiaomi/push/service/MIPushAccountUtils;

    monitor-enter v28

    :try_start_0
    new-instance v20, Ljava/util/TreeMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeMap;-><init>()V

    .line 97
    .local v20, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "devid"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "devid1"

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getDeviceId1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/16 v21, 0x0

    .line 101
    .local v21, "res":Ljava/lang/String;
    sget-object v3, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    iget-object v3, v3, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const-string/jumbo v3, "uuid"

    sget-object v9, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    iget-object v9, v9, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v3, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    iget-object v3, v3, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 105
    .local v16, "index":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_0

    .line 106
    sget-object v3, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;

    iget-object v3, v3, Lcom/xiaomi/push/service/MIPushAccount;->account:Ljava/lang/String;

    add-int/lit8 v9, v16, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 110
    .end local v16    # "index":I
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getVirtDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 111
    .local v27, "vdevid":Ljava/lang/String;
    if-eqz v27, :cond_1

    .line 112
    const-string/jumbo v3, "vdevid"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "gaid":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    const-string v3, "gaid"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->isMIUIPush(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v6, "1000271"

    .line 121
    .local v6, "finalAppId":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->isMIUIPush(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v7, "420100086271"

    .line 122
    .local v7, "finalAppToken":Ljava/lang/String;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->isMIUIPush(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v8, "com.xiaomi.xmsf"

    .line 123
    .local v8, "finalPackageName":Ljava/lang/String;
    :goto_2
    const-string v3, "appid"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "apptoken"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    const/16 v17, 0x0

    .line 128
    .local v17, "info":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v9, 0x4000

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 134
    :goto_3
    :try_start_2
    const-string v9, "appversion"

    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object/from16 v0, v20

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "sdkversion"

    const/16 v9, 0x7793

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "packagename"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v3, "model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v3, "board"

    sget-object v9, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 142
    const-string v15, ""

    .line 143
    .local v15, "imeiMd5":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, "imei":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 147
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->blockingGetSubIMEISMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 148
    .local v25, "subImeisMd5":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 151
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 152
    const-string v3, "imei_md5"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v14    # "imei":Ljava/lang/String;
    .end local v15    # "imeiMd5":Ljava/lang/String;
    .end local v25    # "subImeisMd5":Ljava/lang/String;
    :cond_5
    const-string v3, "os"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v29, "-"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v29, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSpaceId()I

    move-result v24

    .line 157
    .local v24, "spaceId":I
    if-ltz v24, :cond_6

    .line 158
    const-string/jumbo v3, "space_id"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 161
    .local v19, "macAddress":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 163
    const-string v3, "mac_address"

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_7
    const-string v3, "android_id"

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v3, "brand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getAccountURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Lcom/xiaomi/channel/commonutils/network/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/xiaomi/channel/commonutils/network/HttpResponse;

    move-result-object v13

    .line 169
    .local v13, "httpResponse":Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    const-string v22, ""

    .line 170
    .local v22, "result":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 171
    invoke-virtual {v13}, Lcom/xiaomi/channel/commonutils/network/HttpResponse;->getResponseString()Ljava/lang/String;

    move-result-object v22

    .line 174
    :cond_8
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 175
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v18, "json":Lorg/json/JSONObject;
    const-string v3, "code"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    .line 177
    const-string v3, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 178
    .local v10, "data":Lorg/json/JSONObject;
    const-string/jumbo v3, "ssecurity"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "ssecurity":Ljava/lang/String;
    const-string/jumbo v3, "token"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v3, "userId"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 182
    .local v26, "userId":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "an"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v9, 0x6

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 185
    :cond_9
    new-instance v2, Lcom/xiaomi/push/service/MIPushAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "@xiaomi.com/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->getEnvType()I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/push/service/MIPushAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    .local v2, "account":Lcom/xiaomi/push/service/MIPushAccount;
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/MIPushAccountUtils;->persist(Landroid/content/Context;Lcom/xiaomi/push/service/MIPushAccount;)V

    .line 190
    const-string/jumbo v3, "vdevid"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 191
    .local v23, "retVdevid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->updateVirtDevId(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    sput-object v2, Lcom/xiaomi/push/service/MIPushAccountUtils;->sAccount:Lcom/xiaomi/push/service/MIPushAccount;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v2    # "account":Lcom/xiaomi/push/service/MIPushAccount;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "ssecurity":Ljava/lang/String;
    .end local v10    # "data":Lorg/json/JSONObject;
    .end local v18    # "json":Lorg/json/JSONObject;
    .end local v23    # "retVdevid":Ljava/lang/String;
    .end local v26    # "userId":Ljava/lang/String;
    :goto_5
    monitor-exit v28

    return-object v2

    .end local v6    # "finalAppId":Ljava/lang/String;
    .end local v7    # "finalAppToken":Ljava/lang/String;
    .end local v8    # "finalPackageName":Ljava/lang/String;
    .end local v13    # "httpResponse":Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "macAddress":Ljava/lang/String;
    .end local v22    # "result":Ljava/lang/String;
    .end local v24    # "spaceId":I
    :cond_a
    move-object/from16 v6, p2

    .line 120
    goto/16 :goto_0

    .restart local v6    # "finalAppId":Ljava/lang/String;
    :cond_b
    move-object/from16 v7, p3

    .line 121
    goto/16 :goto_1

    .restart local v7    # "finalAppToken":Ljava/lang/String;
    :cond_c
    move-object/from16 v8, p1

    .line 122
    goto/16 :goto_2

    .line 130
    .restart local v8    # "finalPackageName":Ljava/lang/String;
    .restart local v17    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 96
    .end local v6    # "finalAppId":Ljava/lang/String;
    .end local v7    # "finalAppToken":Ljava/lang/String;
    .end local v8    # "finalPackageName":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "gaid":Ljava/lang/String;
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    .end local v20    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "res":Ljava/lang/String;
    .end local v27    # "vdevid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v28

    throw v3

    .line 134
    .restart local v6    # "finalAppId":Ljava/lang/String;
    .restart local v7    # "finalAppToken":Ljava/lang/String;
    .restart local v8    # "finalPackageName":Ljava/lang/String;
    .restart local v12    # "gaid":Ljava/lang/String;
    .restart local v17    # "info":Landroid/content/pm/PackageInfo;
    .restart local v20    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "res":Ljava/lang/String;
    .restart local v27    # "vdevid":Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v3, "0"

    goto/16 :goto_4

    .line 195
    .restart local v13    # "httpResponse":Lcom/xiaomi/channel/commonutils/network/HttpResponse;
    .restart local v18    # "json":Lorg/json/JSONObject;
    .restart local v19    # "macAddress":Ljava/lang/String;
    .restart local v22    # "result":Ljava/lang/String;
    .restart local v24    # "spaceId":I
    :cond_e
    const-string v3, "code"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v9, "description"

    .line 196
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 195
    move-object/from16 v0, p0

    invoke-static {v0, v3, v9}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyRegisterError(Landroid/content/Context;ILjava/lang/String;)V

    .line 197
    invoke-static/range {v22 .. v22}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    .end local v18    # "json":Lorg/json/JSONObject;
    :cond_f
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public static setAccountChangeListener(Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;

    .prologue
    .line 252
    sput-object p0, Lcom/xiaomi/push/service/MIPushAccountUtils;->accountChangeListener:Lcom/xiaomi/push/service/MIPushAccountUtils$PushAccountChangeListener;

    .line 253
    return-void
.end method
