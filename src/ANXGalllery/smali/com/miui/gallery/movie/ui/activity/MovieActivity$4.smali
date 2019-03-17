.class Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/activity/MovieActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(FI)V
    .locals 1
    .param p1, "percent"    # F
    .param p2, "time"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->onProgressChange(FI)V

    .line 293
    :cond_0
    return-void
.end method

.method public onPlaybackEOF()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->onPlaybackEOF()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$500(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$502(Lcom/miui/gallery/movie/ui/activity/MovieActivity;I)I

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->changeFullScreen(Z)V

    .line 311
    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieActivity$4;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieActivity;->access$900(Lcom/miui/gallery/movie/ui/activity/MovieActivity;)Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->onStateChanged(I)V

    .line 300
    :cond_0
    return-void
.end method
