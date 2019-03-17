.class public Lcom/miui/gallery/video/editor/NexEngine;
.super Ljava/lang/Object;
.source "NexEngine.java"


# static fields
.field private static mEngine:Lcom/nexstreaming/nexeditorsdk/nexEngine;

.field private static mIsInit:Z

.field private static mIsInitFinished:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/miui/gallery/video/editor/NexEngine;->mIsInit:Z

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/video/editor/NexEngine;->mIsInitFinished:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 9
    sput-object p0, Lcom/miui/gallery/video/editor/NexEngine;->mIsInitFinished:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static declared-synchronized getEngine(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexEngine;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v1, Lcom/miui/gallery/video/editor/NexEngine;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/miui/gallery/video/editor/NexEngine;->mIsInit:Z

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call init first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 31
    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/gallery/video/editor/NexEngine;->mEngine:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setLoadListAsync(Z)V

    .line 33
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/video/editor/NexEngine;->mEngine:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    .line 35
    :cond_1
    sget-object v0, Lcom/miui/gallery/video/editor/NexEngine;->mEngine:Lcom/nexstreaming/nexeditorsdk/nexEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aspectMode"    # I
    .param p2, "callBack"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    sget-boolean v1, Lcom/miui/gallery/video/editor/NexEngine;->mIsInit:Z

    if-nez v1, :cond_0

    .line 40
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->setAspectMode(I)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "AppContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->createApp(Landroid/content/Context;)V

    .line 43
    const v1, 0x17bb000

    const/4 v2, 0x4

    const/16 v3, 0xfa

    const/4 v4, 0x0

    const v5, 0x7e9000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexConfig;->set(IIIZI)V

    .line 44
    const-string v1, "MiuiGallery"

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/gallery/video/editor/NexEngine;->mIsInit:Z

    .line 46
    new-instance v1, Lcom/miui/gallery/video/editor/NexEngine$1;

    invoke-direct {v1, p2}, Lcom/miui/gallery/video/editor/NexEngine$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->waitForLoading(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 56
    .end local v0    # "AppContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static releaseEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    sget-object v1, Lcom/miui/gallery/video/editor/NexEngine;->mIsInitFinished:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "NexEngine"

    const-string v2, "releaseEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/gallery/video/editor/NexEngine;->mEngine:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    .line 63
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->releaseApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sput-boolean v3, Lcom/miui/gallery/video/editor/NexEngine;->mIsInit:Z

    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/video/editor/NexEngine;->mIsInitFinished:Ljava/lang/Boolean;

    .line 70
    :cond_0
    return-void

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
