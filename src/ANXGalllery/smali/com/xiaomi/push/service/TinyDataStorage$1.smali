.class final Lcom/xiaomi/push/service/TinyDataStorage$1;
.super Ljava/lang/Object;
.source "TinyDataStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/TinyDataStorage;->cacheTinyData(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xiaomi/push/service/TinyDataStorage$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/push/service/TinyDataStorage$1;->val$item:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 51
    sget-object v6, Lcom/xiaomi/push/service/TinyDataStorage;->mTinyDataLock4Thread:Ljava/lang/Object;

    monitor-enter v6

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 57
    .local v1, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/xiaomi/push/service/TinyDataStorage$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v7, "tiny_data.lock"

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v2, "lockFile":Ljava/io/File;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 59
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v4, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 61
    iget-object v5, p0, Lcom/xiaomi/push/service/TinyDataStorage$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/xiaomi/push/service/TinyDataStorage$1;->val$item:Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-static {v5, v7}, Lcom/xiaomi/push/service/TinyDataStorage;->access$000(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 65
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 72
    :cond_0
    :goto_0
    :try_start_4
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v4

    .line 74
    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 65
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    :try_start_9
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .line 65
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

    .line 67
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 72
    :cond_2
    :goto_6
    :try_start_c
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    throw v5

    .line 68
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 65
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 62
    .end local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
