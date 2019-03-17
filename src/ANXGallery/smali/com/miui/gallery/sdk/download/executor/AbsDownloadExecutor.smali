.class public abstract Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;
.super Ljava/lang/Object;
.source "AbsDownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
    }
.end annotation


# instance fields
.field protected mListenerController:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

.field protected mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "batchSize"    # I
    .param p2, "maxQueueSize"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    .line 32
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$1;)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mListenerController:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    .line 33
    return-void
.end method

.method protected static classifyCommand(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/sdk/download/downloader/IDownloader;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/sdk/download/executor/DownloadCommand;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 279
    .local v1, "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloader()Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    move-result-object v2

    .line 280
    .local v2, "downloader":Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    if-eqz v2, :cond_0

    .line 281
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 282
    .local v0, "childList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    if-nez v0, :cond_1

    .line 283
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "childList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 284
    .restart local v0    # "childList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    .end local v0    # "childList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v1    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    .end local v2    # "downloader":Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    :cond_2
    const/4 v3, 0x0

    :cond_3
    return-object v3
.end method

.method private repackageItem(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 36
    new-instance v1, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    .line 37
    invoke-virtual {v1, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->cloneFrom(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mListenerController:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    .line 38
    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setDownloadListener(Lcom/miui/gallery/sdk/download/listener/DownloadListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mListenerController:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    .line 39
    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getDownloadProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->setProgressListener(Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->build()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v0

    .line 41
    .local v0, "repackageItem":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    return-object v0
.end method


# virtual methods
.method public cancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->cancel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->cancelAll()Ljava/util/List;

    .line 99
    return-void
.end method

.method public contains(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->contains(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract dispatch()V
.end method

.method public download(Lcom/miui/gallery/sdk/download/assist/DownloadItem;ZZ)V
    .locals 9
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .param p2, "atFirst"    # Z
    .param p3, "interruptExecuting"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 50
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 51
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invoke: no account"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v5, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v6, Lcom/miui/gallery/error/core/ErrorCode;->NO_ACCOUNT:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v7, "no account"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invoke: invalid download item"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v5, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    sget-object v6, Lcom/miui/gallery/error/core/ErrorCode;->PARAMS_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    const-string v7, "key is null"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;-><init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v5}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mListenerController:Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;

    invoke-virtual {v6, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->putItem(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 65
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->callbackStarted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V

    .line 68
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->repackageItem(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v3

    .line 70
    .local v3, "repackageItem":Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    const/4 v2, 0x0

    .line 71
    .local v2, "needDispatch":Z
    new-instance v1, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    invoke-direct {v1, v0, v3}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V

    .line 72
    .local v1, "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    if-eqz p3, :cond_6

    .line 73
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->contains(Ljava/lang/String;)I

    move-result v4

    .line 75
    .local v4, "status":I
    if-eq v4, v5, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->interrupt()V

    .line 80
    if-nez v4, :cond_5

    .line 81
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->remove(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 83
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v6}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getPendingSize()I

    move-result v6

    if-lez v6, :cond_8

    move v2, v5

    .line 85
    .end local v4    # "status":I
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v5, v1, p2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->put(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;Z)I

    move-result v5

    if-lez v5, :cond_7

    .line 86
    const/4 v2, 0x1

    .line 88
    :cond_7
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->dispatch()V

    goto :goto_0

    .line 83
    .restart local v4    # "status":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public abstract interrupt()V
.end method
