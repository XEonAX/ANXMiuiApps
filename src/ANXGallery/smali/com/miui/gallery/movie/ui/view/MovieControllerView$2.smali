.class Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;
.super Ljava/lang/Object;
.source "MovieControllerView.java"

# interfaces
.implements Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/view/MovieControllerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackEOF()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->onPlaybackTimeChanged(I)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$500(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onPlaybackEOF()V

    .line 134
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$402(Lcom/miui/gallery/movie/ui/view/MovieControllerView;Z)Z

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/core/MovieManager;->seek(I)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->pause()V

    goto :goto_0
.end method

.method public onPlaybackPreloadingCompletion()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showLoadingView(Z)V

    .line 148
    return-void
.end method

.method public onPlaybackTimeChanged(I)V
    .locals 3
    .param p1, "currentTime"    # I

    .prologue
    .line 138
    int-to-float v1, p1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 139
    .local v0, "percent":F
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, p1, v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setCurrentPlayTime(IF)V

    .line 140
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onChanged(FI)V

    .line 143
    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/core/MovieManager;->setState(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$400(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayBtn(Z)V

    .line 113
    :goto_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDeleteVisible(Z)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onStateChanged(I)V

    .line 119
    :cond_1
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayBtn(Z)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$402(Lcom/miui/gallery/movie/ui/view/MovieControllerView;Z)Z

    goto :goto_0
.end method
