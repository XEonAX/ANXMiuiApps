.class public abstract Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;
.super Landroid/app/IntentService;
.source "CloudBackupServiceBase.java"


# static fields
.field public static final ACTION_CLOUD_BACKUP_SETTINGS:Ljava/lang/String; = "miui.action.CLOUD_BACKUP_SETTINGS"

.field public static final ACTION_CLOUD_RESTORE_SETTINGS:Ljava/lang/String; = "miui.action.CLOUD_RESTORE_SETTINGS"

.field public static final KEY_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "SettingsBackup"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private backupSettings()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 116
    const-string v3, "SettingsBackup"

    const-string v4, "SettingsBackupServiceBase:backupSettings"

    invoke-direct {p0, v4}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->checkAndGetBackuper()Lcom/xiaomi/settingsdk/backup/ICloudBackup;

    move-result-object v0

    .line 118
    .local v0, "backuper":Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    new-instance v2, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;-><init>()V

    .line 119
    .local v2, "dataPackage":Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    invoke-interface {v0, p0, v2}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->appendToWrappedBundle(Landroid/os/Bundle;)V

    .line 122
    const-string v3, "version"

    invoke-interface {v0, p0}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    return-object v1
.end method

.method private checkAndGetBackuper()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;

    move-result-object v0

    .line 128
    .local v0, "backuper":Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    if-nez v0, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "backuper must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    return-object v0
.end method

.method protected static dumpDataPackage(Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 6
    .param p0, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v2

    .line 44
    .local v2, "stringItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    const-string v4, "SettingsBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    invoke-virtual {v3}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    :cond_0
    return-void
.end method

.method private prependPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restoreSettings(Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)Z
    .locals 5
    .param p1, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p2, "version"    # I

    .prologue
    .line 102
    const-string v2, "SettingsBackup"

    const-string v3, "SettingsBackupServiceBase:restoreSettings"

    invoke-direct {p0, v3}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->checkAndGetBackuper()Lcom/xiaomi/settingsdk/backup/ICloudBackup;

    move-result-object v0

    .line 105
    .local v0, "backuper":Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    invoke-interface {v0, p0}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v1

    .line 106
    .local v1, "currentVersion":I
    if-le p2, v1, :cond_0

    .line 107
    const-string v2, "SettingsBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop restore data because dataVersion is higher than currentAppVersion, dataVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentAppVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x0

    .line 112
    :goto_0
    return v2

    .line 111
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V

    .line 112
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "myPid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extras: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v9, "result_receiver"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    .line 60
    .local v6, "r":Landroid/os/ResultReceiver;
    const-string v9, "miui.action.CLOUD_BACKUP_SETTINGS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 61
    if-eqz v6, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->backupSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 64
    const-string v9, "SettingsBackup"

    const-string v10, "bundle result is null after backupSettings"

    invoke-direct {p0, v10}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    invoke-virtual {v6, v12, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 68
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    const-string v9, "miui.action.CLOUD_RESTORE_SETTINGS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 69
    if-eqz v6, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "data_package"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 71
    .local v3, "dataBinder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 72
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 74
    .local v7, "reply":Landroid/os/Parcel;
    const/4 v9, 0x2

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v3, v9, v2, v7, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 75
    const-string v9, "version"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 76
    .local v5, "packageVersion":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {p0, v9, v5}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->restoreSettings(Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)Z

    move-result v8

    .line 77
    .local v8, "success":Z
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "r.send()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v8, :cond_4

    .line 79
    const/4 v9, 0x0

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v9, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 82
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v9, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    .end local v5    # "packageVersion":I
    .end local v8    # "success":Z
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v9, "SettingsBackup"

    const-string v10, "RemoteException in onHandleIntent()"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 86
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 89
    .local v4, "e":Landroid/os/BadParcelableException;
    :try_start_3
    const-string v9, "SettingsBackup"

    const-string v10, "BadParcelableException when read readParcelable"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 90
    .end local v4    # "e":Landroid/os/BadParcelableException;
    :catch_2
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/ClassCastException;
    :try_start_4
    const-string v9, "SettingsBackup"

    const-string v10, "ClassCastException when cast DataPackage"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 94
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v9

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v9
.end method
