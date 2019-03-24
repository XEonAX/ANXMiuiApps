.class public abstract Lmiui/cloud/backup/CloudBackupServiceBase;
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

    .line 31
    const-string v0, "SettingsBackup"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private backupSettings()Landroid/os/Bundle;
    .locals 5

    .line 109
    const-string v0, "SettingsBackup"

    const-string v1, "SettingsBackupServiceBase:backupSettings"

    invoke-direct {p0, v1}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;->checkAndGetBackuper()Lmiui/cloud/backup/ICloudBackup;

    move-result-object v0

    .line 111
    .local v0, "backuper":Lmiui/cloud/backup/ICloudBackup;
    new-instance v1, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v1}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 112
    .local v1, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    invoke-interface {v0, p0, v1}, Lmiui/cloud/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    .line 113
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2}, Lmiui/cloud/backup/data/DataPackage;->appendToWrappedBundle(Landroid/os/Bundle;)V

    .line 115
    const-string v3, "version"

    invoke-interface {v0, p0}, Lmiui/cloud/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    return-object v2
.end method

.method private checkAndGetBackuper()Lmiui/cloud/backup/ICloudBackup;
    .locals 3

    .line 120
    invoke-virtual {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;->getBackupImpl()Lmiui/cloud/backup/ICloudBackup;

    move-result-object v0

    .line 121
    .local v0, "backuper":Lmiui/cloud/backup/ICloudBackup;
    if-eqz v0, :cond_0

    .line 124
    return-object v0

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "backuper must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static dumpDataPackage(Lmiui/cloud/backup/data/DataPackage;)V
    .locals 6
    .param p0, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;

    .line 42
    invoke-virtual {p0}, Lmiui/cloud/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v0

    .line 43
    .local v0, "stringItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/cloud/backup/data/SettingItem<*>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/cloud/backup/data/SettingItem<*>;>;"
    const-string v3, "SettingsBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/cloud/backup/data/SettingItem;

    invoke-virtual {v5}, Lmiui/cloud/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/cloud/backup/data/SettingItem<*>;>;"
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private prependPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restoreSettings(Lmiui/cloud/backup/data/DataPackage;I)Z
    .locals 5
    .param p1, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;
    .param p2, "version"    # I

    .line 95
    const-string v0, "SettingsBackup"

    const-string v1, "SettingsBackupServiceBase:restoreSettings"

    invoke-direct {p0, v1}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;->checkAndGetBackuper()Lmiui/cloud/backup/ICloudBackup;

    move-result-object v0

    .line 98
    .local v0, "backuper":Lmiui/cloud/backup/ICloudBackup;
    invoke-interface {v0, p0}, Lmiui/cloud/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v1

    .line 99
    .local v1, "currentVersion":I
    if-le p2, v1, :cond_0

    .line 100
    const-string v2, "SettingsBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop restore data because dataVersion is higher than currentAppVersion, dataVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currentAppVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    return v2

    .line 104
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lmiui/cloud/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V

    .line 105
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected abstract getBackupImpl()Lmiui/cloud/backup/ICloudBackup;
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 51
    if-nez p1, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    const-string v0, "SettingsBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "SettingsBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "SettingsBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v1, "result_receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 59
    .local v1, "r":Landroid/os/ResultReceiver;
    const-string v2, "miui.action.CLOUD_BACKUP_SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 60
    if-eqz v1, :cond_4

    .line 61
    invoke-direct {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;->backupSettings()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 63
    const-string v4, "SettingsBackup"

    const-string v5, "bundle result is null after backupSettings"

    invoke-direct {p0, v5}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    invoke-virtual {v1, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 66
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_2

    .line 67
    :cond_2
    const-string v2, "miui.action.CLOUD_RESTORE_SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "data_package"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 70
    .local v2, "dataBinder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 71
    .local v4, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 73
    .local v5, "reply":Landroid/os/Parcel;
    const/4 v6, 0x2

    :try_start_0
    invoke-interface {v2, v6, v4, v5, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 74
    const-string v6, "version"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 75
    .local v6, "packageVersion":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {p0, v7, v6}, Lmiui/cloud/backup/CloudBackupServiceBase;->restoreSettings(Lmiui/cloud/backup/data/DataPackage;I)Z

    move-result v7

    .line 76
    .local v7, "success":Z
    const-string v8, "SettingsBackup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "r.send()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lmiui/cloud/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v7, :cond_3

    .line 78
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, v8}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 81
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v6    # "packageVersion":I
    .end local v7    # "success":Z
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 89
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 85
    return-void

    .line 87
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 92
    .end local v2    # "dataBinder":Landroid/os/IBinder;
    .end local v4    # "data":Landroid/os/Parcel;
    .end local v5    # "reply":Landroid/os/Parcel;
    :cond_4
    :goto_2
    return-void
.end method
