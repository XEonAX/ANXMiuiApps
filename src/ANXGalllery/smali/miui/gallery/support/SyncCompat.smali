.class public Lmiui/gallery/support/SyncCompat;
.super Ljava/lang/Object;
.source "SyncCompat.java"


# static fields
.field private static volatile sSupportRequiresCharging:Ljava/lang/Boolean;


# direct methods
.method public static setRequiresCharging(Landroid/content/SyncRequest$Builder;Z)V
    .locals 3
    .param p0, "builder"    # Landroid/content/SyncRequest$Builder;
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v1, Lmiui/gallery/support/SyncCompat;->sSupportRequiresCharging:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/SyncRequest$Builder;->setRequiresCharging(Z)Landroid/content/SyncRequest$Builder;

    .line 16
    const/4 v1, 0x1

    invoke-static {v1}, Lmiui/gallery/support/SyncCompat;->setRequiresCharging(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "SyncCompat"

    const-string/jumbo v2, "setRequiresCharging is not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    const/4 v1, 0x0

    invoke-static {v1}, Lmiui/gallery/support/SyncCompat;->setRequiresCharging(Z)V

    goto :goto_0

    .line 21
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_1
    sget-object v1, Lmiui/gallery/support/SyncCompat;->sSupportRequiresCharging:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/SyncRequest$Builder;->setRequiresCharging(Z)Landroid/content/SyncRequest$Builder;

    goto :goto_0
.end method

.method private static declared-synchronized setRequiresCharging(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 27
    const-class v1, Lmiui/gallery/support/SyncCompat;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/gallery/support/SyncCompat;->sSupportRequiresCharging:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v1

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
