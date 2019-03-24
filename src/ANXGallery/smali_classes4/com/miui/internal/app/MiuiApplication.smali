.class public Lcom/miui/internal/app/MiuiApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 26
    invoke-static {p0}, Lcom/miui/internal/server/CoreJobService;->scheduleJobs(Landroid/content/Context;)V

    .line 27
    return-void
.end method
