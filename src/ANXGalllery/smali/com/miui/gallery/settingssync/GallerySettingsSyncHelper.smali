.class public Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;
.super Ljava/lang/Object;
.source "GallerySettingsSyncHelper.java"


# direct methods
.method public static doSync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    .line 9
    invoke-static {}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->getRepository()Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->getModel(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;)Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->getSyncAdapter(Landroid/content/Context;Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;)Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncAdapter;

    move-result-object v0

    .line 10
    .local v0, "syncAdapter":Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncAdapter;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncAdapter;->performSync(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method public static getModel(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;)Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;
    .locals 1
    .param p0, "repository"    # Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;

    .prologue
    .line 19
    new-instance v0, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;

    invoke-direct {v0, p0}, Lcom/miui/gallery/settingssync/GallerySettingSyncModel;-><init>(Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;)V

    return-object v0
.end method

.method public static getRepository()Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Repository;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/miui/gallery/settingssync/GallerySyncableSettingsRepository;

    invoke-direct {v0}, Lcom/miui/gallery/settingssync/GallerySyncableSettingsRepository;-><init>()V

    return-object v0
.end method

.method public static getSyncAdapter(Landroid/content/Context;Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;)Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "model"    # Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    .prologue
    .line 15
    new-instance v0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;)V

    return-object v0
.end method
