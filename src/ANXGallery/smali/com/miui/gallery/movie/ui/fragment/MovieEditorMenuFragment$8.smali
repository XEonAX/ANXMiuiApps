.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;
.super Ljava/lang/Object;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

.field final synthetic val$data:Lcom/miui/gallery/movie/entity/MovieResource;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    iput-object p2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    iput p3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-static {v0, p1}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statDownloadResult(Lcom/miui/gallery/movie/entity/MovieResource;Z)V

    .line 600
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput v0, v2, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    .line 601
    if-nez p1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1300(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c02c5

    invoke-static {v0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$2000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    instance-of v0, v0, Lcom/miui/gallery/movie/entity/TemplateResource;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$position:I

    invoke-static {v2, v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 605
    return-void

    .line 600
    :cond_1
    const/16 v0, 0x14

    goto :goto_0

    .line 604
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 609
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-static {v0}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statDownload(Lcom/miui/gallery/movie/entity/MovieResource;)V

    .line 610
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    const/16 v1, 0x12

    iput v1, v0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    .line 611
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$2000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$data:Lcom/miui/gallery/movie/entity/MovieResource;

    instance-of v0, v0, Lcom/miui/gallery/movie/entity/TemplateResource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$8;->val$position:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 612
    return-void

    .line 611
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
