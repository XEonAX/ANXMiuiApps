.class public Lcom/miui/gallery/cleaner/ScannerManager;
.super Ljava/lang/Object;
.source "ScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;,
        Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;
    }
.end annotation


# static fields
.field public static final TIME_COST_STAGE:[I

.field private static instance:Lcom/miui/gallery/cleaner/ScannerManager;


# instance fields
.field private mObserverHolder:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

.field private mOnScanResultUpdateListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

.field private mReset:Z

.field private mScanFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFutureHandler:Lcom/miui/gallery/threadpool/FutureHandler;

.field private mScanJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanStartTime:J

.field private mScanners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cleaner/BaseScanner;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/cleaner/ScannerManager;->TIME_COST_STAGE:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0xa
        0xf
        0x19
        0x28
        0x3c
        0xb4
        0x12c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanners:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;-><init>(Lcom/miui/gallery/cleaner/ScannerManager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mObserverHolder:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mReset:Z

    .line 253
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/ScannerManager$5;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFutureHandler:Lcom/miui/gallery/threadpool/FutureHandler;

    .line 267
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/ScannerManager$6;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .line 301
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/ScannerManager$7;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mOnScanResultUpdateListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/cleaner/slim/SlimScanner;

    invoke-direct {v1}, Lcom/miui/gallery/cleaner/slim/SlimScanner;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanners:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/cleaner/ScreenshotScanner;

    invoke-direct {v1}, Lcom/miui/gallery/cleaner/ScreenshotScanner;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cleaner/ScannerManager;)Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mObserverHolder:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/cleaner/ScannerManager;ILcom/miui/gallery/cleaner/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/miui/gallery/cleaner/ScanResult;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cleaner/ScannerManager;->updateScanResult(ILcom/miui/gallery/cleaner/ScanResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/cleaner/ScannerManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/cleaner/ScannerManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/cleaner/ScannerManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/cleaner/ScannerManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cleaner/ScannerManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/cleaner/ScannerManager;)Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mOnScanResultUpdateListener:Lcom/miui/gallery/cleaner/BaseScanner$OnScanResultUpdateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/cleaner/ScannerManager;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/ScannerManager;->onScanProgress(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/gallery/cleaner/ScannerManager;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/cleaner/ScannerManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/ScannerManager;->removeScanResult(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/cleaner/ScannerManager;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/miui/gallery/cleaner/ScannerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/cleaner/ScannerManager;->instance:Lcom/miui/gallery/cleaner/ScannerManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-direct {v0}, Lcom/miui/gallery/cleaner/ScannerManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/cleaner/ScannerManager;->instance:Lcom/miui/gallery/cleaner/ScannerManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/miui/gallery/cleaner/ScannerManager;->instance:Lcom/miui/gallery/cleaner/ScannerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onScanProgress(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 243
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/cleaner/ScannerManager$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/cleaner/ScannerManager$4;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method private removeScanResult(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 203
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    monitor-enter v3

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/ScanResult;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/ScanResult;

    .line 207
    .local v1, "result":Lcom/miui/gallery/cleaner/ScanResult;
    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScanResult;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 209
    iget-wide v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    .line 210
    iget-wide v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    cmp-long v2, v4, v8

    if-gez v2, :cond_1

    .line 211
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    .line 216
    .end local v1    # "result":Lcom/miui/gallery/cleaner/ScanResult;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScannerManager;->updateScanResult()V

    .line 218
    return-void

    .line 216
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/ScanResult;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateScanResult()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/ScannerManager$3;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method private updateScanResult(ILcom/miui/gallery/cleaner/ScanResult;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "newResult"    # Lcom/miui/gallery/cleaner/ScanResult;

    .prologue
    .line 226
    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    monitor-enter v4

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 228
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cleaner/ScanResult;

    .line 229
    .local v2, "result":Lcom/miui/gallery/cleaner/ScanResult;
    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/ScanResult;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 230
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-wide v6, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    invoke-virtual {p2}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    .line 232
    iget-wide v6, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 233
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    .line 238
    .end local v2    # "result":Lcom/miui/gallery/cleaner/ScanResult;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScannerManager;->updateScanResult()V

    .line 240
    return-void

    .line 227
    .restart local v2    # "result":Lcom/miui/gallery/cleaner/ScanResult;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "count":I
    .end local v2    # "result":Lcom/miui/gallery/cleaner/ScanResult;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getScanSize()J
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-wide v2, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    monitor-exit v1

    return-wide v2

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScanner(I)Lcom/miui/gallery/cleaner/BaseScanner;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 63
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/BaseScanner;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/BaseScanner;

    .line 66
    .local v1, "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    iget v2, v1, Lcom/miui/gallery/cleaner/BaseScanner;->mType:I

    if-ne v2, p1, :cond_0

    .line 70
    .end local v1    # "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanStartTime:J

    return-wide v0
.end method

.method public declared-synchronized isReset()Z
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mReset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScanFinish()Z
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/ScannerManager;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isScanResultEmpty()Z
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isScanning()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFuture:Lcom/miui/gallery/threadpool/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerObserver(Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mObserverHolder:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public declared-synchronized resetScan()V
    .locals 6

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v1}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFuture:Lcom/miui/gallery/threadpool/Future;

    .line 96
    new-instance v1, Lcom/miui/gallery/cleaner/ScannerManager$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/cleaner/ScannerManager$2;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;)V

    invoke-static {v1}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/BaseScanner;

    .line 105
    .local v0, "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/BaseScanner;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "scanner":Lcom/miui/gallery/cleaner/BaseScanner;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 108
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const-wide/16 v4, 0x0

    :try_start_2
    iput-wide v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mSize:J

    .line 110
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanStartTime:J

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 112
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mReset:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized startScan()V
    .locals 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/ScannerManager;->resetScan()V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanStartTime:J

    .line 79
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFutureHandler:Lcom/miui/gallery/threadpool/FutureHandler;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mScanFuture:Lcom/miui/gallery/threadpool/Future;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mReset:Z

    .line 81
    new-instance v0, Lcom/miui/gallery/cleaner/ScannerManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/ScannerManager$1;-><init>(Lcom/miui/gallery/cleaner/ScannerManager;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterObserver(Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager;->mObserverHolder:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
