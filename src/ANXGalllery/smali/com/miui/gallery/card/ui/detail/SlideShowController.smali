.class public Lcom/miui/gallery/card/ui/detail/SlideShowController;
.super Ljava/lang/Object;
.source "SlideShowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;,
        Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;,
        Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;,
        Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;
    }
.end annotation


# instance fields
.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDuration:I

.field private mGetFuture:Lcom/miui/gallery/threadpool/Future;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadFuture:Lcom/miui/gallery/threadpool/Future;

.field private mLoadIndex:I

.field private final mLock:Ljava/lang/Object;

.field private final mMediaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/BaseMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mShowIndex:I

.field private final mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/SlideShowView;I)V
    .locals 2
    .param p1, "slideShowView"    # Lcom/miui/gallery/widget/SlideShowView;
    .param p2, "duration"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/SlideShowView;->setScaleOnlyMode(Z)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    .line 75
    iput p2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mDuration:I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Lcom/miui/gallery/widget/SlideShowView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/detail/SlideShowController;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mDuration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->decreaseLoadIndex()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/card/ui/detail/SlideShowController;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/card/ui/detail/SlideShowController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mShowIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->getLoadItem()Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;

    move-result-object v0

    return-object v0
.end method

.method private cancelGet()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    .line 162
    :cond_0
    return-void
.end method

.method private cancelLoad()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 169
    :cond_0
    return-void
.end method

.method private decreaseLoadIndex()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 301
    .local v0, "totalCount":I
    if-lez v0, :cond_0

    .line 302
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 303
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    if-gtz v1, :cond_0

    .line 304
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 307
    :cond_0
    monitor-exit v2

    .line 310
    return-void

    .line 307
    .end local v0    # "totalCount":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLoadItem()Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    :try_start_0
    iget v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    if-gez v3, :cond_0

    .line 174
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 176
    :cond_0
    :goto_0
    iget v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 177
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    iget v5, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/model/BaseMedia;

    .line 178
    .local v0, "item":Lcom/miui/gallery/card/model/BaseMedia;
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/miui/gallery/card/model/BaseMedia;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v3

    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->UNKNOWN:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    if-ne v3, v5, :cond_1

    .line 182
    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    :cond_1
    new-instance v1, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;

    iget v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;Ljava/lang/String;I)V

    .line 185
    .local v1, "loadItem":Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->increaseLoadIndex()V

    .line 186
    monitor-exit v4

    .line 191
    .end local v0    # "item":Lcom/miui/gallery/card/model/BaseMedia;
    .end local v1    # "loadItem":Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadItem;
    .end local v2    # "uri":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 189
    .restart local v0    # "item":Lcom/miui/gallery/card/model/BaseMedia;
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->increaseLoadIndex()V

    goto :goto_0

    .line 192
    .end local v0    # "item":Lcom/miui/gallery/card/model/BaseMedia;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 191
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private increaseLoadIndex()V
    .locals 3

    .prologue
    .line 287
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    .local v0, "totalCount":I
    if-lez v0, :cond_0

    .line 290
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 291
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    if-ne v1, v0, :cond_0

    .line 292
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 295
    :cond_0
    monitor-exit v2

    .line 296
    return-void

    .line 295
    .end local v0    # "totalCount":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadNextBitmap()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/miui/gallery/card/ui/detail/SlideShowController$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController$2;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->nextBitmap(Lcom/miui/gallery/threadpool/FutureListener;)V

    .line 136
    return-void
.end method

.method private startLoad()V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->cancelLoad()V

    .line 153
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController$LoadJob;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadFuture:Lcom/miui/gallery/threadpool/Future;

    .line 154
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nextBitmap(Lcom/miui/gallery/threadpool/FutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/FutureListener",
            "<",
            "Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "listener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;>;"
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->cancelGet()V

    .line 148
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/card/ui/detail/SlideShowController$GetJob;-><init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;Lcom/miui/gallery/card/ui/detail/SlideShowController$1;)V

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mGetFuture:Lcom/miui/gallery/threadpool/Future;

    .line 149
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->cancelLoad()V

    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->cancelGet()V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/SlideShowView;->release()V

    .line 121
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->startLoad()V

    .line 112
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->loadNextBitmap()V

    .line 113
    return-void
.end method

.method public updateMedias(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/card/model/BaseMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/card/model/BaseMedia;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->pause()V

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 92
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 94
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/SlideShowView;->setSlideAnimEnable(Z)V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->resume()V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 95
    goto :goto_1

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_2
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mMediaInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mLoadIndex:I

    .line 103
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->cancelLoad()V

    .line 105
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController;->mSlideShowView:Lcom/miui/gallery/widget/SlideShowView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/SlideShowView;->setSlideAnimEnable(Z)V

    .line 106
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->startLoad()V

    goto :goto_0

    .line 103
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    move v0, v1

    .line 105
    goto :goto_2
.end method
