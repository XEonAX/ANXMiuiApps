.class Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;
.super Ljava/lang/Object;
.source "BatchDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/download/BatchDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchJob"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mType:Lcom/miui/gallery/sdk/download/DownloadType;

.field final synthetic this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mContext:Landroid/content/Context;

    .line 438
    iput-object p3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 439
    return-void
.end method

.method private isValidRequest()Z
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->isAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v1, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$300(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$400(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryDownload(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 442
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 444
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->queryDownload(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;ZI)Ljava/util/List;

    move-result-object v1

    .line 445
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->isAutoDownloadShare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/cloud/download/BatchDownloadUtil;->queryDownload(Landroid/content/Context;Lcom/miui/gallery/sdk/download/DownloadType;ZI)Ljava/util/List;

    move-result-object v1

    .line 451
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    :cond_1
    return-object v0
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 464
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v0

    .line 465
    .local v0, "foreground":Z
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$500(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v6

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireCharging(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .line 466
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$600(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    const-string v3, "BatchDownloadManager"

    const-string v4, "condition not ok, cannot download"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_1
    return-object v10

    :cond_0
    move v3, v5

    .line 465
    goto :goto_0

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->queryDownload(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 471
    .local v2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 472
    invoke-static {v5}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$702(Z)Z

    .line 473
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->isValidRequest()Z

    move-result v3

    if-nez v3, :cond_3

    .line 474
    :cond_2
    const-string v3, "BatchDownloadManager"

    const-string v4, "not auto batch download before dispatching"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 477
    :cond_3
    const-string v3, "BatchDownloadManager"

    const-string/jumbo v6, "start download %s items for %s in foreground %s"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v8}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$300(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v3, v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$500(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    .line 479
    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireDeviceStorage(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    .line 480
    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequirePower(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v6

    if-nez v0, :cond_5

    move v3, v4

    .line 481
    :goto_2
    invoke-virtual {v6, v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireCharging(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    .line 482
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v1

    .line 483
    .local v1, "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3, v2, v1}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$800(Lcom/miui/gallery/cloud/download/BatchDownloadManager;Ljava/util/List;Lcom/miui/gallery/sdk/download/DownloadOptions;)V

    .line 484
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->isValidRequest()Z

    move-result v3

    if-nez v3, :cond_6

    .line 485
    :cond_4
    const-string v3, "BatchDownloadManager"

    const-string v4, "not auto batch download after dispatching"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/ImageDownloader;->cancelAll(Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_1

    .end local v1    # "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    :cond_5
    move v3, v5

    .line 480
    goto :goto_2

    .line 489
    .restart local v1    # "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$400(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 490
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$900(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)V

    .line 494
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mContext:Landroid/content/Context;

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/jobs/SyncJobService;->scheduleJob(Landroid/content/Context;I)I

    .line 496
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$1000(Lcom/miui/gallery/cloud/download/BatchDownloadManager;I)V

    goto/16 :goto_1

    .line 498
    .end local v1    # "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    :cond_8
    invoke-static {v4}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$702(Z)Z

    .line 499
    iget-object v3, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->this$0:Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->access$1100(Lcom/miui/gallery/cloud/download/BatchDownloadManager;)V

    .line 500
    const-string v3, "BatchDownloadManager"

    const-string v4, "no items need download for %s"

    iget-object v5, p0, Lcom/miui/gallery/cloud/download/BatchDownloadManager$DispatchJob;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
