.class public Lcom/miui/gallery/settingsbackup/GallerySettingsBackupImpl;
.super Ljava/lang/Object;
.source "GallerySettingsBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    if-nez p0, :cond_1

    .line 52
    const/4 p0, 0x0

    .line 57
    :cond_0
    :goto_0
    return-object p0

    .line 54
    :cond_1
    sget-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/os/Rom;->IS_DEV:Z

    if-eqz v0, :cond_0

    .line 55
    :cond_2
    const-string v0, "GallerySettingsBackupImpl"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 22
    const-string v0, "GallerySettingsBackupImpl"

    const-string v1, "onBackupSettings start"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "com.miui.gallery.settings"

    invoke-static {p1}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupHelper;->backupToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 24
    const-string v0, "GallerySettingsBackupImpl"

    const-string v1, "onBackupSettings end"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "packageVersion"    # I

    .prologue
    .line 32
    const-string v1, "GallerySettingsBackupImpl"

    const-string v2, "onRestoreSettings start"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    const-string v1, "com.miui.gallery.settings"

    invoke-virtual {p2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    .line 35
    .local v0, "item":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/settingsbackup/GallerySettingsBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 39
    .end local v0    # "item":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    :cond_0
    const-string v1, "GallerySettingsBackupImpl"

    const-string v2, "onRestoreSettings end"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
