.class public Lcom/xiaomi/tinyData/TinyDataCacheReader;
.super Ljava/lang/Object;
.source "TinyDataCacheReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;
    }
.end annotation


# static fields
.field private static mTinyDataJobIsRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/tinyData/TinyDataCacheReader;->mTinyDataJobIsRunning:Z

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/xiaomi/tinyData/TinyDataUploader;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/xiaomi/tinyData/TinyDataCacheReader;->extractTinyData(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V

    return-void
.end method

.method public static addTinyDataCacheReadJob(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;-><init>(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method private static extractTinyData(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;

    .prologue
    const/4 v10, 0x0

    .line 61
    sget-boolean v7, Lcom/xiaomi/tinyData/TinyDataCacheReader;->mTinyDataJobIsRunning:Z

    if-nez v7, :cond_0

    .line 62
    const/4 v7, 0x1

    sput-boolean v7, Lcom/xiaomi/tinyData/TinyDataCacheReader;->mTinyDataJobIsRunning:Z

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "tiny_data.data"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 69
    const-string v7, "TinyData no ready file to get data."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 109
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v7, "TinyData extractTinyData is running"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/tinyData/TinyDataCacheReader;->verifyFileDir(Landroid/content/Context;)V

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 76
    .local v3, "lock":Ljava/nio/channels/FileLock;
    invoke-static {p0}, Lcom/xiaomi/push/service/TinyDataStorage;->getTinyDataKeyWithDefault(Landroid/content/Context;)[B

    move-result-object v2

    .line 79
    .local v2, "key":[B
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "tiny_data.lock"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v4, "lockFile":Ljava/io/File;
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 81
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v6, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 83
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tdReadTemp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "tiny_data.data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 96
    :cond_2
    :goto_1
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 98
    .end local v4    # "lockFile":Ljava/io/File;
    .end local v6    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tdReadTemp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "tiny_data.data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 102
    const-string v7, "TinyData no ready file to get data."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 89
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 91
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 96
    :cond_4
    :goto_6
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    throw v7

    .line 105
    :cond_5
    invoke-static {p0, p1, v1, v2}, Lcom/xiaomi/tinyData/TinyDataCacheReader;->readTinyDataFromFile(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/io/File;[B)V

    .line 106
    invoke-static {v10}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->setIsTinyDataExtracting(Z)V

    .line 107
    invoke-static {p0}, Lcom/xiaomi/tinyData/TinyDataCacheReader;->updateTinyDataUploadTimeStamp(Landroid/content/Context;)V

    .line 108
    sput-boolean v10, Lcom/xiaomi/tinyData/TinyDataCacheReader;->mTinyDataJobIsRunning:Z

    goto/16 :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockFile":Ljava/io/File;
    .restart local v6    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 86
    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method private static readTinyDataFromFile(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/io/File;[B)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "key"    # [B

    .prologue
    .line 112
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    const/4 v15, 0x4

    new-array v11, v15, [B

    .line 116
    .local v11, "lengthBuffer":[B
    const/4 v2, 0x0

    .line 118
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 119
    .local v8, "itemCount":I
    const/4 v9, 0x0

    .line 121
    .local v9, "itemSize":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    move-object v13, v12

    .line 123
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    :goto_0
    :try_start_1
    invoke-virtual {v3, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    .line 124
    .local v14, "size":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 167
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/xiaomi/tinyData/TinyDataCacheUploader;->uploadTinyData(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/util/List;)V

    .line 168
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TinyData readTinyDataFromFile upload tiny data at last. items:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ts:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 169
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 170
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v15

    if-nez v15, :cond_0

    .line 171
    const-string v15, "TinyData delete reading temp file failed"

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_0
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .line 179
    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .end local v14    # "size":I
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    :goto_2
    return-void

    .line 128
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v14    # "size":I
    :cond_1
    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    .line 129
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TinyData read from cache file failed cause lengthBuffer error. size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 174
    .end local v14    # "size":I
    :catch_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .line 175
    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .local v6, "e":Ljava/lang/Exception;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    :goto_3
    :try_start_3
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 134
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v14    # "size":I
    :cond_2
    :try_start_4
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->toInt([B)I

    move-result v10

    .line 135
    .local v10, "length":I
    const/4 v15, 0x1

    if-lt v10, v15, :cond_3

    const/16 v15, 0x2800

    if-le v10, v15, :cond_4

    .line 136
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TinyData read from cache file failed cause lengthBuffer < 1 || too big. length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 177
    .end local v10    # "length":I
    .end local v14    # "size":I
    :catchall_0
    move-exception v15

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    :goto_4
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v15

    .line 139
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "length":I
    .restart local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v14    # "size":I
    :cond_4
    :try_start_5
    new-array v4, v10, [B

    .line 140
    .local v4, "buffer":[B
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    .line 141
    if-eq v14, v10, :cond_5

    .line 142
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TinyData read from cache file failed cause buffer size not equal length. size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "__length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :cond_5
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/xiaomi/channel/commonutils/android/DataCryptUtils;->mipushDecrypt([B[B)[B

    move-result-object v5

    .line 147
    .local v5, "decryptBytes":[B
    if-eqz v5, :cond_6

    array-length v15, v5

    if-nez v15, :cond_7

    .line 149
    :cond_6
    const-string v15, "TinyData read from cache file failed cause decrypt fail"

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_7
    new-instance v7, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v7}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 154
    .local v7, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-static {v7, v5}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 155
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    array-length v15, v5

    add-int/2addr v9, v15

    .line 158
    const/16 v15, 0x8

    if-ge v8, v15, :cond_8

    const/16 v15, 0x2800

    if-lt v9, v15, :cond_9

    .line 159
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TinyData readTinyDataFromFile upload tiny data by part. items:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ts:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/xiaomi/tinyData/TinyDataCacheUploader;->uploadTinyData(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/util/List;)V

    .line 161
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    const/4 v8, 0x0

    .line 163
    const/4 v9, 0x0

    :goto_5
    move-object v13, v12

    .line 165
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    goto/16 :goto_0

    .line 177
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "decryptBytes":[B
    .end local v7    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .end local v10    # "length":I
    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .end local v14    # "size":I
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    :catchall_1
    move-exception v15

    goto/16 :goto_4

    .line 174
    :catch_1
    move-exception v6

    goto/16 :goto_3

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "decryptBytes":[B
    .restart local v7    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .restart local v10    # "length":I
    .restart local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v14    # "size":I
    :cond_9
    move-object v12, v13

    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    goto :goto_5
.end method

.method private static updateTinyDataUploadTimeStamp(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-string v1, "mipush_extra"

    const/4 v2, 0x4

    .line 190
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_tiny_data_upload_timestamp"

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 191
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    return-void
.end method

.method private static verifyFileDir(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tdReadTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "fileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 186
    :cond_0
    return-void
.end method
