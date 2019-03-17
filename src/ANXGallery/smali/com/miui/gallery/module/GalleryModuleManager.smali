.class public Lcom/miui/gallery/module/GalleryModuleManager;
.super Ljava/lang/Object;
.source "GalleryModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/gallery/module/GalleryModuleManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadedModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/miui/gallery/module/GalleryModuleManager;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/module/GalleryModuleManager;->INSTANCE:Lcom/miui/gallery/module/GalleryModuleManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadedModules:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/module/GalleryModuleManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadedModules:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/module/GalleryModuleManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/module/GalleryModuleManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/module/GalleryModuleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/module/GalleryModuleManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/miui/gallery/module/GalleryModuleManager;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/miui/gallery/module/GalleryModuleManager;->INSTANCE:Lcom/miui/gallery/module/GalleryModuleManager;

    return-object v0
.end method


# virtual methods
.method public isModuleLoaded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadedModules:Ljava/util/ArrayList;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadedModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isModuleLoading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadModule(ZLcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;Ljava/lang/String;)V
    .locals 6
    .param p1, "localOnly"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;
    .param p3, "module"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    iget-object v2, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mLoadingModules:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.extra_load_module_failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "module"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 55
    if-eqz p3, :cond_1

    .line 56
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/module/GalleryModuleManager$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/gallery/module/GalleryModuleManager$1;-><init>(Lcom/miui/gallery/module/GalleryModuleManager;Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;)V

    invoke-virtual {v1, v2}, Lmiui/module/ModuleManager;->setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V

    .line 110
    :cond_1
    if-eqz p1, :cond_2

    .line 111
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/module/CacheRepository;

    iget-object v3, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Lcom/miui/gallery/module/CacheRepository;-><init>(Landroid/content/Context;Z)V

    new-array v3, v5, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lmiui/module/ModuleManager;->loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 113
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lmiui/module/ModuleManager;->getInstance()Lmiui/module/ModuleManager;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/module/CacheRepository;

    iget-object v3, p0, Lcom/miui/gallery/module/GalleryModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/module/CacheRepository;-><init>(Landroid/content/Context;Z)V

    new-array v3, v5, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lmiui/module/ModuleManager;->loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scheduleModuleDownLoadJob(Ljava/lang/String;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v4, "module"

    invoke-virtual {v0, v4, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/miui/gallery/module/ModuleManagerService;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "jobscheduler"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 123
    .local v3, "scheduler":Landroid/app/job/JobScheduler;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    const/16 v5, 0x64

    invoke-direct {v4, v5, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v5, 0x2

    .line 124
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 125
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 128
    .local v2, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 129
    const-string v4, "GalleryModuleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "schedule job load module :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "jobInfo":Landroid/app/job/JobInfo;
    .end local v3    # "scheduler":Landroid/app/job/JobScheduler;
    :cond_0
    return-void
.end method
