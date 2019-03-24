.class public Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDownloadListener"
.end annotation


# instance fields
.field mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V
    .locals 0
    .param p1, "onDownload"    # Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    .line 252
    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->setOnDownload(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V

    .line 254
    return-void
.end method


# virtual methods
.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 3
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 277
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    instance-of v0, p2, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    if-eqz v0, :cond_2

    .line 278
    move-object v0, p2

    check-cast v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    .line 279
    .local v0, "downloadTask":Lcom/miui/internal/vip/utils/ImageDownloadTask;
    invoke-virtual {v0}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->isWaitNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-static {v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->startReceiver()V

    .line 287
    .end local v0    # "downloadTask":Lcom/miui/internal/vip/utils/ImageDownloadTask;
    :cond_2
    :goto_0
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p3, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 266
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    instance-of v0, p2, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 267
    move-object v0, p2

    check-cast v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    .line 268
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    invoke-interface {v1, v0}, Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;->onDownload(Ljava/lang/String;)V

    .line 272
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_0
    return-object p3
.end method

.method public final setOnDownload(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V
    .locals 0
    .param p1, "onDownload"    # Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    .line 261
    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    .line 262
    return-void
.end method
