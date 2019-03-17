.class Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->onActivityResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    .prologue
    .line 4000
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4003
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->access$6600(Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;)Lcom/miui/gallery/ui/PhotoPageFragment;

    move-result-object v1

    .line 4004
    .local v1, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4005
    iget-object v2, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    .line 4006
    .local v0, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v0, :cond_0

    .line 4007
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;->val$path:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/model/BaseDataSet;->addNewFile(Ljava/lang/String;I)Z

    .line 4009
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "photo_focused_path"

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager$2;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4010
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    .line 4012
    .end local v0    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    :cond_1
    return-void
.end method
