.class public Lcom/miui/gallery/net/resource/ResourceDownloadManager;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"


# instance fields
.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/net/download/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager;->mRequestList:Ljava/util/List;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/net/resource/ResourceDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager;->mRequestList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/miui/gallery/net/HttpManager;->getInstance()Lcom/miui/gallery/net/HttpManager;

    move-result-object v1

    const-string v2, "ResourceDownloadManager"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/net/HttpManager;->cancelAll(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/net/download/Request;

    .line 66
    .local v0, "request":Lcom/miui/gallery/net/download/Request;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/net/download/Request;->setListener(Lcom/miui/gallery/net/download/Request$Listener;)V

    goto :goto_0

    .line 68
    .end local v0    # "request":Lcom/miui/gallery/net/download/Request;
    :cond_0
    return-void
.end method

.method public download(Lcom/miui/gallery/net/resource/Resource;Ljava/lang/String;Lcom/miui/gallery/net/download/Request$Listener;Z)V
    .locals 7
    .param p1, "resource"    # Lcom/miui/gallery/net/resource/Resource;
    .param p2, "downloadPath"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miui/gallery/net/download/Request$Listener;
    .param p4, "isActiveNetworkMetered"    # Z

    .prologue
    .line 27
    iget-wide v2, p1, Lcom/miui/gallery/net/resource/Resource;->id:J

    .line 28
    .local v2, "id":J
    const-string v4, "ResourceDownloadManager"

    const-string v5, "downloading: %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const-string v4, "ResourceDownloadManager"

    const-string v5, "download path is empty"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v4, -0x1

    invoke-interface {p3, v4}, Lcom/miui/gallery/net/download/Request$Listener;->onComplete(I)V

    .line 61
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    const-string v4, "ResourceDownloadManager"

    const-string v5, "file downloaded: %s"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcom/miui/gallery/net/download/Request$Listener;->onComplete(I)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Lcom/miui/gallery/net/resource/DownloadRequest;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/net/resource/DownloadRequest;-><init>(J)V

    .line 41
    .local v1, "request":Lcom/miui/gallery/net/resource/DownloadRequest;
    const-string v4, "ResourceDownloadManager"

    invoke-virtual {v1, v4}, Lcom/miui/gallery/net/resource/DownloadRequest;->setTag(Ljava/lang/Object;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 42
    new-instance v4, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;

    invoke-direct {v4, p0, v0, p4, p3}, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;-><init>(Lcom/miui/gallery/net/resource/ResourceDownloadManager;Ljava/io/File;ZLcom/miui/gallery/net/download/Request$Listener;)V

    invoke-virtual {v1, v4}, Lcom/miui/gallery/net/resource/DownloadRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    goto :goto_0
.end method
