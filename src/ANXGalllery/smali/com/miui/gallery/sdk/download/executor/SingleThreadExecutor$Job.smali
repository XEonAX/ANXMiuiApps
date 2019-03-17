.class Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;
.super Ljava/lang/Object;
.source "SingleThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Job"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;
    .param p2, "x1"    # Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;-><init>(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;)V

    return-void
.end method

.method private needContinue()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    iget-object v1, v1, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getPendingSize()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private runInner()V
    .locals 12

    .prologue
    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->needContinue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 105
    iget-object v8, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    iget-object v8, v8, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v8}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->pollToExecute()Ljava/util/List;

    move-result-object v3

    .line 106
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 107
    invoke-static {v3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->classifyCommand(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 108
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    if-eqz v7, :cond_0

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v1, "batchItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 111
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 113
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, "batchCommands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 116
    .local v2, "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-static {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->checkValid(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 117
    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v5

    .line 121
    .local v5, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-eqz v5, :cond_5

    .line 122
    const-string v8, "SingleThreadExecutor"

    const-string v9, "%s execute size %d"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, p0, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    iget-object v9, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    iget-object v10, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-interface {v8, v9, v10, v1}, Lcom/miui/gallery/sdk/download/downloader/IDownloader;->download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 127
    .restart local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    iget-object v9, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    iget-object v9, v9, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->removeFromExecuting(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    goto :goto_2

    .line 126
    .end local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :catchall_0
    move-exception v8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 127
    .restart local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    iget-object v10, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    iget-object v10, v10, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->removeFromExecuting(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    goto :goto_3

    .line 128
    .end local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_4
    throw v8

    .line 131
    :cond_5
    const-string v8, "SingleThreadExecutor"

    const-string v9, "execute: account is null"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "batchCommands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v1    # "batchItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    .end local v3    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    .end local v5    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    :cond_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->runInner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    invoke-static {v0}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->access$100(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;)V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    invoke-static {v1}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;->access$100(Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;)V

    throw v0
.end method
