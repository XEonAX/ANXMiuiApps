.class Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;
.super Ljava/lang/Object;
.source "MoviePreviewMenuFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "MoviePreviewMenuFragment"

    const-string v1, "onGlobalLayout MovieManager is null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$802(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;I)I

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$900(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/movie/ui/view/MultiThumbnailSequenceView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$1102(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;I)I

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$600(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 259
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$1200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$700(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$1300(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$5;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$1400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    goto :goto_0
.end method
