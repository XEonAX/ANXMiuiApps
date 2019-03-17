.class Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;
.super Ljava/lang/Object;
.source "MovieDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/net/download/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

.field final synthetic val$data:Lcom/miui/gallery/movie/entity/MovieResource;

.field final synthetic val$downloadListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/utils/MovieDownloadManager;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->this$0:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    iput-object p3, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 5
    .param p1, "resultCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 78
    const-string v0, "MovieDownloadManager"

    const-string v1, "download %s :%d"

    iget-object v2, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-virtual {v2}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    if-nez p1, :cond_1

    .line 80
    new-instance v0, Lcom/miui/gallery/movie/utils/UnzipTask;

    iget-object v1, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    iget-object v2, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/movie/utils/UnzipTask;-><init>(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/utils/UnzipTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$downloadListener:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    invoke-interface {v0, v4}, Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;->onCompleted(Z)V

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 73
    const-string v0, "MovieDownloadManager"

    const-string v1, "download progress %s :%d"

    iget-object v2, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-virtual {v2}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
