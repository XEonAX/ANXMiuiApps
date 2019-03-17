.class public Lcom/miui/gallery/cloud/GallerySyncService;
.super Landroid/app/Service;
.source "GallerySyncService.java"


# static fields
.field private static sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v0, "GallerySyncService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GallerySyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    sget-object v1, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/miui/gallery/cloud/GallerySyncAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/GallerySyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/cloud/GallerySyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/miui/gallery/cloud/GallerySyncService;->sSyncAdapter:Lcom/miui/gallery/cloud/GallerySyncAdapter;

    .line 25
    :cond_0
    const-string v0, "GallerySyncService"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
