.class Lcom/miui/gallery/ui/AlbumPageHeaderController$1;
.super Ljava/lang/Object;
.source "AlbumPageHeaderController.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumPageHeaderController;->restartSearchAlbumLoaderIfNeeded()V
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
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageHeaderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 206
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object v8

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$000(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 210
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$100(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$100(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 212
    .local v2, "serverId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v1, v6, v7}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$200(Lcom/miui/gallery/ui/AlbumPageHeaderController;Landroid/content/Context;J)Z

    move-result v0

    .line 214
    .local v0, "albumCoverValid":Z
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    :cond_3
    if-nez v0, :cond_2

    .line 218
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$1;-><init>(Lcom/miui/gallery/ui/AlbumPageHeaderController$1;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 230
    .end local v0    # "albumCoverValid":Z
    .end local v2    # "serverId":Ljava/lang/Long;
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$000(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$400(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$400(Lcom/miui/gallery/ui/AlbumPageHeaderController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 233
    .restart local v2    # "serverId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    .line 234
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageHeaderController$1;->this$0:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v1, v6, v7}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->access$200(Lcom/miui/gallery/ui/AlbumPageHeaderController;Landroid/content/Context;J)Z

    move-result v0

    .line 235
    .restart local v0    # "albumCoverValid":Z
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 238
    :cond_6
    if-nez v0, :cond_5

    .line 239
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController$1$2;-><init>(Lcom/miui/gallery/ui/AlbumPageHeaderController$1;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
