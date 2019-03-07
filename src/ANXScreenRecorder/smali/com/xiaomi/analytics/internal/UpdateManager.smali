.class Lcom/xiaomi/analytics/internal/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;
    }
.end annotation


# static fields
.field private static final CHECK_UPDATE_INTERVAL:J

.field private static final KEY_ANDROID_VERSION:Ljava/lang/String; = "d"

.field private static final KEY_API_VER:Ljava/lang/String; = "av"

.field private static final KEY_CORE_VER:Ljava/lang/String; = "cv"

.field private static final KEY_IMEI:Ljava/lang/String; = "i"

.field private static final KEY_MIUI_BUILD:Ljava/lang/String; = "f"

.field private static final KEY_MIUI_VERSION:Ljava/lang/String; = "v"

.field private static final KEY_MODEL:Ljava/lang/String; = "m"

.field private static final KEY_NET:Ljava/lang/String; = "n"

.field private static final KEY_NONCE:Ljava/lang/String; = "nonce"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "p"

.field private static final KEY_REGION:Ljava/lang/String; = "r"

.field private static final KEY_TIME:Ljava/lang/String; = "updateTime"

.field private static final KEY_TS:Ljava/lang/String; = "ts"

.field private static final PREFS_UPDATE:Ljava/lang/String; = "analytics_updater"

.field private static final SALT:Ljava/lang/String; = "miui_sdkconfig_jafej!@#)(*e@!#"

.field private static final TAG:Ljava/lang/String; = "UpdateManager"

.field private static final UPDATE_SERVER:Ljava/lang/String; = "https://sdkconfig.ad.xiaomi.com/api/checkupdate/lastusefulversion2?"

.field private static final UPDATE_SERVER_INTL:Ljava/lang/String; = "https://sdkconfig.ad.intl.xiaomi.com/api/checkupdate/lastusefulversion2?"

.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadUrl:Ljava/lang/String;

.field private mDownloader:Ljava/lang/Runnable;

.field private mForce:I

.field private mMd5:Ljava/lang/String;

.field private mOutPath:Ljava/lang/String;

.field private mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->HALF_DAY_IN_MS:I

    int-to-long v0, v0

    sput-wide v0, Lcom/xiaomi/analytics/internal/UpdateManager;->CHECK_UPDATE_INTERVAL:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloadUrl:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mMd5:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/UpdateManager$1;-><init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdater:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/xiaomi/analytics/internal/UpdateManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/UpdateManager$2;-><init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloader:Ljava/lang/Runnable;

    .line 72
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->getNonce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaomi/analytics/internal/UpdateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mForce:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/UpdateManager;->parseTs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/xiaomi/analytics/internal/UpdateManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/UpdateManager;->saveUpdateTime(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mOutPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/analytics/internal/UpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/UpdateManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->notifyApkUpdated()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/UpdateManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-class v1, Lcom/xiaomi/analytics/internal/UpdateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/UpdateManager;->sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/UpdateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/UpdateManager;->sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/UpdateManager;->sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getLastUpdateTime()J
    .locals 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "analytics_updater"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "updateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 106
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNonce()Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 120
    .local v1, "r":Ljava/util/Random;
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 124
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 122
    :catch_0
    move-exception v2

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private notifyApkUpdated()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 277
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mOutPath:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mForce:I

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;->onApkUpdated(Ljava/lang/String;Z)V

    .line 280
    :cond_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseTs(Ljava/lang/String;)J
    .locals 2
    .param p1, "failMsg"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 222
    :goto_0
    return-wide v0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private declared-synchronized saveUpdateTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "analytics_updater"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 112
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "updateTime"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public checkUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "outApkPath"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "UpdateManager"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/MIUI;->shouldNotAccessNetworkOrLocation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "UpdateManager"

    const-string v1, "checkUpdate "

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mOutPath:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdater:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/TaskRunner;->execute(Ljava/lang/Runnable;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/analytics/internal/UpdateManager;->saveUpdateTime(J)V

    goto :goto_0
.end method

.method public needCheckUpdate()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v4, "UpdateManager"

    invoke-static {v3, v4}, Lcom/xiaomi/analytics/internal/util/MIUI;->shouldNotAccessNetworkOrLocation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/Analytics;->isUpdateEnable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 94
    const-string v3, "UpdateManager"

    const-string v4, "Updating is disabled."

    invoke-static {v3, v4}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->getLastUpdateTime()J

    move-result-wide v0

    .line 98
    .local v0, "lastTime":J
    const-string v3, "UpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last update check time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sget-wide v6, Lcom/xiaomi/analytics/internal/UpdateManager;->CHECK_UPDATE_INTERVAL:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 102
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setUpdateListener(Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;)V
    .locals 0
    .param p1, "updateListener"    # Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    .line 77
    return-void
.end method
