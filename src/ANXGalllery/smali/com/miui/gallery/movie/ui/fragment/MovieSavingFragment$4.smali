.class Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;
.super Ljava/lang/Object;
.source "MovieSavingFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/core/MovieManager$EncodeStateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->doSaving(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/miui/gallery/movie/core/MovieManager;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragmentManager:Landroid/app/FragmentManager;

.field final synthetic val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

.field final synthetic val$tempFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;Landroid/app/FragmentManager;Ljava/lang/String;Landroid/content/Context;Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    iput-object p2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$fragmentManager:Landroid/app/FragmentManager;

    iput-object p3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$tempFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeEnd(ZZI)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isCancel"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 154
    const-string v0, "MovieSavingFragment"

    const-string v1, "save result: %b,code: %d,path: %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$tempFilePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$1;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;)V

    new-instance v2, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4$2;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;ZZ)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->dismissSafely()V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;->onFinish(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onEncodeProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->setProgress(I)V

    .line 150
    return-void
.end method

.method public onEncodeStart()V
    .locals 3

    .prologue
    .line 141
    const-string v0, "MovieSavingFragment"

    const-string v1, "save start"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$4;->val$fragmentManager:Landroid/app/FragmentManager;

    const-string v2, "MovieSavingFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method
