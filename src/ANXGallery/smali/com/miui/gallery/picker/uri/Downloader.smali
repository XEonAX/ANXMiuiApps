.class public Lcom/miui/gallery/picker/uri/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;,
        Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;,
        Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;,
        Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private mCancelled:Z

.field private mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

.field private mDownloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mFails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mSuccess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/miui/gallery/picker/uri/Downloader$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/uri/Downloader$1;-><init>(Lcom/miui/gallery/picker/uri/Downloader;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mCallback:Landroid/os/Handler$Callback;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/Downloader;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/uri/Downloader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/uri/Downloader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/uri/Downloader;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/Downloader;->checkFinished()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/uri/Downloader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkFinished()V
    .locals 5

    .prologue
    .line 112
    const-string v0, "Downloader"

    const-string/jumbo v1, "success: %d, failed: %d, total: %d"

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mPaused:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    if-eqz v0, :cond_0

    .line 122
    iget-boolean v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mCancelled:Z

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;->onCancelled(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;->onEnd(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 7

    .prologue
    .line 60
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/picker/uri/Downloader;->mCancelled:Z

    .line 62
    iget-object v3, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 63
    .local v2, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    const/4 v0, 0x0

    .line 64
    .local v0, "finished":Z
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 65
    .local v1, "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    iget-object v5, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    if-ne v5, v2, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 70
    .end local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 71
    .restart local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    iget-object v5, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    if-ne v5, v2, :cond_3

    .line 72
    const/4 v0, 0x1

    .line 76
    .end local v1    # "result":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    :cond_4
    if-nez v0, :cond_0

    .line 77
    const-string v4, "Downloader"

    const-string v5, "cancel %s"

    invoke-static {v4, v5, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v4

    iget-object v5, v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mUri:Landroid/net/Uri;

    iget-object v6, v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/util/uil/CloudImageLoader;->cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_0

    .line 81
    .end local v0    # "finished":Z
    .end local v2    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "Downloader"

    const-string v1, "downloader destroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mFails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    return-void
.end method

.method public getRemainSize()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader;->mSuccess:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "Downloader"

    const-string v1, "downloader pause"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mPaused:Z

    .line 89
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "Downloader"

    const-string v1, "downloader resume"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/picker/uri/Downloader;->mPaused:Z

    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/picker/uri/Downloader;->checkFinished()V

    .line 98
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v3, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/DownloadType;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingListener;>;"
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 44
    .local v1, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    iget-object v5, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mUri:Landroid/net/Uri;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v5, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v5, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;

    invoke-direct {v5, p0, v1}, Lcom/miui/gallery/picker/uri/Downloader$TaskStateListener;-><init>(Lcom/miui/gallery/picker/uri/Downloader;Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v1    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadListener:Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;

    iget-object v5, p0, Lcom/miui/gallery/picker/uri/Downloader;->mDownloadTasks:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;->onStart(Ljava/util/List;)V

    .line 51
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v0, v5}, Lcom/miui/gallery/util/uil/CloudImageLoader;->loadImages(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 52
    return-void
.end method
