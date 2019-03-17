.class Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->changeUndefinedToVisible(Ljava/util/ArrayList;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    iput-object p2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 517
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 518
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "visibilityType"

    const/4 v2, 0x1

    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 518
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->val$ids:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/FaceManager;->safeUpdatePeopleFaceByIds(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 522
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->access$1900(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->access$1900(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 524
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->access$1900(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 525
    monitor-exit v2

    .line 526
    const/4 v1, 0x0

    return-object v1

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
