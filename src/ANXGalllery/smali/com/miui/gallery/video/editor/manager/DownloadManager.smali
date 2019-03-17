.class public Lcom/miui/gallery/video/editor/manager/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager;->mRequestList:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/manager/DownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/manager/DownloadManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager;->mRequestList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/miui/gallery/net/HttpManager;->getInstance()Lcom/miui/gallery/net/HttpManager;

    move-result-object v1

    const-string v2, "DownloadManager"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/net/HttpManager;->cancelAll(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/net/download/Request;

    .line 62
    .local v0, "request":Lcom/miui/gallery/net/download/Request;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/net/download/Request;->setListener(Lcom/miui/gallery/net/download/Request$Listener;)V

    goto :goto_0

    .line 64
    .end local v0    # "request":Lcom/miui/gallery/net/download/Request;
    :cond_0
    return-void
.end method

.method public download(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;Lcom/miui/gallery/net/download/Request$Listener;Z)V
    .locals 9
    .param p1, "resource"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "downloadHelper"    # Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;
    .param p3, "listener"    # Lcom/miui/gallery/net/download/Request$Listener;
    .param p4, "isActiveNetworkMetered"    # Z

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->getId()J

    move-result-wide v6

    .line 30
    .local v6, "id":J
    const-string v0, "DownloadManager"

    const-string v1, "downloading: %d"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance v8, Lcom/miui/gallery/net/resource/DownloadRequest;

    invoke-direct {v8, v6, v7}, Lcom/miui/gallery/net/resource/DownloadRequest;-><init>(J)V

    .line 32
    .local v8, "request":Lcom/miui/gallery/net/resource/DownloadRequest;
    const-string v0, "DownloadManager"

    invoke-virtual {v8, v0}, Lcom/miui/gallery/net/resource/DownloadRequest;->setTag(Ljava/lang/Object;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 33
    new-instance v0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;-><init>(Lcom/miui/gallery/video/editor/manager/DownloadManager;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;ZLcom/miui/gallery/net/download/Request$Listener;)V

    invoke-virtual {v8, v0}, Lcom/miui/gallery/net/resource/DownloadRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 57
    return-void
.end method
