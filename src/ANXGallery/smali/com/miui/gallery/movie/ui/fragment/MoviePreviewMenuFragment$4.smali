.class Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;
.super Ljava/lang/Object;
.source "MoviePreviewMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuBottomView$IMenuBottomViewClickListener;


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
    .line 220
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditBtnClick()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->changeEditor()V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    invoke-static {v0}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statPreviewEnterEditPage(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method public onPlayAreaClick()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->pause()V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$700(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    invoke-static {v0}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statPreviewPlayBtn(Z)V

    .line 245
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->resume()V

    goto :goto_0
.end method

.method public onSaveBtnClick()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$4;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->export(Z)V

    .line 226
    :cond_0
    return-void
.end method
