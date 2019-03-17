.class public Lcom/ut/mini/UTAnalytics;
.super Ljava/lang/Object;
.source "UTAnalytics.java"


# static fields
.field private static a:Lcom/ut/mini/UTAnalytics;


# instance fields
.field private M:Z

.field private N:Z

.field private a:Lcom/ut/mini/UTTracker;

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->x:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->y:Ljava/util/Map;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;-><init>()V

    .line 79
    invoke-static {}, Lcom/ut/mini/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/plugin/UTPluginMgr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ut/mini/plugin/UTPluginMgr;->registerPlugin(Lcom/ut/mini/plugin/UTPlugin;Z)V

    .line 80
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/base/UTMIVariables;->setUTMI1010_2001EventInstance(Lcom/ut/mini/sdkevents/UTMI1010_2001Event;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;

    invoke-direct {v0}, Lcom/ut/mini/sdkevents/UTMI1010_2001Event;-><init>()V

    .line 83
    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V

    .line 84
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/base/UTMIVariables;->setUTMI1010_2001EventInstance(Lcom/ut/mini/sdkevents/UTMI1010_2001Event;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/UTAnalytics;
    .locals 2

    .prologue
    .line 237
    const-class v1, Lcom/ut/mini/UTAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/ut/mini/UTAnalytics;

    invoke-direct {v0}, Lcom/ut/mini/UTAnalytics;-><init>()V

    sput-object v0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;

    .line 240
    :cond_0
    sget-object v0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getDefaultTracker()Lcom/ut/mini/UTTracker;
    .locals 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 250
    iput-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;

    if-nez v0, :cond_1

    .line 253
    const-string v0, "getDefaultTracker error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->a:Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 2
    .param p1, "aTrackId"    # Ljava/lang/String;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    monitor-exit p0

    return-object v0

    .line 298
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 299
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->o(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->x:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_1
    :try_start_2
    const-string v0, "getTracker"

    const-string v1, "TrackId is null."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getTrackerByAppkey(Ljava/lang/String;)Lcom/ut/mini/UTTracker;
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ut/mini/UTAnalytics;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/UTTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_0
    monitor-exit p0

    return-object v0

    .line 320
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ut/mini/UTTracker;

    invoke-direct {v0}, Lcom/ut/mini/UTTracker;-><init>()V

    .line 321
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->p(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/ut/mini/UTAnalytics;->y:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_1
    :try_start_2
    const-string v0, "getTracker"

    const-string v1, "TrackId is null."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppApplicationInstance(Landroid/app/Application;)V
    .locals 1
    .param p1, "aApplicationInstance"    # Landroid/app/Application;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->setAppApplicationInstance(Landroid/app/Application;)V

    .line 121
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->init(Landroid/app/Application;)V

    .line 122
    if-eqz p1, :cond_0

    .line 144
    :cond_0
    return-void
.end method

.method public setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;

    .prologue
    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/ut/mini/UTAnalytics;->M:Z

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setContext(Landroid/content/Context;)V

    .line 162
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;)V

    .line 163
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isUTLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->turnOnDebug()V

    .line 166
    :cond_1
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setChannel(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setAppVersion(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTAnalytics;->N:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTAnalytics;->M:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 178
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    goto :goto_0

    .line 173
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application and callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setAppApplicationInstance4sdk(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "utCallback"    # Lcom/ut/mini/IUTApplication;

    .prologue
    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/ut/mini/UTAnalytics;->N:Z

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 197
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setContext(Landroid/content/Context;)V

    .line 199
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;)V

    .line 200
    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->isUTLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->turnOnDebug()V

    .line 203
    :cond_1
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setChannel(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setAppVersion(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-interface {p2}, Lcom/ut/mini/IUTApplication;->getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/UTAnalytics;->N:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 213
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    goto :goto_0

    .line 208
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application and callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->setAppVersion(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "aChannel"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setChannel(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/log/b;->setContext(Landroid/content/Context;)V

    .line 97
    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTTeamWork;->initialized()V

    .line 105
    :cond_0
    return-void
.end method

.method public setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V
    .locals 4
    .param p1, "aRequestAuthenticationInstance"    # Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const-string v0, "setRequestAuthentication"

    const-string v1, "Fatal Error,pRequestAuth must not be null."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    :cond_0
    instance-of v0, p1, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v0, :cond_2

    .line 271
    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    invoke-virtual {v0}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    .end local p1    # "aRequestAuthenticationInstance":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    invoke-virtual {p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->isEncode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_1
    return-void

    .line 271
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 273
    .restart local p1    # "aRequestAuthenticationInstance":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    check-cast p1, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    .end local p1    # "aRequestAuthenticationInstance":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    invoke-virtual {p1}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public turnOffAutoPageTrack()V
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper;->turnOffAutoPageTrack()V

    .line 419
    return-void
.end method

.method public turnOnDebug()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/b;->turnOnDebug()V

    .line 366
    return-void
.end method

.method public updateSessionProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c;->a()Ljava/util/Map;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 407
    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 410
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 411
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c;->c(Ljava/util/Map;)V

    .line 412
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/log/b;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 8
    .param p1, "aUsernick"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    .line 386
    if-eqz v7, :cond_0

    .line 387
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string v1, "UT"

    const/16 v2, 0x3ee

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 389
    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v0, "Record userRegister event error"

    const-string v1, "Fatal Error,must call setRequestAuthentication method first."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_1
    const-string v0, "userRegister"

    const-string v1, "Fatal Error,usernick can not be null or empty!"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
