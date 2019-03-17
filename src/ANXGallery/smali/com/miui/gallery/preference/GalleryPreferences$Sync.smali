.class public Lcom/miui/gallery/preference/GalleryPreferences$Sync;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sync"
.end annotation


# static fields
.field private static final DEFAULT_AUTO_BATCH_DOWNLOAD:Z

.field private static final DEFAULT_DOWNLOAD_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownload()Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_AUTO_BATCH_DOWNLOAD:Z

    .line 296
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getAutoDownloadType()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "thumbnail"

    :goto_0
    sput-object v0, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_DOWNLOAD_TYPE:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "origin"

    goto :goto_0
.end method

.method public static getAutoDownloadTime()J
    .locals 4

    .prologue
    .line 383
    const-string v0, "auto_download_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBackupOnlyInWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-static {}, Lcom/miui/gallery/util/FeatureUtil;->isSupportBackupOnlyWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :goto_0
    return v0

    :cond_0
    const-string v1, "backup_only_in_wifi"

    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 3

    .prologue
    .line 399
    const-string v1, "download_type"

    sget-object v2, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_DOWNLOAD_TYPE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 406
    :goto_0
    return-object v1

    .line 403
    :cond_0
    const-string v1, "origin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0

    .line 406
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEverRefillLocalGroupId()Z
    .locals 2

    .prologue
    .line 359
    const-string v0, "ever_refill_local_group_id"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEverSyncedSystemAlbum()Z
    .locals 2

    .prologue
    .line 367
    const-string v0, "ever_synced_system_album"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsPlugged()Z
    .locals 2

    .prologue
    .line 311
    const-string v0, "is_plugged"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPowerCanSync()Z
    .locals 2

    .prologue
    .line 303
    const-string v0, "power_can_sync"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSyncCompletelyFinish()Z
    .locals 2

    .prologue
    .line 319
    const-string/jumbo v0, "sync_completely_finish"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAutoDownload()Z
    .locals 2

    .prologue
    .line 391
    const-string v0, "auto_download"

    sget-boolean v1, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->DEFAULT_AUTO_BATCH_DOWNLOAD:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDeviceStorageLow()Z
    .locals 2

    .prologue
    .line 423
    const-string v0, "device_storage_low"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEverAutoDownloaded()Z
    .locals 2

    .prologue
    .line 375
    const-string v0, "ever_auto_download"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static remove()V
    .locals 2

    .prologue
    .line 431
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backup_only_in_wifi"

    .line 432
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync_completely_finish"

    .line 433
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "slim_after_backuped_v2"

    .line 434
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ever_synced_system_album"

    .line 435
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ever_auto_download"

    .line 436
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_download_time"

    .line 437
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_type"

    .line 438
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_download"

    .line 439
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    return-void
.end method

.method public static setAutoDownload(Z)V
    .locals 1
    .param p0, "autoDownload"    # Z

    .prologue
    .line 395
    const-string v0, "auto_download"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    return-void
.end method

.method public static setAutoDownloadTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 387
    const-string v0, "auto_download_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 388
    return-void
.end method

.method public static setBackupOnlyInWifi(Z)V
    .locals 1
    .param p0, "onlyInWifi"    # Z

    .prologue
    .line 323
    invoke-static {}, Lcom/miui/gallery/util/FeatureUtil;->isSupportBackupOnlyWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v0, "backup_only_in_wifi"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setDeviceStorageLow(Z)V
    .locals 1
    .param p0, "low"    # Z

    .prologue
    .line 427
    const-string v0, "device_storage_low"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    return-void
.end method

.method public static setDownloadType(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 3
    .param p0, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 410
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 411
    .local v0, "old":Lcom/miui/gallery/sdk/download/DownloadType;
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v1, :cond_2

    .line 412
    const-string v1, "download_type"

    const-string/jumbo v2, "thumbnail"

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    :goto_0
    if-eq v0, p0, :cond_1

    .line 417
    const-string v1, "auto_download_time"

    invoke-static {v1}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 418
    const-string v1, "ever_auto_download"

    invoke-static {v1}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 420
    :cond_1
    return-void

    .line 413
    :cond_2
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p0, v1, :cond_0

    .line 414
    const-string v1, "download_type"

    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setEverAutoDownloaded()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "ever_auto_download"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    return-void
.end method

.method public static setEverRefillLocalGroupId()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "ever_refill_local_group_id"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method public static setEverSyncedSystemAlbum()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "ever_synced_system_album"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    return-void
.end method

.method public static setIsPlugged(Z)V
    .locals 1
    .param p0, "isPlugged"    # Z

    .prologue
    .line 307
    const-string v0, "is_plugged"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    return-void
.end method

.method public static setPowerCanSync(Z)V
    .locals 1
    .param p0, "powerCanSync"    # Z

    .prologue
    .line 299
    const-string v0, "power_can_sync"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    return-void
.end method

.method public static setSyncCompletelyFinish(Z)V
    .locals 1
    .param p0, "syncCompletelyFinish"    # Z

    .prologue
    .line 315
    const-string/jumbo v0, "sync_completely_finish"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    return-void
.end method
