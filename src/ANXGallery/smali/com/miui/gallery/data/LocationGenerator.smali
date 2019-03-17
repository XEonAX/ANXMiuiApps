.class public Lcom/miui/gallery/data/LocationGenerator;
.super Ljava/lang/Object;
.source "LocationGenerator.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/data/LocationGenerator;


# instance fields
.field private CLOUD_PROJECTION:[Ljava/lang/String;

.field private mFuture:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exifGPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "exifGPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exifGPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exifGPSLongitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fileName"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->CLOUD_PROJECTION:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/data/LocationGenerator;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/data/LocationGenerator;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->CLOUD_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/LocationGenerator;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/data/LocationGenerator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocationGenerator;->toValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/data/LocationGenerator;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/miui/gallery/data/LocationGenerator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/data/LocationGenerator;->sInstance:Lcom/miui/gallery/data/LocationGenerator;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/miui/gallery/data/LocationGenerator;

    invoke-direct {v0}, Lcom/miui/gallery/data/LocationGenerator;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/LocationGenerator;->sInstance:Lcom/miui/gallery/data/LocationGenerator;

    .line 49
    :cond_0
    sget-object v0, Lcom/miui/gallery/data/LocationGenerator;->sInstance:Lcom/miui/gallery/data/LocationGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private toValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized generate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/data/LocationGenerator$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/data/LocationGenerator$1;-><init>(Lcom/miui/gallery/data/LocationGenerator;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->mFuture:Lcom/miui/gallery/threadpool/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/data/LocationGenerator;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 156
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/data/LocationGenerator;->sInstance:Lcom/miui/gallery/data/LocationGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
