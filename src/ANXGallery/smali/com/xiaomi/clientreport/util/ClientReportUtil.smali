.class public Lcom/xiaomi/clientreport/util/ClientReportUtil;
.super Ljava/lang/Object;
.source "ClientReportUtil.java"


# direct methods
.method public static checkEventNeedUpload(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v1

    .line 158
    .local v1, "isOpen":Z
    if-nez v1, :cond_1

    const/4 v6, -0x1

    .line 171
    :cond_0
    :goto_0
    return v6

    .line 159
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v8

    long-to-int v0, v8

    .line 160
    .local v0, "frequency":I
    invoke-static {p0}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v7

    const-string/jumbo v8, "sp_client_report_status"

    const-string v9, "event_last_upload_time"

    const-wide/16 v10, 0x0

    .line 161
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/xiaomi/clientreport/util/SPManager;->getLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 164
    .local v2, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 166
    .local v4, "now":J
    sub-long v8, v4, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 167
    .local v6, "timeDiff":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start event upload timeDiff "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v7, v0, -0x5

    if-lt v6, v7, :cond_0

    .line 169
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static checkPerfNeedUpload(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v1

    .line 136
    .local v1, "isOpen":Z
    if-nez v1, :cond_1

    const/4 v6, -0x1

    .line 147
    :cond_0
    :goto_0
    return v6

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v8

    long-to-int v0, v8

    .line 138
    .local v0, "frequency":I
    invoke-static {p0}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v7

    const-string/jumbo v8, "sp_client_report_status"

    const-string v9, "perf_last_upload_time"

    const-wide/16 v10, 0x0

    .line 139
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/xiaomi/clientreport/util/SPManager;->getLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 141
    .local v2, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 142
    .local v4, "now":J
    sub-long v8, v4, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 143
    .local v6, "timeDiff":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start perf upload timeDiff "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v7, v0, -0x5

    if-lt v6, v7, :cond_0

    .line 145
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v1

    const-string/jumbo v2, "sp_client_report_status"

    const-string/jumbo v3, "sp_client_report_key"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaomi/clientreport/util/SPManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {p0}, Lcom/xiaomi/clientreport/util/SPManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/util/SPManager;

    move-result-object v1

    const-string/jumbo v2, "sp_client_report_status"

    const-string/jumbo v3, "sp_client_report_key"

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/clientreport/util/SPManager;->setStringnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method public static getOs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadFileName(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "floder"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, "folder":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Lcom/xiaomi/clientreport/util/ClientReportUtil$2;

    invoke-direct {v1}, Lcom/xiaomi/clientreport/util/ClientReportUtil$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 295
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFileCanBeUse(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x1

    .line 261
    .local v4, "result":Z
    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->getConfig()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/clientreport/data/Config;->getMaxFileLength()J

    move-result-wide v2

    .line 262
    .local v2, "fileLength":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 265
    const/4 v4, 0x0

    .line 274
    :cond_0
    :goto_0
    return v4

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 269
    const/4 v4, 0x0

    .line 270
    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static isSupportXMSFUpload(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.xiaomi.xmsf"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 87
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x6c

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    .line 91
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static moveFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcDir"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;

    .prologue
    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 184
    .local v6, "destFolder":Ljava/io/File;
    if-eqz v6, :cond_1

    .line 185
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 186
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 194
    .local v11, "folder":Ljava/io/File;
    if-eqz v11, :cond_1

    .line 195
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 196
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 250
    .end local v11    # "folder":Ljava/io/File;
    :cond_1
    return-void

    .line 199
    .restart local v11    # "folder":Ljava/io/File;
    :cond_2
    new-instance v17, Lcom/xiaomi/clientreport/util/ClientReportUtil$1;

    invoke-direct/range {v17 .. v17}, Lcom/xiaomi/clientreport/util/ClientReportUtil$1;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    .line 208
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_1

    array-length v0, v10

    move/from16 v17, v0

    if-lez v17, :cond_1

    .line 211
    const/4 v15, 0x0

    .line 212
    .local v15, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v12, 0x0

    .line 213
    .local v12, "lock":Ljava/nio/channels/FileLock;
    const/4 v13, 0x0

    .line 214
    .local v13, "lockFile":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 215
    .local v18, "now":J
    array-length v0, v10

    move/from16 v20, v0

    const/16 v17, 0x0

    move-object v14, v13

    .end local v13    # "lockFile":Ljava/io/File;
    .local v14, "lockFile":Ljava/io/File;
    move-object/from16 v16, v15

    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v16, "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v9, v10, v17

    .line 217
    .local v9, "file":Ljava/io/File;
    if-eqz v9, :cond_3

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    if-eqz v21, :cond_6

    .line 236
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 238
    :try_start_1
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    :cond_4
    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    if-eqz v14, :cond_b

    .line 245
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockFile":Ljava/io/File;
    move-object/from16 v15, v16

    .line 215
    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_5
    :goto_2
    add-int/lit8 v17, v17, 0x1

    move-object v14, v13

    .end local v13    # "lockFile":Ljava/io/File;
    .restart local v14    # "lockFile":Ljava/io/File;
    move-object/from16 v16, v15

    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v8

    .line 240
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 218
    .end local v8    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_2
    new-instance v13, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".lock"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v14    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockFile":Ljava/io/File;
    :try_start_3
    invoke-static {v13}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 220
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v21, "rw"

    move-object/from16 v0, v21

    invoke-direct {v15, v13, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v12

    .line 222
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "destFolderPath":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "dest":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 226
    .local v5, "destFile":Ljava/io/File;
    :try_start_5
    invoke-static {v9, v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 232
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 236
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 238
    :try_start_7
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 243
    :cond_7
    :goto_4
    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    if-eqz v13, :cond_5

    .line 245
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 227
    :catch_1
    move-exception v8

    .line 228
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 233
    .end local v4    # "dest":Ljava/lang/String;
    .end local v5    # "destFile":Ljava/io/File;
    .end local v7    # "destFolderPath":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 234
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 236
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 238
    :try_start_a
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 243
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    if-eqz v13, :cond_5

    .line 245
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 239
    .restart local v4    # "dest":Ljava/lang/String;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v7    # "destFolderPath":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 240
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 239
    .end local v4    # "dest":Ljava/lang/String;
    .end local v5    # "destFile":Ljava/io/File;
    .end local v7    # "destFolderPath":Ljava/lang/String;
    .local v8, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 240
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 236
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "lockFile":Ljava/io/File;
    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "lockFile":Ljava/io/File;
    .restart local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v17

    move-object v13, v14

    .end local v14    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_7
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 238
    :try_start_b
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 243
    :cond_9
    :goto_8
    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    if-eqz v13, :cond_a

    .line 245
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_a
    throw v17

    .line 239
    :catch_5
    move-exception v8

    .line 240
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 236
    .end local v8    # "e":Ljava/io/IOException;
    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_7

    :catchall_2
    move-exception v17

    goto :goto_7

    .line 233
    .end local v13    # "lockFile":Ljava/io/File;
    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "lockFile":Ljava/io/File;
    .restart local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v8

    move-object v13, v14

    .end local v14    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v13    # "lockFile":Ljava/io/File;
    .end local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "lockFile":Ljava/io/File;
    .restart local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_b
    move-object v13, v14

    .end local v14    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockFile":Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method public static parseKey(Ljava/lang/String;)[B
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, "keyBytes":[B
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 55
    .local v1, "parsedKey":[B
    const/4 v2, 0x0

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    .line 56
    const/16 v2, 0xf

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    .line 57
    return-object v1
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventData"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "category"

    const-string v2, "category_client_report_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "name"

    const-string v2, "quality_support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static sendFile(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->isSupportXMSFUpload(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    invoke-static {p0, v0}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->sendData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
