.class public Lcom/miui/gallery/module/ModuleManagerService;
.super Landroid/app/job/JobService;
.source "ModuleManagerService.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 16
    const-string v0, "ModuleManagerService"

    iput-object v0, p0, Lcom/miui/gallery/module/ModuleManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/module/ModuleManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/module/ModuleManagerService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/module/ModuleManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/miui/gallery/module/ModuleManagerService;->TAG:Ljava/lang/String;

    const-string v2, "onStartJob"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "module"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "module":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/miui/gallery/module/ModuleManagerService;->TAG:Ljava/lang/String;

    const-string v2, "onStartLoadingModulesFromCloud"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/module/ModuleManagerService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/gallery/module/ModuleManagerService$1;-><init>(Lcom/miui/gallery/module/ModuleManagerService;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 38
    const/4 v1, 0x1

    .line 41
    .end local v0    # "module":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/module/ModuleManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    return v0
.end method
