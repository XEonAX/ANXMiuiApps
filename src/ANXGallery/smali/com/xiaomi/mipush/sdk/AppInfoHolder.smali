.class public Lcom/xiaomi/mipush/sdk/AppInfoHolder;
.super Ljava/lang/Object;
.source "AppInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/xiaomi/mipush/sdk/AppInfoHolder;


# instance fields
.field appRegRequestId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHybridAppInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->init()V

    .line 72
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->sInstance:Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->sInstance:Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->sInstance:Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->sInstance:Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const-string v0, "mipush"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    new-instance v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mHybridAppInfoCache:Ljava/util/Map;

    .line 77
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    const-string v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getSimpleDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->deviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string/jumbo v2, "vName"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string/jumbo v2, "valid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    .line 91
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "paused"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isPaused:Z

    .line 92
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "envType"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->envType:I

    .line 93
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "regResource"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regResource:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    const-string v2, "appRegion"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appRegion:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public appRegistered()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isVaild()Z

    move-result v0

    return v0
.end method

.method public appRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isVaild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkAppInfo()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkVersionNameChanged()Z
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "curVersionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->clear()V

    .line 156
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->appToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvType()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->envType:I

    return v0
.end method

.method public getRegID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regID:Ljava/lang/String;

    return-object v0
.end method

.method public getRegResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regResource:Ljava/lang/String;

    return-object v0
.end method

.method public getRegSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->regSecret:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->invalidate()V

    .line 368
    return-void
.end method

.method public invalidated()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->isPaused:Z

    return v0
.end method

.method public putAppIDAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "regResource"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->setIdAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public putRegIDAndSecret(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "regID"    # Ljava/lang/String;
    .param p2, "regSecret"    # Ljava/lang/String;
    .param p3, "appRegion"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->setRegIdAndSecret(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public saveHybridAppInfo(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;)V
    .locals 4
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "clientInfoData"    # Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    .prologue
    .line 181
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mHybridAppInfoCache:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->toString(Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "appInfoStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hybrid_app_info_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public setEnvType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 386
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->setEnvType(I)V

    .line 387
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 388
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 389
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "envType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 390
    return-void
.end method

.method public setPaused(Z)V
    .locals 3
    .param p1, "paused"    # Z

    .prologue
    .line 379
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    invoke-virtual {v2, p1}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->setPaused(Z)V

    .line 380
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 381
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "paused"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    return-void
.end method

.method public updateVersionName(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->mInfoData:Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    iput-object p1, v2, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->versionName:Ljava/lang/String;

    .line 108
    return-void
.end method
