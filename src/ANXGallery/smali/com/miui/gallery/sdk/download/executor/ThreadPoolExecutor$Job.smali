.class Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Job"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;
    .param p2, "x1"    # Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;-><init>(Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;)V

    return-void
.end method

.method private needContinue(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Z
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 114
    const-string v0, "ThreadPoolExecutor"

    const-string v1, "pendingSize %d, interrupted %s, canceled %s"

    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    iget-object v2, v2, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getPendingSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->getPendingSize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->needContinue(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 121
    iget-object v8, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    iget-object v8, v8, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v8}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->pollToExecute()Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 123
    invoke-static {v3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->classifyCommand(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 124
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    if-eqz v7, :cond_0

    .line 125
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 126
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "batchItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 129
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    .local v0, "batchCommands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 131
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

    .line 132
    .local v2, "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    invoke-static {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->checkValid(Lcom/miui/gallery/sdk/download/executor/DownloadCommand;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 133
    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getItem()Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v5

    .line 137
    .local v5, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-eqz v5, :cond_5

    .line 138
    const-string v8, "ThreadPoolExecutor"

    const-string v9, "%s execute size %d"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, p0, v10}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    iget-object v9, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    iget-object v10, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-interface {v8, v9, v10, v1}, Lcom/miui/gallery/sdk/download/downloader/IDownloader;->download(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    .line 143
    .restart local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    iget-object v9, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    iget-object v9, v9, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->removeFromExecuting(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    goto :goto_2

    .line 142
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

    .line 143
    .restart local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    iget-object v10, p0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor$Job;->this$0:Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    iget-object v10, v10, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;->mQueue:Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/download/executor/DownloadCommand;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/miui/gallery/sdk/download/executor/DownloadCommandQueue;->removeFromExecuting(Ljava/lang/String;)Lcom/miui/gallery/sdk/download/executor/DownloadCommand;

    goto :goto_3

    .line 144
    .end local v2    # "command":Lcom/miui/gallery/sdk/download/executor/DownloadCommand;
    :cond_4
    throw v8

    .line 147
    :cond_5
    const-string v8, "ThreadPoolExecutor"

    const-string v9, "execute: account is null"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "batchCommands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v1    # "batchItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/assist/DownloadItem;>;"
    .end local v3    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    .end local v5    # "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/sdk/download/downloader/IDownloader;Ljava/util/List<Lcom/miui/gallery/sdk/download/executor/DownloadCommand;>;>;"
    :cond_6
    const-string v8, "ThreadPoolExecutor"

    const-string v9, "runnable end %s"

    invoke-static {v8, v9, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const/4 v8, 0x0

    return-object v8
.end method
