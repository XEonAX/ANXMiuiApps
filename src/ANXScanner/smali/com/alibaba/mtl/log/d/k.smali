.class public Lcom/alibaba/mtl/log/d/k;
.super Ljava/lang/Object;
.source "MutiProcessLock.java"


# static fields
.field static a:Ljava/io/File;

.field static a:Ljava/nio/channels/FileChannel;

.field static a:Ljava/nio/channels/FileLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/io/File;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    const-class v3, Lcom/alibaba/mtl/log/d/k;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/io/File;

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ap.Lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/io/File;

    .line 28
    :cond_0
    sget-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    :try_start_1
    sget-object v4, Lcom/alibaba/mtl/log/d/k;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 35
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 57
    :goto_1
    monitor-exit v3

    return v0

    .line 39
    :cond_2
    :try_start_2
    sget-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    .line 41
    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/alibaba/mtl/log/d/k;->a:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sput-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :cond_3
    :try_start_4
    sget-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    sput-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_2
    :try_start_5
    const-string v2, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v1

    .line 57
    goto :goto_1

    .line 42
    :catch_1
    move-exception v0

    move v0, v1

    .line 43
    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 55
    goto :goto_2

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 32
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public static declared-synchronized release()V
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/alibaba/mtl/log/d/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 63
    :try_start_1
    sget-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileLock;

    .line 69
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 71
    :try_start_3
    sget-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 75
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    sput-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileLock;

    throw v0

    .line 72
    :catch_1
    move-exception v0

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lcom/alibaba/mtl/log/d/k;->a:Ljava/nio/channels/FileChannel;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
