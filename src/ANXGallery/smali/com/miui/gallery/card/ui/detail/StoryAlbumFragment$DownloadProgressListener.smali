.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

.field private total:I


# direct methods
.method private constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p2, "x1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    return-void
.end method

.method private parseDownloadResult(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7902(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;

    .line 1070
    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    const/4 v4, 0x0

    .line 1033
    const-string v0, "StoryAlbumFragment"

    const-string v1, "download cancelled, success: %d, fails: %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->dismissSafely()V

    .line 1035
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7402(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V

    .line 1037
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 1038
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;

    .line 1039
    return-void
.end method

.method public onEnd(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    const/4 v4, 0x0

    .line 1011
    const-string v0, "StoryAlbumFragment"

    const-string v1, "download end, success: %d, fails: %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1012
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->dismissSafely()V

    .line 1013
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7402(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V

    .line 1015
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1016
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0c04c2

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1027
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 1028
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;

    .line 1029
    return-void

    .line 1018
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)V

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1025
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    goto :goto_0
.end method

.method public onStart(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;>;"
    const-string v0, "StoryAlbumFragment"

    const-string v1, "download start, %d"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->total:I

    .line 1005
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    invoke-direct {v1}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7402(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .line 1006
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->show(Landroid/app/Activity;)V

    .line 1007
    return-void
.end method

.method public onUpdate(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    .local p2, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->total:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1044
    .local v0, "percent":F
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->updateProgress(F)V

    .line 1046
    return-void
.end method
