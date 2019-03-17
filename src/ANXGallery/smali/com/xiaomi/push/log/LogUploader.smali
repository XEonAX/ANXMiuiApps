.class public Lcom/xiaomi/push/log/LogUploader;
.super Ljava/lang/Object;
.source "LogUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/log/LogUploader$CleanUpTask;,
        Lcom/xiaomi/push/log/LogUploader$UploadTask;,
        Lcom/xiaomi/push/log/LogUploader$Task;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/xiaomi/push/log/LogUploader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/push/log/LogUploader$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/log/LogUploader;->sInstance:Lcom/xiaomi/push/log/LogUploader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 56
    iput-object p1, p0, Lcom/xiaomi/push/log/LogUploader;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/push/log/LogUploader$CleanUpTask;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/log/LogUploader$CleanUpTask;-><init>(Lcom/xiaomi/push/log/LogUploader;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 60
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/log/LogUploader;->executeTask(J)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/log/LogUploader;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/log/LogUploader;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/log/LogUploader;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/push/log/LogUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/log/LogUploader;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/log/LogUploader;->uploadIfNeed(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/push/log/LogUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/log/LogUploader;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xiaomi/push/log/LogUploader;->cleanUp()V

    return-void
.end method

.method private cleanExpiredTask()V
    .locals 3

    .prologue
    .line 292
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/log/LogUploader$Task;

    .line 294
    .local v0, "task":Lcom/xiaomi/push/log/LogUploader$Task;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/xiaomi/push/log/LogUploader$Task;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    .line 296
    :cond_1
    const-string v1, "remove Expired task"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v0    # "task":Lcom/xiaomi/push/log/LogUploader$Task;
    :cond_2
    return-void
.end method

.method private cleanUp()V
    .locals 5

    .prologue
    .line 239
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardBusy()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardUnavailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/push/log/LogUploader;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.logcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 247
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private executeTask(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/xiaomi/push/log/LogUploader$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/log/LogUploader$2;-><init>(Lcom/xiaomi/push/log/LogUploader;)V

    invoke-static {v0, p1, p2}, Lcom/xiaomi/smack/util/TaskExecutor;->execute(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;J)V

    .line 288
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/log/LogUploader;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v1, Lcom/xiaomi/push/log/LogUploader;->sInstance:Lcom/xiaomi/push/log/LogUploader;

    if-nez v1, :cond_1

    .line 65
    const-class v2, Lcom/xiaomi/push/log/LogUploader;

    monitor-enter v2

    .line 66
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/log/LogUploader;->sInstance:Lcom/xiaomi/push/log/LogUploader;

    .line 67
    .local v0, "instance":Lcom/xiaomi/push/log/LogUploader;
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/xiaomi/push/log/LogUploader;

    .end local v0    # "instance":Lcom/xiaomi/push/log/LogUploader;
    invoke-direct {v0, p0}, Lcom/xiaomi/push/log/LogUploader;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v0    # "instance":Lcom/xiaomi/push/log/LogUploader;
    sput-object v0, Lcom/xiaomi/push/log/LogUploader;->sInstance:Lcom/xiaomi/push/log/LogUploader;

    .line 71
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0    # "instance":Lcom/xiaomi/push/log/LogUploader;
    :cond_1
    sget-object v1, Lcom/xiaomi/push/log/LogUploader;->sInstance:Lcom/xiaomi/push/log/LogUploader;

    iput-object p0, v1, Lcom/xiaomi/push/log/LogUploader;->mContext:Landroid/content/Context;

    .line 75
    sget-object v1, Lcom/xiaomi/push/log/LogUploader;->sInstance:Lcom/xiaomi/push/log/LogUploader;

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private uploadIfNeed(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 256
    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/log/LogUploader$Task;

    .line 257
    .local v0, "task":Lcom/xiaomi/push/log/LogUploader$Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/log/LogUploader$Task;->canExcuteNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/log/LogUploader;->executeTask(J)V

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUpload()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/xiaomi/push/log/LogUploader;->cleanExpiredTask()V

    .line 124
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/log/LogUploader;->uploadIfNeed(J)V

    .line 125
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/util/Date;
    .param p4, "to"    # Ljava/util/Date;
    .param p5, "maxlen"    # I
    .param p6, "force"    # Z

    .prologue
    .line 88
    iget-object v8, p0, Lcom/xiaomi/push/log/LogUploader;->mTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/push/log/LogUploader$1;

    move-object v1, p0

    move v2, p5

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/log/LogUploader$1;-><init>(Lcom/xiaomi/push/log/LogUploader;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 116
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/log/LogUploader;->executeTask(J)V

    .line 117
    return-void
.end method
