.class public Lcom/miui/gallery/assistant/library/LibraryManager;
.super Ljava/lang/Object;
.source "LibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;,
        Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;,
        Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;,
        Lcom/miui/gallery/assistant/library/LibraryManager$LibraryManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mCurrentLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/assistant/library/Library;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitTask:Landroid/os/AsyncTask;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mInitializing:Z

.field private final mLibraryDownloadManager:Lcom/miui/gallery/net/library/LibraryDownloadManager;

.field private mNetworkReceiver:Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/miui/gallery/assistant/library/LibraryManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/library/LibraryManager$1;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager;)V

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitTask:Landroid/os/AsyncTask;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/miui/gallery/net/library/LibraryDownloadManager;

    invoke-direct {v0}, Lcom/miui/gallery/net/library/LibraryDownloadManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mLibraryDownloadManager:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    .line 66
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/assistant/library/LibraryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager$1;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/assistant/library/LibraryManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/assistant/library/LibraryManager;)Lcom/miui/gallery/net/library/LibraryDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mLibraryDownloadManager:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/assistant/library/LibraryManager;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryManager;->unRegisterNetObserver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/assistant/library/LibraryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/assistant/library/LibraryManager;->initAllLibrarys()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/gallery/assistant/library/LibraryManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitializing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/assistant/library/LibraryManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/assistant/library/LibraryManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/assistant/library/LibraryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/assistant/library/LibraryManager;->tryDownloadAllLibrarys()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/assistant/library/LibraryManager;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryManager;->registerNetObserver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/Library;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryManager;
    .param p1, "x1"    # Lcom/miui/gallery/assistant/library/Library;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/assistant/library/LibraryManager;->recordDownloadResult(Lcom/miui/gallery/assistant/library/Library;Ljava/lang/String;)V

    return-void
.end method

.method private downloadLibraryInternal(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 3
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;
    .param p2, "allowedOverMetered"    # Z
    .param p3, "listener"    # Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    .prologue
    .line 311
    new-instance v0, Lcom/miui/gallery/assistant/library/LibraryManager$4;

    invoke-direct {v0, p0, p3, p1}, Lcom/miui/gallery/assistant/library/LibraryManager$4;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;Lcom/miui/gallery/assistant/library/Library;)V

    .line 350
    .local v0, "listenerWrapper":Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;
    if-eqz p1, :cond_0

    .line 351
    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DOWNLOADING:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    .line 352
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getNetworkPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)V

    .line 353
    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentLibraryById(J)Lcom/miui/gallery/assistant/library/Library;
    .locals 7
    .param p1, "libraryId"    # J

    .prologue
    .line 409
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/Library;

    .line 410
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/assistant/library/Library;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/dao/GalleryEntityManager;->find(Ljava/lang/Class;[Ljava/lang/String;)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v0

    .end local v0    # "library":Lcom/miui/gallery/assistant/library/Library;
    check-cast v0, Lcom/miui/gallery/assistant/library/Library;

    .line 412
    .restart local v0    # "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager$LibraryManagerHolder;->access$000()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v0

    return-object v0
.end method

.method private initAllLibrarys()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 113
    sget-object v8, Lcom/miui/gallery/assistant/library/LibraryConstants;->sAllLibraries:[Ljava/lang/Long;

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v10, v8, v7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 114
    .local v2, "libraryId":J
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getCurrentLibraryById(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v0

    .line 115
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->isOverDue()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->isLoaded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 116
    :cond_0
    new-instance v1, Lcom/miui/gallery/net/library/LibraryRequest;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/net/library/LibraryRequest;-><init>(J)V

    .line 118
    .local v1, "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/gallery/net/library/LibraryRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v6

    .line 119
    .local v6, "result":[Ljava/lang/Object;
    if-eqz v6, :cond_1

    array-length v10, v6

    if-lez v10, :cond_1

    const/4 v10, 0x0

    aget-object v10, v6, v10

    instance-of v10, v10, Lcom/miui/gallery/assistant/library/Library;

    if-eqz v10, :cond_1

    .line 120
    const/4 v10, 0x0

    aget-object v4, v6, v10

    check-cast v4, Lcom/miui/gallery/assistant/library/Library;

    .line 121
    .local v4, "libraryServer":Lcom/miui/gallery/assistant/library/Library;
    invoke-direct {p0, v4}, Lcom/miui/gallery/assistant/library/LibraryManager;->refreshServerLibraryInfo(Lcom/miui/gallery/assistant/library/Library;)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    .end local v4    # "libraryServer":Lcom/miui/gallery/assistant/library/Library;
    .end local v6    # "result":[Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->refreshLibraryStatusInternal(J)Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    .restart local v1    # "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    :catch_0
    move-exception v5

    .line 124
    .local v5, "requestError":Lcom/miui/gallery/net/base/RequestError;
    sget-object v10, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 129
    .end local v0    # "library":Lcom/miui/gallery/assistant/library/Library;
    .end local v1    # "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    .end local v2    # "libraryId":J
    .end local v5    # "requestError":Lcom/miui/gallery/net/base/RequestError;
    :cond_2
    return-void
.end method

.method private loadLibraryInternal(Lcom/miui/gallery/assistant/library/Library;)Z
    .locals 1
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;

    .prologue
    .line 404
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->load()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordDownloadResult(Lcom/miui/gallery/assistant/library/Library;Ljava/lang/String;)V
    .locals 4
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    const-string v0, "assistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "library_download_result_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v0, v1, p2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method

.method private refreshLibraryStatusInternal(J)Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
    .locals 5
    .param p1, "libraryId"    # J

    .prologue
    .line 430
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/Library;

    .line 432
    .local v0, "currentLib":Lcom/miui/gallery/assistant/library/Library;
    if-nez v0, :cond_0

    .line 433
    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NO_LIBRARY_INFO:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 443
    :goto_0
    return-object v1

    .line 435
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->isExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    .line 443
    :goto_2
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v1

    goto :goto_0

    .line 436
    :cond_1
    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    goto :goto_1

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mLibraryDownloadManager:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->getLibraryId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->isLibraryDownloading(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DOWNLOADING:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    goto :goto_2

    .line 440
    :cond_3
    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    goto :goto_2
.end method

.method private refreshServerLibraryInfo(Lcom/miui/gallery/assistant/library/Library;)V
    .locals 6
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/miui/gallery/assistant/library/Library;->setRefreshTime(J)V

    .line 249
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryId()J

    move-result-wide v2

    .line 250
    .local v2, "libraryId":J
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/Library;

    .line 251
    .local v0, "currentLibrary":Lcom/miui/gallery/assistant/library/Library;
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    if-nez v0, :cond_1

    .line 253
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 258
    .end local v0    # "currentLibrary":Lcom/miui/gallery/assistant/library/Library;
    .end local v2    # "libraryId":J
    :cond_0
    :goto_0
    return-void

    .line 255
    .restart local v0    # "currentLibrary":Lcom/miui/gallery/assistant/library/Library;
    .restart local v2    # "libraryId":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryManager;->updateLibraryToDatabase(Lcom/miui/gallery/assistant/library/Library;)V

    goto :goto_0
.end method

.method private registerNetObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    new-instance v1, Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;

    invoke-direct {v1, p0}, Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager;)V

    iput-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mNetworkReceiver:Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "netFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mNetworkReceiver:Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method private tryDownloadAllLibrarys()Z
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-boolean v5, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitialized:Z

    if-nez v5, :cond_1

    move v0, v4

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-static {v4}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->checkCondition(Z)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 141
    goto :goto_0

    .line 144
    :cond_2
    const/4 v0, 0x1

    .line 146
    .local v0, "isAllLibraryExist":Z
    sget-object v6, Lcom/miui/gallery/assistant/library/LibraryConstants;->sAllLibraries:[Ljava/lang/Long;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v8, v6, v5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 147
    .local v2, "libraryId":J
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrary(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v1

    .line 148
    .local v1, "library":Lcom/miui/gallery/assistant/library/Library;
    if-nez v1, :cond_4

    .line 149
    sget-object v8, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v9, "Library %d is available or no download info,no need to download now"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-ne v8, v9, :cond_3

    .line 154
    sget-object v8, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Library %d download when app start up Begin."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v8, Lcom/miui/gallery/assistant/library/LibraryManager$2;

    invoke-direct {v8, p0}, Lcom/miui/gallery/assistant/library/LibraryManager$2;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager;)V

    invoke-virtual {p0, v1, v4, v8}, Lcom/miui/gallery/assistant/library/LibraryManager;->downloadLibrary(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;

    .line 165
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private unRegisterNetObserver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mNetworkReceiver:Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mNetworkReceiver:Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mNetworkReceiver:Lcom/miui/gallery/assistant/library/LibraryManager$NetworkReceiver;

    .line 197
    :cond_0
    return-void
.end method

.method private updateLibraryToDatabase(Lcom/miui/gallery/assistant/library/Library;)V
    .locals 8
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, v1}, Lcom/miui/gallery/assistant/library/Library;->onConvertToContents(Landroid/content/ContentValues;)V

    .line 423
    const-string v2, "%s=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "libraryId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/assistant/library/Library;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 426
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public downloadLibrary(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 4
    .param p1, "library"    # Lcom/miui/gallery/assistant/library/Library;
    .param p2, "allowedOverMetered"    # Z
    .param p3, "listener"    # Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    .prologue
    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->isLibraryItemInfosConsistent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryId()J

    move-result-wide v0

    .line 295
    .local v0, "libraryId":J
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/assistant/library/LibraryManager$3;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/miui/gallery/assistant/library/LibraryManager$3;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;J)V

    .line 296
    invoke-virtual {v2, v3}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 304
    const/4 v2, 0x0

    .line 306
    .end local v0    # "libraryId":J
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/assistant/library/LibraryManager;->downloadLibraryInternal(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v2

    goto :goto_0
.end method

.method public getLibrary(J)Lcom/miui/gallery/assistant/library/Library;
    .locals 3
    .param p1, "libraryId"    # J

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/Library;

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLibraryItemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "libs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 262
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLibrarySync(J)Lcom/miui/gallery/assistant/library/Library;
    .locals 11
    .param p1, "libraryId"    # J

    .prologue
    .line 220
    iget-boolean v7, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitialized:Z

    if-nez v7, :cond_0

    .line 222
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 228
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mCurrentLibraries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/assistant/library/Library;

    .line 229
    .local v3, "library":Lcom/miui/gallery/assistant/library/Library;
    if-nez v3, :cond_1

    .line 230
    new-instance v4, Lcom/miui/gallery/net/library/LibraryRequest;

    invoke-direct {v4, p1, p2}, Lcom/miui/gallery/net/library/LibraryRequest;-><init>(J)V

    .line 232
    .local v4, "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    :try_start_1
    invoke-virtual {v4}, Lcom/miui/gallery/net/library/LibraryRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v6

    .line 233
    .local v6, "result":[Ljava/lang/Object;
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    const/4 v7, 0x0

    aget-object v7, v6, v7

    instance-of v7, v7, Lcom/miui/gallery/assistant/library/Library;

    if-eqz v7, :cond_1

    .line 234
    const/4 v7, 0x0

    aget-object v7, v6, v7

    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/assistant/library/Library;

    move-object v3, v0

    .line 235
    invoke-direct {p0, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->refreshServerLibraryInfo(Lcom/miui/gallery/assistant/library/Library;)V

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/assistant/library/LibraryManager;->refreshLibraryStatusInternal(J)Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
    :try_end_1
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    .end local v4    # "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    .end local v6    # "result":[Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v3

    .line 223
    .end local v3    # "library":Lcom/miui/gallery/assistant/library/Library;
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "library":Lcom/miui/gallery/assistant/library/Library;
    .restart local v4    # "libraryRequest":Lcom/miui/gallery/net/library/LibraryRequest;
    :catch_1
    move-exception v5

    .line 239
    .local v5, "requestError":Lcom/miui/gallery/net/base/RequestError;
    sget-object v7, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitializing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_1
    :try_start_1
    sget-object v0, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitializing:Z

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLibrarysExist([Ljava/lang/Long;)Z
    .locals 8
    .param p1, "ids"    # [Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 173
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 174
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 175
    .local v0, "id":J
    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrary(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v2

    .line 176
    .local v2, "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-eq v6, v7, :cond_1

    .line 177
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-eq v6, v7, :cond_1

    .line 182
    .end local v0    # "id":J
    .end local v2    # "library":Lcom/miui/gallery/assistant/library/Library;
    :cond_0
    :goto_1
    return v3

    .line 174
    .restart local v0    # "id":J
    .restart local v2    # "library":Lcom/miui/gallery/assistant/library/Library;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "id":J
    .end local v2    # "library":Lcom/miui/gallery/assistant/library/Library;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public loadLibrary(J)Z
    .locals 3
    .param p1, "libraryId"    # J

    .prologue
    .line 375
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary([Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadLibrary([Ljava/lang/Long;)Z
    .locals 9
    .param p1, "libraryIds"    # [Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    .line 380
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-lez v4, :cond_0

    .line 381
    array-length v5, p1

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 382
    .local v2, "libraryId":J
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrary(J)Lcom/miui/gallery/assistant/library/Library;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 383
    .local v0, "library":Lcom/miui/gallery/assistant/library/Library;
    if-nez v0, :cond_1

    .line 400
    .end local v0    # "library":Lcom/miui/gallery/assistant/library/Library;
    .end local v2    # "libraryId":J
    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    .line 386
    .restart local v0    # "library":Lcom/miui/gallery/assistant/library/Library;
    .restart local v2    # "libraryId":J
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-ne v6, v7, :cond_2

    .line 387
    sget-object v6, Lcom/miui/gallery/assistant/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v7, "Library %d has been loaded, no need load again!"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-ne v6, v7, :cond_0

    .line 389
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v6

    invoke-direct {v6, v0}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibraryInternal(Lcom/miui/gallery/assistant/library/Library;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    sget-object v6, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 380
    .end local v0    # "library":Lcom/miui/gallery/assistant/library/Library;
    .end local v2    # "libraryId":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 398
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
