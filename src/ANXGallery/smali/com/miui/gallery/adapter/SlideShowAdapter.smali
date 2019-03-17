.class public Lcom/miui/gallery/adapter/SlideShowAdapter;
.super Ljava/lang/Object;
.source "SlideShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;,
        Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;,
        Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;,
        Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;
    }
.end annotation


# instance fields
.field private mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

.field private mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSet:Lcom/miui/gallery/model/BaseDataSet;

.field private mGetFuture:Lcom/miui/gallery/threadpool/Future;

.field private mLoadFuture:Lcom/miui/gallery/threadpool/Future;

.field private mLoadIndex:I

.field private mLock:Ljava/lang/Object;

.field private mShowIndex:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/model/ImageLoadParams;I)V
    .locals 2
    .param p1, "initCache"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p2, "initIndex"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    iput-object p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    .line 38
    iput p2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/SlideShowAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/adapter/SlideShowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;

    .prologue
    .line 22
    iget v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$306(Lcom/miui/gallery/adapter/SlideShowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;

    .prologue
    .line 22
    iget v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/adapter/SlideShowAdapter;)Lcom/miui/gallery/model/BaseDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/adapter/SlideShowAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mShowIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/adapter/SlideShowAdapter;)Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/SlideShowAdapter;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->getLoadItem()Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    move-result-object v0

    return-object v0
.end method

.method private cancelGet()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    .line 87
    :cond_0
    return-void
.end method

.method private cancelLoad()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 94
    :cond_0
    return-void
.end method

.method private getLoadItem()Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 98
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v4, :cond_2

    .line 99
    :goto_0
    iget v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    iget-object v5, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v5}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 100
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 101
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v2

    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v2, v4, :cond_0

    .line 106
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_0
    iget v2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    .line 109
    new-instance v2, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    iget v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v5

    invoke-direct {v2, p0, v1, v4, v5}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;-><init>(Lcom/miui/gallery/adapter/SlideShowAdapter;Ljava/lang/String;I[B)V

    monitor-exit v3

    .line 118
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    .end local v1    # "uri":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 112
    .restart local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    iget v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    goto :goto_0

    .line 119
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 114
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/model/ImageLoadParams;->match(Lcom/miui/gallery/model/BaseDataItem;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    iget v2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    .line 116
    new-instance v2, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;

    iget-object v4, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v4}, Lcom/miui/gallery/model/ImageLoadParams;->getPath()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheItem:Lcom/miui/gallery/model/ImageLoadParams;

    invoke-virtual {v6}, Lcom/miui/gallery/model/ImageLoadParams;->getSecretKey()[B

    move-result-object v6

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadItem;-><init>(Lcom/miui/gallery/adapter/SlideShowAdapter;Ljava/lang/String;I[B)V

    monitor-exit v3

    goto :goto_1

    .line 118
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private startLoad()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->cancelLoad()V

    .line 70
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;

    invoke-direct {v1, p0}, Lcom/miui/gallery/adapter/SlideShowAdapter$LoadJob;-><init>(Lcom/miui/gallery/adapter/SlideShowAdapter;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 71
    return-void
.end method


# virtual methods
.method public changeDataSet(Lcom/miui/gallery/model/BaseDataSet;I)V
    .locals 2
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "initPos"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    .line 44
    iput p2, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mLoadIndex:I

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->cancelLoad()V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->startLoad()V

    .line 49
    return-void

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBaseDataItem(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 2
    .param p1, "posotion"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mDataSet:Lcom/miui/gallery/model/BaseDataSet;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mShowIndex:I

    return v0
.end method

.method public nextBitmap(Lcom/miui/gallery/threadpool/FutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/FutureListener",
            "<",
            "Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "listener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;>;"
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->cancelGet()V

    .line 65
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/adapter/SlideShowAdapter$GetJob;-><init>(Lcom/miui/gallery/adapter/SlideShowAdapter;Lcom/miui/gallery/adapter/SlideShowAdapter$1;)V

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/SlideShowAdapter;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    .line 66
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->cancelLoad()V

    .line 79
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->cancelGet()V

    .line 80
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/adapter/SlideShowAdapter;->startLoad()V

    .line 75
    return-void
.end method
