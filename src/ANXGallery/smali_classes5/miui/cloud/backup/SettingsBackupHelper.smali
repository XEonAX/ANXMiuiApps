.class public Lmiui/cloud/backup/SettingsBackupHelper;
.super Ljava/lang/Object;
.source "SettingsBackupHelper.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lmiui/cloud/backup/ICloudBackup;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lmiui/cloud/backup/ICloudBackup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    new-instance v0, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v0}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 76
    .local v0, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    invoke-interface {p2, p0, v0}, Lmiui/cloud/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v1, "settingsJson":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v2, "settingsArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lmiui/cloud/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 80
    .local v3, "settingItems":Ljava/util/Collection;, "Ljava/util/Collection<Lmiui/cloud/backup/data/SettingItem<*>;>;"
    const/4 v4, 0x0

    .line 82
    .local v4, "output":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    .line 83
    :try_start_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/cloud/backup/data/SettingItem;

    .line 84
    .local v6, "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    invoke-virtual {v6}, Lmiui/cloud/backup/data/SettingItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    .line 85
    .local v7, "itemJson":Lorg/json/JSONObject;
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    .end local v6    # "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    .end local v7    # "itemJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 87
    :cond_0
    const-string v5, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v5, "version"

    invoke-interface {p2, p0}, Lmiui/cloud/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 97
    :catch_0
    move-exception v5

    goto :goto_2

    .line 95
    :catch_1
    move-exception v5

    goto :goto_3

    .line 91
    :cond_1
    :goto_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v5

    .line 92
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 97
    :goto_2
    nop

    .line 98
    .local v5, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v6, "SettingsBackup"

    const-string v7, "JSONException in backupSettings"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Lorg/json/JSONException;
    goto :goto_4

    .line 95
    :goto_3
    nop

    .line 96
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "SettingsBackup"

    const-string v7, "IOException in backupSettings"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :goto_5
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5
.end method

.method public static backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lmiui/cloud/backup/ICloudBackup;Lmiui/app/backup/FullBackupAgent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lmiui/cloud/backup/ICloudBackup;
    .param p3, "agent"    # Lmiui/app/backup/FullBackupAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v0}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 116
    .local v0, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    invoke-interface {p2, p0, v0}, Lmiui/cloud/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    .line 117
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v1, "settingsJson":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v2, "settingsArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lmiui/cloud/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 120
    .local v3, "settingItems":Ljava/util/Collection;, "Ljava/util/Collection<Lmiui/cloud/backup/data/SettingItem<*>;>;"
    const/4 v4, 0x0

    .line 122
    .local v4, "output":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    .line 123
    :try_start_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/cloud/backup/data/SettingItem;

    .line 124
    .local v6, "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    invoke-virtual {v6}, Lmiui/cloud/backup/data/SettingItem;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    .line 125
    .local v7, "itemJson":Lorg/json/JSONObject;
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 126
    .end local v6    # "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    .end local v7    # "itemJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 127
    :cond_0
    const-string v5, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v5, "version"

    invoke-interface {p2, p0}, Lmiui/cloud/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v5

    goto :goto_6

    .line 137
    :catch_0
    move-exception v5

    goto :goto_2

    .line 135
    :catch_1
    move-exception v5

    goto :goto_3

    .line 131
    :cond_1
    :goto_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v5

    .line 132
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 134
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 137
    :goto_2
    nop

    .line 138
    .local v5, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v6, "SettingsBackup"

    const-string v7, "JSONException in backupSettings"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e":Lorg/json/JSONException;
    goto :goto_4

    .line 135
    :goto_3
    nop

    .line 136
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "SettingsBackup"

    const-string v7, "IOException in backupSettings"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 141
    nop

    .line 144
    invoke-virtual {v0}, Lmiui/cloud/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 145
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {p3, v6}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 146
    .end local v6    # "path":Ljava/lang/String;
    goto :goto_5

    .line 147
    :cond_2
    return-void

    .line 140
    :goto_6
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5
.end method

.method private static isSettingsBackupEnabled(Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    const-string v0, "settings_backup"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static requestBackupSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 54
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {v0}, Lmiui/cloud/backup/SettingsBackupHelper;->isSettingsBackupEnabled(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/cloud/backup/SettingsBackupHelper;->requestSettingsBackupManualSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method private static requestManualSync(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "settingsBundle":Landroid/os/Bundle;
    const-string v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    if-eqz p2, :cond_0

    .line 68
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method private static requestSettingsBackupManualSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 60
    const-string v0, "settings_backup"

    invoke-static {p0, v0, p1}, Lmiui/cloud/backup/SettingsBackupHelper;->requestManualSync(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static restoreFiles(Lmiui/cloud/backup/data/DataPackage;)V
    .locals 4
    .param p0, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;

    .line 242
    invoke-virtual {p0}, Lmiui/cloud/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, "path":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 245
    .local v3, "data":Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v3}, Lmiui/cloud/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 246
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "data":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public static restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "fileInputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 210
    .local v1, "fileOutputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 211
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "folderPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v4, "targetFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 214
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 215
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 218
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "length":I
    if-lez v6, :cond_0

    .line 220
    invoke-virtual {v1, v5, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "folderPath":Ljava/lang/String;
    .end local v4    # "targetFolder":Ljava/io/File;
    .end local v5    # "buffer":[B
    .end local v7    # "length":I
    goto :goto_1

    .line 230
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "SettingsBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in restoreFiles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 225
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "SettingsBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException in restoreFiles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 232
    nop

    .line 233
    return-void

    .line 230
    :goto_2
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
.end method

.method public static restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lmiui/cloud/backup/ICloudBackup;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lmiui/cloud/backup/ICloudBackup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "line":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "ls":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "settingsJson":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 175
    const-string v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 176
    .local v5, "backupVersion":I
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 177
    .local v6, "settingsArray":Lorg/json/JSONArray;
    new-instance v7, Lmiui/cloud/backup/data/DataPackage;

    invoke-direct {v7}, Lmiui/cloud/backup/data/DataPackage;-><init>()V

    .line 178
    .local v7, "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    if-eqz v6, :cond_2

    .line 179
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 180
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 181
    .local v9, "itemJson":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 182
    invoke-static {v9}, Lmiui/cloud/backup/data/SettingItem;->fromJson(Lorg/json/JSONObject;)Lmiui/cloud/backup/data/SettingItem;

    move-result-object v10

    .line 183
    .local v10, "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    iget-object v11, v10, Lmiui/cloud/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Lmiui/cloud/backup/data/DataPackage;->addAbstractDataItem(Ljava/lang/String;Lmiui/cloud/backup/data/SettingItem;)V

    .line 179
    .end local v9    # "itemJson":Lorg/json/JSONObject;
    .end local v10    # "settingItem":Lmiui/cloud/backup/data/SettingItem;, "Lmiui/cloud/backup/data/SettingItem<*>;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 187
    .end local v8    # "i":I
    :cond_2
    invoke-interface {p2, p0, v7, v5}, Lmiui/cloud/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "ls":Ljava/lang/String;
    .end local v4    # "settingsJson":Lorg/json/JSONObject;
    .end local v5    # "backupVersion":I
    .end local v6    # "settingsArray":Lorg/json/JSONArray;
    .end local v7    # "dataPackage":Lmiui/cloud/backup/data/DataPackage;
    goto :goto_2

    .line 194
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v2, "SettingsBackup"

    const-string v3, "JSONException in restoreSettings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SettingsBackup"

    const-string v3, "IOException in restoreSettings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :goto_3
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v1
.end method
