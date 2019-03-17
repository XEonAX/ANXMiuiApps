.class public final Lcom/xiaomi/channel/commonutils/file/FileLocker;
.super Ljava/lang/Object;
.source "FileLocker.java"


# static fields
.field private static final LOCK_HELD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/nio/channels/FileLock;

.field private mLockFile:Ljava/io/RandomAccessFile;

.field private mLockFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->LOCK_HELD:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static lock(Landroid/content/Context;Ljava/io/File;)Lcom/xiaomi/channel/commonutils/file/FileLocker;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locking: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".LOCK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 62
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 67
    .end local v3    # "parent":Ljava/io/File;
    :cond_0
    sget-object v4, Lcom/xiaomi/channel/commonutils/file/FileLocker;->LOCK_HELD:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 68
    new-instance v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;

    invoke-direct {v1, p0}, Lcom/xiaomi/channel/commonutils/file/FileLocker;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "locker":Lcom/xiaomi/channel/commonutils/file/FileLocker;
    iput-object v2, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFileName:Ljava/lang/String;

    .line 71
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    .line 72
    iget-object v4, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v4, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    if-nez v4, :cond_2

    .line 77
    iget-object v4, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    .line 78
    iget-object v4, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    :cond_1
    sget-object v4, Lcom/xiaomi/channel/commonutils/file/FileLocker;->LOCK_HELD:Ljava/util/Set;

    iget-object v5, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFileName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    return-object v1

    .line 76
    :catchall_0
    move-exception v4

    iget-object v5, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    if-nez v5, :cond_4

    .line 77
    iget-object v5, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_3

    .line 78
    iget-object v5, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    :cond_3
    sget-object v5, Lcom/xiaomi/channel/commonutils/file/FileLocker;->LOCK_HELD:Ljava/util/Set;

    iget-object v6, v1, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFileName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    throw v4

    .line 84
    .end local v1    # "locker":Lcom/xiaomi/channel/commonutils/file/FileLocker;
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "abtain lock failure"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public unlock()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLock:Ljava/nio/channels/FileLock;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->LOCK_HELD:Ljava/util/Set;

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/file/FileLocker;->mLockFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method
