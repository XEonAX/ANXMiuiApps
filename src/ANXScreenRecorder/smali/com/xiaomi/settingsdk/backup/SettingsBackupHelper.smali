.class public Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;
.super Ljava/lang/Object;
.source "SettingsBackupHelper.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;-><init>()V

    .line 49
    .local v0, "dataPackage":Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    invoke-interface {p2, p0, v0}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    .line 50
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v9, "settingsJson":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .local v8, "settingsArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 53
    .local v7, "settingItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;>;"
    const/4 v4, 0x0

    .line 55
    .local v4, "output":Ljava/io/FileOutputStream;
    if-eqz v7, :cond_1

    .line 56
    :try_start_0
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    .line 57
    .local v6, "settingItem":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    invoke-virtual {v6}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 58
    .local v3, "itemJson":Lorg/json/JSONObject;
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemJson":Lorg/json/JSONObject;
    .end local v6    # "settingItem":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    const-string v10, "SettingsBackup"

    const-string v11, "IOException in backupSettings"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v0

    .line 60
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    const-string v10, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v10, "version"

    invoke-interface {p2, p0}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v10, "data"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .local v5, "output":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 66
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 67
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 74
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 70
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Lorg/json/JSONException;
    :goto_3
    :try_start_4
    const-string v10, "SettingsBackup"

    const-string v11, "JSONException in backupSettings"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v10

    :goto_4
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v10

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 70
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 68
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static restoreFiles(Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 5
    .param p0, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "path":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 174
    .local v0, "data":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3, v0}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 176
    .end local v0    # "data":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/ParcelFileDescriptor;>;"
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "fileInputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 139
    .local v4, "fileOutputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    :try_start_1
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "folderPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v8, "targetFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 143
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .local v5, "fileOutputStream":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 147
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-lez v7, :cond_0

    .line 149
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 154
    .end local v0    # "buffer":[B
    .end local v7    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 155
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v8    # "targetFolder":Ljava/io/File;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException in restoreFiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 162
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 152
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "folderPath":Ljava/lang/String;
    .restart local v7    # "length":I
    .restart local v8    # "targetFolder":Ljava/io/File;
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v5}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 161
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 156
    .end local v0    # "buffer":[B
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v7    # "length":I
    .end local v8    # "targetFolder":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v9, "SettingsBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException in restoreFiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 160
    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v9

    .line 159
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "folderPath":Ljava/lang/String;
    .restart local v8    # "targetFolder":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 156
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v8    # "targetFolder":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "folderPath":Ljava/lang/String;
    .restart local v8    # "targetFolder":Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 154
    .end local v6    # "folderPath":Ljava/lang/String;
    .end local v8    # "targetFolder":Ljava/io/File;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "settingsCloudBackup"    # Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v9, 0x0

    .line 92
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 94
    .local v7, "line":Ljava/lang/String;
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v15, "line.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "ls":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 98
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 118
    .end local v8    # "ls":Ljava/lang/String;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 119
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v15, "SettingsBackup"

    const-string v16, "IOException in restoreSettings"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-static {v9}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 101
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "ls":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v13, "settingsJson":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 104
    const-string v15, "version"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, "backupVersion":I
    const-string v15, "data"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 106
    .local v12, "settingsArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    invoke-direct {v3}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;-><init>()V

    .line 107
    .local v3, "dataPackage":Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    if-eqz v12, :cond_2

    .line 108
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v5, v15, :cond_2

    .line 109
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 110
    .local v6, "itemJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 111
    invoke-static {v6}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v11

    .line 112
    .local v11, "settingItem":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    iget-object v15, v11, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->key:Ljava/lang/String;

    invoke-virtual {v3, v15, v11}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addAbstractDataItem(Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem;)V

    .line 108
    .end local v11    # "settingItem":Lcom/xiaomi/settingsdk/backup/data/SettingItem;, "Lcom/xiaomi/settingsdk/backup/data/SettingItem<*>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 116
    .end local v5    # "i":I
    .end local v6    # "itemJson":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v3, v2}, Lcom/xiaomi/settingsdk/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .end local v2    # "backupVersion":I
    .end local v3    # "dataPackage":Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .end local v12    # "settingsArray":Lorg/json/JSONArray;
    :cond_3
    invoke-static {v10}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    move-object v9, v10

    .line 124
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 120
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "ls":Ljava/lang/String;
    .end local v13    # "settingsJson":Lorg/json/JSONObject;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    .line 121
    .local v4, "e":Lorg/json/JSONException;
    :goto_4
    :try_start_4
    const-string v15, "SettingsBackup"

    const-string v16, "JSONException in restoreSettings"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    invoke-static {v9}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_2

    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v15

    :goto_5
    invoke-static {v9}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v15

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 120
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 118
    .end local v7    # "line":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_1
.end method
