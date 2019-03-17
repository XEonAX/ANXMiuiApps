.class public Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMode"
.end annotation


# direct methods
.method public static declared-synchronized isOnlyShowLocalPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 906
    const-class v1, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;

    monitor-enter v1

    :try_start_0
    const-string v2, "only_show_local_photo"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setOnlyShowLocalPhoto(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .prologue
    .line 910
    const-class v1, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;

    monitor-enter v1

    :try_start_0
    const-string v0, "only_show_local_photo"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    monitor-exit v1

    return-void

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
