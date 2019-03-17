.class public Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;
.super Ljava/lang/Object;
.source "SyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/control/SyncMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadInfoAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;
    }
.end annotation


# instance fields
.field private mAvgSpeed:J

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mMaxSpeed:J

.field private mRecentSpeed:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 457
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mInfos:Ljava/util/List;

    .line 555
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->clear()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mMaxSpeed:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;
    .param p1, "x1"    # J

    .prologue
    .line 455
    iput-wide p1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mMaxSpeed:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mRecentSpeed:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;
    .param p1, "x1"    # J

    .prologue
    .line 455
    iput-wide p1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mRecentSpeed:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mAvgSpeed:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;
    .param p1, "x1"    # J

    .prologue
    .line 455
    iput-wide p1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mAvgSpeed:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;JJ)J
    .locals 3
    .param p0, "x0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 455
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->calculateSpeed(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private calculateSpeed(JJ)J
    .locals 3
    .param p1, "size"    # J
    .param p3, "timely"    # J

    .prologue
    .line 508
    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 535
    new-instance v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$6;-><init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->safeRun(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;Z)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method private isValidInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 503
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->timely:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lock(Z)V
    .locals 2
    .param p1, "write"    # Z

    .prologue
    .line 546
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 547
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 548
    return-void

    .line 546
    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0
.end method

.method private unlock(Z)V
    .locals 2
    .param p1, "write"    # Z

    .prologue
    .line 551
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 552
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 553
    return-void

    .line 551
    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->isValidInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;-><init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->safeRun(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;Z)Ljava/lang/Object;

    .line 532
    :cond_0
    return-void
.end method

.method public getAvgSpeed()J
    .locals 2

    .prologue
    .line 481
    new-instance v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$3;-><init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->safeRun(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecentSpeed()J
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$2;-><init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->safeRun(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUploadTraffic()J
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$4;-><init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->safeRun(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public safeRun(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "write"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "func":Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;, "Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func<TT;>;"
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->lock(Z)V

    .line 562
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;->doFunc()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 564
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->unlock(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->unlock(Z)V

    throw v0
.end method
