.class public Lcom/xiaomi/analytics/internal/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;
    }
.end annotation


# static fields
.field private static final ANALYTICS_CORE_ADAPTED_FOR_ANDROID_P:Ljava/lang/String; = "2.7.3"

.field private static final ASSET_CORE_APK_NAME:Ljava/lang/String; = "analytics_asset.apk"

.field private static final ASSET_LIB_DIR:Ljava/lang/String; = "/asset_lib/"

.field private static final CORE_APK_NAME:Ljava/lang/String; = "analytics.apk"

.field private static final LIB_DIR:Ljava/lang/String; = "/lib/"

.field private static final PREF_KEY_PREVIOUS_LOAD_DEX:Ljava/lang/String; = "pld"

.field private static final SCREEN_OFF_STABLE_INTERVAL:I

.field private static final SDK_ROOT_FOLDER:Ljava/lang/String; = "analytics"

.field private static final TAG:Ljava/lang/String; = "SdkManager"

.field private static final VERSION_CODES_PIE:I = 0x1c

.field private static sFileLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

.field private static sUseSysAnalyticsOnly:Z


# instance fields
.field private dexInitTask:Ljava/lang/Runnable;

.field private mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

.field private mAnalyticsUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

.field private mContext:Landroid/content/Context;

.field private mDontUseSysAnalytics:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeavyWorker:Ljava/lang/Runnable;

.field private volatile mInitialized:Z

.field private mLastScreenOffTime:J

.field private mLastUpdateCheck:J

.field private mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

.field private mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

.field private mScreenOff:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

.field private mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

.field private mUpdateChecker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/analytics/internal/SdkManager;->SCREEN_OFF_STABLE_INTERVAL:I

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/analytics/internal/SdkManager;->sUseSysAnalyticsOnly:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastUpdateCheck:J

    .line 58
    iput-boolean v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    .line 59
    iput-boolean v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mDontUseSysAnalytics:Z

    .line 64
    iput-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 154
    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$1;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mUpdateChecker:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$2;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHeavyWorker:Ljava/lang/Runnable;

    .line 320
    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$3;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalyticsUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    .line 380
    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$4;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 413
    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$5;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->dexInitTask:Ljava/lang/Runnable;

    .line 67
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    sput-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sFileLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "api-sdkmgr"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .line 76
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/UpdateManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalyticsUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/internal/UpdateManager;->setUpdateListener(Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;)V

    .line 77
    sget-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHeavyWorker:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadAssetAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadLocalAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaomi/analytics/internal/SdkManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->savePreviousLoadDex(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadDexUnderScreenOff()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->doCheckUpdate()V

    return-void
.end method

.method static synthetic access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/xiaomi/analytics/internal/SdkManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/analytics/internal/SdkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/xiaomi/analytics/internal/SdkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getScreenOffStableInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkApkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaomi/analytics/internal/SdkManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/SdkManager;->postDexInit(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/xiaomi/analytics/internal/SdkManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaomi/analytics/internal/SdkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->isScreenOffStabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sFileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->prepareDirs()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/analytics/internal/SdkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mDontUseSysAnalytics:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/xiaomi/analytics/internal/SdkManager;->sUseSysAnalyticsOnly:Z

    return v0
.end method

.method static synthetic access$700(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadSysAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/SdkManager;
    .param p1, "x1"    # Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->notifyAnalyticsReady(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    return-void
.end method

.method private declared-synchronized doCheckUpdate()V
    .locals 6

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    sget v2, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_HOUR_IN_MS:I

    int-to-long v0, v2

    .line 148
    .local v0, "hour":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastUpdateCheck:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastUpdateCheck:J

    .line 150
    sget-object v2, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mUpdateChecker:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "hour":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getAssetApkPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "analytics_asset.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAssetSoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/asset_lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-class v1, Lcom/xiaomi/analytics/internal/SdkManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPreviousLoadDex()Z
    .locals 6

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, "res":Z
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v4, "analytics_api"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 365
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "pld"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SdkManager"

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPreviousLoadDex exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getScreenOffStableInterval()I
    .locals 1

    .prologue
    .line 439
    sget-boolean v0, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/xiaomi/analytics/internal/SdkManager;->SCREEN_OFF_STABLE_INTERVAL:I

    goto :goto_0
.end method

.method private getSdkApkPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "analytics.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSdkRootFolder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v2, "analytics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAndroidPOrAbove()Z
    .locals 2

    .prologue
    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isApkSuitableForAndroidPOrAbove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 448
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 449
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 450
    .local v2, "verName":Ljava/lang/String;
    const-string v4, "SdkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/xiaomi/analytics/internal/Version;

    invoke-direct {v4, v2}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/xiaomi/analytics/internal/Version;

    const-string v6, "2.7.3"

    invoke-direct {v5, v6}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4, v5}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_0

    .line 459
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "verName":Ljava/lang/String;
    :goto_0
    return v3

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SdkManager"

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isApkSuitableForAndroidPOrAbove exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isScreenOffStabled()Z
    .locals 6

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getScreenOffStableInterval()I

    move-result v0

    .line 435
    .local v0, "interval":I
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenOff:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastScreenOffTime:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/analytics/internal/util/TimeUtils;->expired(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAssetAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 262
    :try_start_0
    const-string v1, "analytics_core"

    .line 263
    .local v1, "assetPrefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "assets":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 265
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    .line 266
    aget-object v6, v2, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v2, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 267
    iget-object v6, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    aget-object v7, v2, v4

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/xiaomi/analytics/internal/util/AssetUtils;->extractAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->isAndroidPOrAbove()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/xiaomi/analytics/internal/SdkManager;->isApkSuitableForAndroidPOrAbove(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 271
    const-string v6, "SdkManager"

    const-string v7, "Not suitable for Android P, so delete it"

    invoke-static {v6, v7}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "assetPrefix":Ljava/lang/String;
    .end local v2    # "assets":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-object v5

    .line 275
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "assetPrefix":Ljava/lang/String;
    .restart local v2    # "assets":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetSoPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/xiaomi/analytics/internal/util/ApkTools;->extractSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v6, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetSoPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_1

    .line 265
    .end local v0    # "apkFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "assetPrefix":Ljava/lang/String;
    .end local v2    # "assets":[Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "SdkManager"

    invoke-static {v6}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "loadAssetAnalytics exception"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadDexUnderScreenOff()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getPreviousLoadDex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->registerReceiver()V

    goto :goto_0
.end method

.method private loadLocalAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 289
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "apkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->isAndroidPOrAbove()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaomi/analytics/internal/SdkManager;->isApkSuitableForAndroidPOrAbove(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    const-string v4, "SdkManager"

    const-string v5, "Not suitable for Android P, so delete it"

    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v0, v3

    .line 303
    .end local v1    # "apkFile":Ljava/io/File;
    :goto_0
    return-object v0

    .line 296
    .restart local v1    # "apkFile":Ljava/io/File;
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSoPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/xiaomi/analytics/internal/util/ApkTools;->extractSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSoPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    goto :goto_0

    .line 300
    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v1    # "apkFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SdkManager"

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "loadLocalAnalytics exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v3

    .line 303
    goto :goto_0
.end method

.method private loadSysAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->waitForConnected()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object v0
.end method

.method private notifyAnalyticsReady(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 3
    .param p1, "analytics"    # Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 241
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    sget-boolean v1, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDebugOn(Z)V

    .line 244
    const-string v0, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analytics module loaded, version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;->onSdkCorePrepared(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 251
    :cond_1
    return-void
.end method

.method private postDexInit(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 408
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->dexInitTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->dexInitTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    const-string v0, "SdkManager"

    const-string v1, "post dex init task"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private prepareDirs()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSoPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :goto_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetSoPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v0    # "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 138
    :goto_1
    return-void

    .line 130
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/io/File;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/io/File;)V

    goto :goto_1
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 373
    const-string v1, "SdkManager"

    const-string v2, "register screen receiver"

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    return-void
.end method

.method private savePreviousLoadDex(Z)V
    .locals 5
    .param p1, "loaded"    # Z

    .prologue
    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v3, "analytics_api"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pld"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SdkManager"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "savePreviousLoadDex exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setUseSysAnalyticsOnly()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/analytics/internal/SdkManager;->sUseSysAnalyticsOnly:Z

    .line 89
    return-void
.end method


# virtual methods
.method public getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object v0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pollUpdate()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->doCheckUpdate()V

    .line 144
    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 0
    .param p1, "ok"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mDontUseSysAnalytics:Z

    .line 97
    return-void
.end method

.method public setOnSdkPrepareListener(Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    .line 93
    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 2
    .param p1, "conf"    # Lcom/xiaomi/analytics/PolicyConfiguration;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    .line 308
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    .line 311
    :cond_0
    return-void
.end method
