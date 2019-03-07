.class public Lcom/xiaomi/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Analytics"

.field private static volatile sAnalytics:Lcom/xiaomi/analytics/Analytics;

.field private static volatile sUpdateEnable:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private sTrackerFactory:Lcom/xiaomi/analytics/LoggerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/analytics/LoggerFactory",
            "<",
            "Lcom/xiaomi/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/analytics/Analytics;->sUpdateEnable:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/xiaomi/analytics/LoggerFactory;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LoggerFactory;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->sTrackerFactory:Lcom/xiaomi/analytics/LoggerFactory;

    .line 37
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/BaseLogger;->init(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/xiaomi/analytics/Analytics;->keepMethods()V

    .line 41
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    .line 42
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/Debugger;->getDebugger(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/Debugger;->register()V

    .line 43
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/SysUtils;->deleteDeviceIdInSpFile(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/analytics/Analytics;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/xiaomi/analytics/Analytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/Analytics;->sAnalytics:Lcom/xiaomi/analytics/Analytics;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaomi/analytics/Analytics;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/Analytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/Analytics;->sAnalytics:Lcom/xiaomi/analytics/Analytics;

    .line 54
    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/Analytics;->sAnalytics:Lcom/xiaomi/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isPlatformSignature(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/CertificateUtils;->isXiaomiPlatformCertificate([Landroid/content/pm/Signature;)Z

    move-result v0

    .line 166
    .local v0, "ret":Z
    const-string v1, "Analytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s is platform signatures : %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0
.end method

.method private static isSystemPackage(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 172
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUpdateEnable()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/xiaomi/analytics/Analytics;->sUpdateEnable:Z

    return v0
.end method

.method private keepMethods()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/xiaomi/analytics/Tracker;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/Tracker;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static setUpdateEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 157
    sput-boolean p0, Lcom/xiaomi/analytics/Analytics;->sUpdateEnable:Z

    .line 158
    return-void
.end method

.method public static setUseSystemAnalyticsOnly(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isServiceBuiltIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "Analytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "system analytics is not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "Analytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "use system analytics only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/xiaomi/analytics/internal/SdkManager;->setUseSysAnalyticsOnly()V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->setUpdateEnable(Z)V

    goto :goto_0
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/xiaomi/analytics/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->isSystemPackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->isPlatformSignature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "App is not allowed to use this method to track event, except system or platform signed apps. Use getTracker instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.analytics"

    const-string v2, "com.miui.analytics.EventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "key"

    if-eqz p1, :cond_2

    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "content"

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getContent()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "extra"

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "appid"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_1
    instance-of v1, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v1, :cond_3

    .line 149
    const-string v1, "type"

    sget-object v2, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    return-void

    .line 142
    .restart local p1    # "key":Ljava/lang/String;
    :cond_2
    const-string p1, ""

    goto :goto_0

    .line 151
    .end local p1    # "key":Ljava/lang/String;
    :cond_3
    const-string v1, "type"

    sget-object v2, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public addJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "jsInterfaceName"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public deleteAllEvents()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    .line 86
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->deleteAllEvents(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public getClientExtraSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 100
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Analytics;->getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/xiaomi/analytics/Analytics$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/xiaomi/analytics/Analytics$1;-><init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 122
    .local v2, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/TaskRunner;->execute(Ljava/lang/Runnable;)V

    .line 123
    int-to-long v4, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "extra":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    .line 125
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    if-eqz v0, :cond_1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->isPolicyReady(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    return-object v1

    .line 130
    .end local v0    # "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .end local v1    # "extra":Ljava/lang/String;
    .end local v2    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 132
    :cond_1
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
.end method

.method public getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    .locals 2
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->sTrackerFactory:Lcom/xiaomi/analytics/LoggerFactory;

    const-class v1, Lcom/xiaomi/analytics/Tracker;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/analytics/LoggerFactory;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/xiaomi/analytics/BaseLogger;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/Tracker;

    return-object v0
.end method

.method public setDebugOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 62
    sput-boolean p1, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    .line 63
    iget-object v1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    .line 64
    .local v0, "analytics":Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDebugOn(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 1
    .param p1, "dontUse"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->setDontUseSystemAnalytics(Z)V

    .line 97
    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 1
    .param p1, "conf"    # Lcom/xiaomi/analytics/PolicyConfiguration;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/SdkManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V

    .line 93
    return-void
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "actionType"    # Ljava/lang/String;
    .param p3, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 230
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    .local v0, "action":Lcom/xiaomi/analytics/Action;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    .end local v0    # "action":Lcom/xiaomi/analytics/Action;
    :goto_1
    return-void

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Analytics"

    const-string v4, "JavascriptInterface trackAdAction exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Lcom/xiaomi/analytics/Action;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "adCategory"    # Ljava/lang/String;
    .param p3, "actionType"    # Ljava/lang/String;
    .param p4, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 245
    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    .local v0, "action":Lcom/xiaomi/analytics/Action;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    .end local v0    # "action":Lcom/xiaomi/analytics/Action;
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Analytics"

    const-string v4, "JavascriptInterface trackAdAction exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Lcom/xiaomi/analytics/Action;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public trackCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/Actions;->newCustomAction()Lcom/xiaomi/analytics/CustomAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    .local v0, "action":Lcom/xiaomi/analytics/Action;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    .end local v0    # "action":Lcom/xiaomi/analytics/Action;
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Analytics"

    const-string v4, "JavascriptInterface trackCustomAction exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Lcom/xiaomi/analytics/Action;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    .local v0, "action":Lcom/xiaomi/analytics/Action;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    .end local v0    # "action":Lcom/xiaomi/analytics/Action;
    :goto_1
    return-void

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Analytics"

    const-string v4, "JavascriptInterface trackEventAction exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Lcom/xiaomi/analytics/Action;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "parameter"    # Ljava/lang/String;
    .param p4, "jsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    .local v0, "action":Lcom/xiaomi/analytics/Action;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Action;->addContent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    .end local v0    # "action":Lcom/xiaomi/analytics/Action;
    :goto_1
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Analytics"

    const-string v4, "JavascriptInterface trackEventAction exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Lcom/xiaomi/analytics/Action;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
