.class public Lcom/miui/gallery/util/GalleryBackgroundService;
.super Landroid/app/Service;
.source "GalleryBackgroundService.java"


# instance fields
.field private mPreloadFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v0, "GalleryBackgroundService"

    const-string v1, "GalleryBackgroundService onBind"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/miui/gallery/permission/core/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/GalleryBackgroundService$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/GalleryBackgroundService$1;-><init>(Lcom/miui/gallery/util/GalleryBackgroundService;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryBackgroundService;->mPreloadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 47
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "GalleryBackgroundService"

    const-string v1, "Can\'t access external storage, relate permission is ungranted"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    const-string v0, "GalleryBackgroundService"

    const-string v1, "GalleryBackgroundService onCreate "

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    const-string v0, "GalleryBackgroundService"

    const-string v1, "GalleryBackgroundService onDestroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryBackgroundService;->mPreloadFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryBackgroundService;->mPreloadFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryBackgroundService;->mPreloadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 58
    :cond_0
    return-void
.end method
