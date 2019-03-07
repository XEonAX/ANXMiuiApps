.class Lcom/xiaomi/analytics/BaseLogger;
.super Ljava/lang/Object;
.source "BaseLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLogger"

.field private static mOnPreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

.field private static volatile sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

.field private static sAppId:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/analytics/BaseLogger$PendingUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigKey:Ljava/lang/String;

.field private mSession:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 101
    new-instance v0, Lcom/xiaomi/analytics/BaseLogger$1;

    invoke-direct {v0}, Lcom/xiaomi/analytics/BaseLogger$1;-><init>()V

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->mOnPreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do you forget to do Logger.init ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .prologue
    .line 18
    sput-object p0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->drainPendingEvents()V

    return-void
.end method

.method private static drainPendingEvents()V
    .locals 9

    .prologue
    .line 81
    sget-object v5, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-lez v5, :cond_2

    sget-object v5, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v5, :cond_2

    .line 82
    const-string v5, "BaseLogger"

    const-string v6, "drainPendingEvents "

    invoke-static {v5, v6}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    sget-object v5, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 85
    sget-object v5, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    .line 86
    .local v4, "unit":Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
    iget-object v5, v4, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mEvent:Lcom/xiaomi/analytics/LogEvent;

    iget-object v6, v4, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mAppId:Ljava/lang/String;

    iget-object v7, v4, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mConfigKey:Ljava/lang/String;

    iget-object v8, v4, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mSessionId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v4    # "unit":Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
    :cond_0
    const/16 v2, 0x64

    .line 89
    .local v2, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v2, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 92
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_1
    const-string v5, "BaseLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trackEvents "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v6, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    const-class v5, Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/xiaomi/analytics/internal/util/Utils;->list2Array(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->trackEvents([Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v1    # "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lcom/xiaomi/analytics/BaseLogger;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    .line 31
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is not a application context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 35
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->mOnPreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/internal/SdkManager;->setOnSdkPrepareListener(Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected log(Lcom/xiaomi/analytics/LogEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/xiaomi/analytics/LogEvent;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 57
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->pollUpdate()V

    .line 58
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    sget-object v1, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->trackEvent(Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    sget-object v2, Lcom/xiaomi/analytics/BaseLogger;->sAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/xiaomi/analytics/LogEvent;

    .prologue
    .line 68
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    .line 70
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->pollUpdate()V

    .line 71
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    iget-object v1, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/xiaomi/analytics/LogEvent;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->trackEvent(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    sget-object v0, Lcom/xiaomi/analytics/BaseLogger;->sPendingActions:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mConfigKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startSession()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    .line 47
    const-string v0, "BaseLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/BaseLogger;->mSession:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
