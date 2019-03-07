.class public Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
.super Ljava/lang/Object;
.source "SysAnalytics.java"

# interfaces
.implements Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;


# static fields
.field private static final ANALYTICS_SYSTEM_SERVICE_NAME:Ljava/lang/String; = "com.miui.analytics.AnalyticsService"

.field private static final SDK_CLASS_NAME:Ljava/lang/String; = "com.miui.analytics.ICore"

.field private static final TAG:Ljava/lang/String; = "SysAnalytics"


# instance fields
.field private mAnalytics:Lcom/miui/analytics/ICore;

.field private final mConnLock:Ljava/lang/Object;

.field private mConnected:Z

.field private mConnecting:Z

.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private final mPendingEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSyncGuard:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    .line 30
    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    .line 31
    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    .line 85
    new-instance v0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;-><init>(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 39
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isServiceBuiltIn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    .line 41
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->bindService()V

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Lcom/miui/analytics/ICore;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
    .param p1, "x1"    # Lcom/miui/analytics/ICore;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->drainPendingEvents()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    return-object v0
.end method

.method private bindService()V
    .locals 5

    .prologue
    .line 45
    iget-boolean v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    if-eqz v2, :cond_0

    .line 47
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, "service":Landroid/content/Intent;
    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.AnalyticsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 50
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    .line 51
    const-string v2, "SysAnalytics"

    const-string v3, "try bind sys service"

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysAnalytics"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind service exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private drainPendingEvents()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;-><init>(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method private ensureService()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnLock:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-boolean v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v3, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->bindService()V

    .line 82
    :goto_0
    monitor-exit v2

    .line 83
    return-void

    .line 80
    :cond_1
    const-string v3, "SysAnalytics"

    const-string v4, "ensureService mConnecting:%s, mConnected:%s, mAnalytics:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnecting:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v7, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_1
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 161
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVersionName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getVersionName exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "0.0.0"

    goto :goto_0
.end method

.method public static isServiceBuiltIn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 60
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.miui.analytics"

    const-string v5, "com.miui.analytics.AnalyticsService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    .line 65
    const/4 v3, 0x1

    .line 71
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    return v3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SysAnalytics"

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isServiceBuiltIn exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public deleteAllEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    const-string v1, "SysAnalytics"

    const-string v2, "deleteAllEvents"

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 288
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "deleteAllEvents"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 290
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 291
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteAllEvents exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClientExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 221
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClientExtra"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 223
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getClientExtra exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    return v0
.end method

.method public isPolicyReady(Ljava/lang/String;)Z
    .locals 7
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 236
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isPolicyReady"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 238
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 244
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "isPolicyReady exception:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 244
    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDebugOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 251
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDebugOn"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 253
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 254
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDebugOn exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 265
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDefaultPolicy"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 267
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 268
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDefaultPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 181
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    const-string v1, "SysAnalytics"

    const-string v2, "add 1 event into pending event list"

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :goto_0
    return-void

    .line 184
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackEvent exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_5
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "trackEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 188
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 189
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public trackEvents([Ljava/lang/String;)V
    .locals 6
    .param p1, "events"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->ensureService()V

    .line 200
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    if-nez v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-eqz p1, :cond_0

    :try_start_1
    array-length v3, p1

    if-lez v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mPendingEvents:Ljava/util/Set;

    invoke-static {v3, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 205
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    const-string v2, "SysAnalytics"

    const-string v3, "add %d events into pending event list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    :goto_1
    return-void

    .line 205
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackEvents exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_5
    array-length v1, p1

    goto :goto_0

    .line 208
    :cond_2
    const-string v1, "com.miui.analytics.ICore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "trackEvents"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    .line 209
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mAnalytics:Lcom/miui/analytics/ICore;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 210
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public waitForConnected()V
    .locals 6

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mOnline:Z

    if-eqz v1, :cond_0

    .line 145
    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mConnected:Z

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->mSyncGuard:Ljava/lang/Object;

    sget v3, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v3, v3, 0x3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "waitForConnected mSyncGuard.wait exception:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
