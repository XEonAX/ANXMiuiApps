.class public Lcom/xiaomi/analytics/internal/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field private static final INTENT_DEBUG_OFF:Ljava/lang/String; = "com.xiaomi.analytics.intent.DEBUG_OFF"

.field private static final INTENT_DEBUG_ON:Ljava/lang/String; = "com.xiaomi.analytics.intent.DEBUG_ON"

.field private static final INTENT_STAGING_OFF:Ljava/lang/String; = "com.xiaomi.analytics.intent.STAGING_OFF"

.field private static final INTENT_STAGING_ON:Ljava/lang/String; = "com.xiaomi.analytics.intent.STAGING_ON"

.field private static final TAG:Ljava/lang/String; = "Debugger"

.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/Debugger;

.field public static sUseStaging:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/analytics/internal/Debugger;->sUseStaging:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    .line 57
    new-instance v0, Lcom/xiaomi/analytics/internal/Debugger$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/Debugger$1;-><init>(Lcom/xiaomi/analytics/internal/Debugger;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static declared-synchronized getDebugger(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/Debugger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v1, Lcom/xiaomi/analytics/internal/Debugger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/Debugger;->sInstance:Lcom/xiaomi/analytics/internal/Debugger;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/xiaomi/analytics/internal/Debugger;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/Debugger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/Debugger;->sInstance:Lcom/xiaomi/analytics/internal/Debugger;

    .line 36
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/Debugger;->sInstance:Lcom/xiaomi/analytics/internal/Debugger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public register()V
    .locals 3

    .prologue
    .line 40
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/Debugger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/Debugger;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/Debugger;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/Debugger;->mIsRegistered:Z

    .line 55
    return-void
.end method
