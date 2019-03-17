.class public Lcom/xiaomi/push/service/AppRegionStorage;
.super Ljava/lang/Object;
.source "AppRegionStorage.java"


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/service/AppRegionStorage;


# instance fields
.field private final REGION_CACHE_FILE_LOCK:Ljava/lang/String;

.field private final REGION_CACHE_FILE_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private volatile mRegion:Ljava/lang/String;

.field private final mRegionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegionLock:Ljava/lang/Object;

    .line 28
    const-string v0, "mipush_region"

    iput-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->REGION_CACHE_FILE_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "mipush_region.lock"

    iput-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->REGION_CACHE_FILE_LOCK:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/AppRegionStorage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/xiaomi/push/service/AppRegionStorage;->sInstance:Lcom/xiaomi/push/service/AppRegionStorage;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/xiaomi/push/service/AppRegionStorage;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/AppRegionStorage;->sInstance:Lcom/xiaomi/push/service/AppRegionStorage;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/xiaomi/push/service/AppRegionStorage;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/AppRegionStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/AppRegionStorage;->sInstance:Lcom/xiaomi/push/service/AppRegionStorage;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/AppRegionStorage;->sInstance:Lcom/xiaomi/push/service/AppRegionStorage;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readRegionFromFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v5, ""

    .line 126
    .local v5, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 129
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string v6, "mipush_region"

    invoke-virtual {p1, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 130
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 141
    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    throw v6

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 135
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private readRegionFromFileWithLock(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "mipush_region"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 95
    const-string v7, "Region no ready file to get data."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v6

    .line 98
    :cond_0
    const/4 v4, 0x0

    .line 99
    .local v4, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 100
    .local v2, "lock":Ljava/nio/channels/FileLock;
    iget-object v7, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 103
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "mipush_region.lock"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v3, "lockFile":Ljava/io/File;
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 105
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v5, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 106
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v5, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/AppRegionStorage;->readRegionFromFile(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    .line 112
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :cond_1
    :goto_1
    :try_start_4
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    :try_start_9
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 110
    monitor-exit v7

    goto :goto_0

    .line 121
    :catchall_1
    move-exception v6

    goto :goto_2

    .line 112
    :catchall_2
    move-exception v6

    :goto_5
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 119
    :cond_3
    :goto_6
    :try_start_b
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    throw v6

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 108
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method private writeRegion2File(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "mipush_region"

    const v3, 0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private writeRegion2FileWithLock(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v6, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegionLock:Ljava/lang/Object;

    monitor-enter v6

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 59
    .local v1, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v7, "mipush_region.lock"

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v2, "lockFile":Ljava/io/File;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 61
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v4, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/service/AppRegionStorage;->writeRegion2File(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 67
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    :cond_0
    :goto_0
    :try_start_4
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v4

    .line 76
    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 67
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    :try_start_9
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .line 67
    :catchall_1
    move-exception v5

    :goto_5
    if-eqz v1, :cond_2

    :try_start_a
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 74
    :cond_2
    :goto_6
    :try_start_c
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 67
    throw v5

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 67
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 64
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/AppRegionStorage;->readRegionFromFileWithLock(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegion:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 2
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegion:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegion:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/push/service/AppRegionStorage;->mRegion:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/service/AppRegionStorage;->writeRegion2FileWithLock(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method
