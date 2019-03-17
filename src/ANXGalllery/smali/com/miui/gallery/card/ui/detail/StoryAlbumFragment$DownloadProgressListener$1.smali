.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->parseDownloadResult(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;

.field final synthetic val$fails:Ljava/util/List;

.field final synthetic val$success:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;

    iput-object p2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;->val$fails:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;->val$success:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 1052
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v2, "tempFails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;>;"
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;->val$fails:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1054
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;->val$success:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;

    .line 1055
    .local v1, "sucessResult":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener$1;->this$1:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;

    iget-object v4, v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$8000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;->mTask:Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    iget v5, v5, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mPosition:I

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1062
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "sucessResult":Lcom/miui/gallery/picker/uri/Downloader$DownloadResult;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
