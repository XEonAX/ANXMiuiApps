.class public final Lcom/miui/gallery/cloud/download/BatchDownloadManager;
.super Ljava/lang/Object;
.source "BatchDownloadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;,
        Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;,
        Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;,
        Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;,
        Lcom/miui/gallery/cloud/download/BatchDownloadManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final COUNT_STAGE:[I

.field private static volatile sHasDownloaded:Z


# instance fields
.field private mBatchDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollectionLock:Ljava/lang/Object;

.field private final mDispatchLock:Ljava/lang/Object;

.field private mDispatchTask:Lcom/miui/gallery/threadpool/Future;

.field private mDownloadItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

.field private mError:Lcom/miui/gallery/error/core/ErrorCode;

.field private mFailItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/miui/gallery/cloud/download/DownloadObserver;

.field private mOptionsBuilder:Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

.field private mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSuccessItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->COUNT_STAGE:[I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->sHasDownloaded:Z

    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x14
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
        0xbb8
        0x1388
        0x2710
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchLock:Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mError:Lcom/miui/gallery/error/core/ErrorCode;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$ItemDownloadListener;-><init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Lcom/miui/gallery/cloud/download/BatchDownloadManager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItemsMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mFailItems:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mOptionsBuilder:Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mUIHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/miui/gallery/cloud/download/DownloadObserver;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/download/DownloadObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mObserver:Lcom/miui/gallery/cloud/download/DownloadObserver;

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mObserver:Lcom/miui/gallery/cloud/download/DownloadObserver;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/download/DownloadObserver;->register(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/cloud/download/BatchDownloadManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->statStartDownload(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->statEndDownload()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onItemDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "x3"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onItemDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->onItemDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mOptionsBuilder:Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->checkCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->sHasDownloaded:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Ljava/util/List;Lcom/miui/gallery/sdk/download/DownloadOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadOptions;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->download(Ljava/util/List;Lcom/miui/gallery/sdk/download/DownloadOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchProgress()V

    return-void
.end method

.method private callbackBatchCancelled()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchCancelled(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    .line 361
    return-void
.end method

.method private callbackBatchCancelled(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V
    .locals 2
    .param p1, "tarListener"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method

.method private callbackBatchEnd()V
    .locals 5

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchEnd(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    .line 352
    const-string v0, "BatchDownloadManager"

    const-string v1, "download %s end success[%s], total[%s], error %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mError:Lcom/miui/gallery/error/core/ErrorCode;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method private callbackBatchEnd(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V
    .locals 2
    .param p1, "tarListener"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    return-void
.end method

.method private callbackBatchProgress()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchProgress(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    .line 357
    return-void
.end method

.method private callbackBatchProgress(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V
    .locals 2
    .param p1, "tarListener"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 365
    return-void
.end method

.method public static canAutoDownload()Z
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTask()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    .line 235
    :cond_0
    return-void
.end method

.method private checkCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const-string v1, "BatchDownloadManager"

    const-string v2, "condition cta not allowed"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 308
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    const-string v1, "BatchDownloadManager"

    const-string v2, "condition no network"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_NETWORK:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const-string v1, "BatchDownloadManager"

    const-string v2, "condition no wifi"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_WIFI_CONNECTED:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mOptionsBuilder:Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v1

    if-nez v1, :cond_4

    .line 291
    const-string v1, "BatchDownloadManager"

    const-string v2, "condition not charging"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_CHARGING:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v1

    if-nez v1, :cond_4

    .line 297
    const-string v1, "BatchDownloadManager"

    const-string v2, "condition low power"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->POWER_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 303
    :cond_4
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isDeviceStorageLow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 304
    const-string v1, "BatchDownloadManager"

    const-string v2, "condition low storage"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_0

    .line 308
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearState()V
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mFailItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 326
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 328
    return-void

    .line 326
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doStopDownload()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->cancelTask()V

    .line 199
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancelAll(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 200
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancelAll(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 201
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private download(Ljava/util/List;Lcom/miui/gallery/sdk/download/DownloadOptions;)V
    .locals 9
    .param p2, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/miui/gallery/sdk/download/DownloadOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    .line 239
    .local v2, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 240
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 241
    .local v1, "uri":Landroid/net/Uri;
    new-instance v6, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;

    invoke-direct {v6, v1, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 242
    .local v6, "item":Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItemsMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "item":Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    iget-object v7, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchLock:Ljava/lang/Object;

    monitor-enter v7

    .line 247
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 248
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/sdk/download/ImageDownloader;->load(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;Lcom/miui/gallery/sdk/download/listener/DownloadListener;Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)V

    goto :goto_1

    .line 250
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    return-void
.end method

.method private getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 165
    .local v0, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 168
    :cond_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v0, v1, :cond_1

    .line 169
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 171
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$SingletonHolder;->access$100()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method private interruptBatchDownload(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "BatchDownloadManager"

    const-string v1, "interrupt batch download for %s"

    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->doStopDownload()V

    .line 219
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchEnd()V

    .line 221
    :cond_0
    return-void
.end method

.method private isDownloadEnd(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 5
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;

    iget-object v0, v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 346
    .local v0, "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_0
    if-ne v0, p1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mFailItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v3

    return v1

    .line 345
    .end local v0    # "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_1
    move v1, v2

    .line 346
    goto :goto_1

    .line 347
    .end local v0    # "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDownloading(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 5
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;

    iget-object v0, v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 339
    .local v0, "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_0
    if-ne v0, p1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mFailItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v3

    return v1

    .line 338
    .end local v0    # "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_1
    move v1, v2

    .line 339
    goto :goto_1

    .line 340
    .end local v0    # "curType":Lcom/miui/gallery/sdk/download/DownloadType;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isValidItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItemsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onItemDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isValidItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mFailItems:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;

    invoke-direct {v2, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-direct {p0, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isDownloadEnd(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchEnd()V

    .line 421
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onItemDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isValidItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    monitor-exit v1

    .line 408
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->updateFailReason(Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 401
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mFailItems:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;

    invoke-direct {v2, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isDownloadEnd(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchEnd()V

    .line 407
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onItemDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isValidItem(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    monitor-exit v1

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;

    invoke-direct {v2, p1, p2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isDownloadEnd(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchEnd()V

    .line 392
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 390
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchProgress()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private resumeBatchDownload(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->canAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "BatchDownloadManager"

    const-string v1, "resume batch download for %s"

    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->startBatchDownload(Landroid/content/Context;Z)V

    .line 228
    :cond_0
    return-void
.end method

.method private setError(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 2
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mError:Lcom/miui/gallery/error/core/ErrorCode;

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private statEndDownload()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    .line 521
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isEverAutoDownloaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 522
    const-string v3, "BatchDownloadManager"

    const-string/jumbo v4, "stat end download"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setEverAutoDownloaded()V

    .line 524
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 525
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getAutoDownloadTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    div-long/2addr v4, v8

    div-long/2addr v4, v8

    long-to-int v1, v4

    .line 526
    .local v1, "hour":I
    const-string/jumbo v3, "timely"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v3, "sync_auto_download_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "event":Ljava/lang/String;
    const-string v3, "Sync"

    invoke-static {v3, v0, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    .end local v0    # "event":Ljava/lang/String;
    .end local v1    # "hour":I
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private statStartDownload(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 507
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getAutoDownloadTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 508
    const-string v1, "BatchDownloadManager"

    const-string/jumbo v2, "stat start download"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setAutoDownloadTime(J)V

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "stage"

    int-to-float v2, p1

    sget-object v3, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->COUNT_STAGE:[I

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "Sync"

    const-string/jumbo v2, "sync_auto_download_weight"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 518
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private updateFailReason(Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 1
    .param p1, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->setError(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 429
    :cond_0
    return-void
.end method


# virtual methods
.method public download(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v2, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mOptionsBuilder:Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireDeviceStorage(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequirePower(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v2

    .line 257
    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setQueueFirst(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v0

    .line 259
    .local v0, "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 260
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->download(Ljava/util/List;Lcom/miui/gallery/sdk/download/DownloadOptions;)V

    .line 262
    const-string v2, "BatchDownloadManager"

    const-string v3, "download %s at first"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 102
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 137
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 104
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mError:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-interface {v1, v3, v4, v5}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;->onDownloadComplete(Ljava/util/List;Ljava/util/List;Lcom/miui/gallery/error/core/ErrorCode;)V

    :goto_1
    move v1, v2

    .line 113
    goto :goto_0

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    monitor-enter v3

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .line 109
    .local v0, "listener":Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mError:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-interface {v0, v4, v5, v6}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;->onDownloadComplete(Ljava/util/List;Ljava/util/List;Lcom/miui/gallery/error/core/ErrorCode;)V

    goto :goto_2

    .line 111
    .end local v0    # "listener":Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;->onDownloadProgress(Ljava/util/List;Ljava/util/List;)V

    :goto_3
    move v1, v2

    .line 124
    goto :goto_0

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    monitor-enter v3

    .line 119
    :try_start_2
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .line 120
    .restart local v0    # "listener":Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;->onDownloadProgress(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 122
    .end local v0    # "listener":Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 126
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;->onDownloadCancelled(Ljava/util/List;Ljava/util/List;)V

    :goto_5
    move v1, v2

    .line 135
    goto/16 :goto_0

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    monitor-enter v3

    .line 130
    :try_start_4
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .line 131
    .restart local v0    # "listener":Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;
    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mSuccessItems:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDownloadItems:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;->onDownloadCancelled(Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    .line 133
    .end local v0    # "listener":Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;
    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onConditionChanged(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->checkCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->resumeBatchDownload(Landroid/content/Context;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->interruptBatchDownload(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public registerBatchDownloadListener(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchEnd(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    .line 155
    :goto_0
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchProgress(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchCancelled(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBatchDownload(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "immediately"    # Z

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    .line 176
    .local v0, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->isDownloading(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "BatchDownloadManager"

    const-string v2, "downloading %s"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-boolean v1, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->sHasDownloaded:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 186
    const-string v1, "BatchDownloadManager"

    const-string v2, "no need download because memory marker"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->clearState()V

    .line 190
    iget-object v2, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->doStopDownload()V

    .line 192
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v3, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;-><init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-virtual {v1, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mDispatchTask:Lcom/miui/gallery/threadpool/Future;

    .line 193
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBatchDownload(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v0, "BatchDownloadManager"

    const-string/jumbo v1, "stop batch download for %s"

    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getAutoDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->doStopDownload()V

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 208
    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->callbackBatchCancelled()V

    .line 209
    return-void
.end method

.method public unregisterBatchDownloadListener(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->mBatchDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
