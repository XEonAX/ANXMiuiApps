.class public Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;
.super Ljava/lang/Object;
.source "JobMutualExclusor.java"


# static fields
.field private static final COMMON_PATH:Ljava/lang/String;

.field private static final LAST_COLLECT_FILE_PATH:Ljava/lang/String;

.field private static final LAST_COLLECT_FILE_PATH_LOCK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mipush/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->COMMON_PATH:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->COMMON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lcfp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->LAST_COLLECT_FILE_PATH:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->COMMON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lcfp.lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->LAST_COLLECT_FILE_PATH_LOCK:Ljava/lang/String;

    return-void
.end method

.method public static checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # Ljava/lang/String;
    .param p2, "period"    # J

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 135
    .local v1, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->LAST_COLLECT_FILE_PATH_LOCK:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "lockFile":Ljava/io/File;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 137
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v4, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 139
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWorking(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 143
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 151
    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_1
    return v5

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 149
    :cond_1
    :goto_3
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    const/4 v5, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 149
    :cond_2
    :goto_5
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 146
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 143
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 140
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private static checkPeriodAndRecordWorking(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # Ljava/lang/String;
    .param p2, "period"    # J

    .prologue
    .line 49
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const-string v18, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 51
    const/16 v18, 0x1

    .line 119
    :goto_0
    return v18

    .line 54
    :cond_0
    new-instance v7, Ljava/io/File;

    sget-object v18, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->LAST_COLLECT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v7, "file":Ljava/io/File;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v11, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 58
    .local v14, "timestamp":J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "newLine":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 68
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "pair":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 72
    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 74
    const/16 v18, 0x1

    aget-object v5, v13, v18

    .line 75
    .local v5, "collectPkgTimeStr":Ljava/lang/String;
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "collectPkgTime":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 79
    const/16 v18, 0x1

    aget-object v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 81
    .local v8, "lastTime":J
    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    sub-long v18, v14, v8

    .line 82
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p2

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f666666    # 0.9f

    mul-float v19, v19, v20

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1

    .line 84
    const/16 v18, 0x0

    .line 95
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 88
    .end local v4    # "collectPkgTime":[Ljava/lang/String;
    .end local v5    # "collectPkgTimeStr":Ljava/lang/String;
    .end local v8    # "lastTime":J
    :cond_2
    :try_start_2
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 91
    .end local v10    # "line":Ljava/lang/String;
    .end local v13    # "pair":[Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 93
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {v11}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const/16 v16, 0x0

    .line 107
    .local v16, "writer":Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v17, Ljava/io/BufferedWriter;

    new-instance v18, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    .local v17, "writer":Ljava/io/BufferedWriter;
    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 109
    .restart local v10    # "line":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedWriter;->newLine()V

    .line 111
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 113
    .end local v10    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object/from16 v16, v17

    .line 114
    .end local v17    # "writer":Ljava/io/BufferedWriter;
    .local v6, "e":Ljava/io/IOException;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    invoke-static/range {v16 .. v16}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    .end local v6    # "e":Ljava/io/IOException;
    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 95
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 96
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 95
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v18

    :goto_7
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v18

    .line 98
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_5
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 99
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 116
    .restart local v17    # "writer":Ljava/io/BufferedWriter;
    :cond_6
    invoke-static/range {v17 .. v17}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object/from16 v16, v17

    .line 117
    .end local v17    # "writer":Ljava/io/BufferedWriter;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    goto :goto_6

    .line 116
    :catchall_1
    move-exception v18

    :goto_8
    invoke-static/range {v16 .. v16}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v18

    .end local v16    # "writer":Ljava/io/BufferedWriter;
    .restart local v17    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/BufferedWriter;
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    goto :goto_8

    .line 113
    :catch_2
    move-exception v6

    goto :goto_5

    .line 95
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v18

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 91
    :catch_3
    move-exception v6

    goto :goto_2
.end method
