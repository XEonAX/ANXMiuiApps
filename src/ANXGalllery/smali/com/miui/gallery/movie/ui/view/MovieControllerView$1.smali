.class Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;
.super Ljava/lang/Object;
.source "MovieControllerView.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/view/MovieControllerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field tempCurrentTime:I

.field final synthetic this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoProgressChanged()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$102(Lcom/miui/gallery/movie/ui/view/MovieControllerView;I)I

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->pause()V

    .line 98
    return-void
.end method

.method public onVideoProgressChanging(IF)V
    .locals 5
    .param p1, "layout"    # I
    .param p2, "percent"    # F

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$000(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$100(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    .line 64
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 66
    .local v0, "dTime":I
    if-nez p1, :cond_4

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$100(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    iget v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    if-le v2, v0, :cond_3

    iget v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    sub-int/2addr v2, v0

    :goto_1
    iput v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    .line 80
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    iget v4, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    invoke-virtual {v2, v4}, Lcom/miui/gallery/movie/core/MovieManager;->seek(I)V

    .line 82
    iget v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 83
    .local v1, "percentForTotal":F
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->updatePlayProgress(F)V

    .line 85
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    iget v4, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDuration(I)V

    .line 86
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDeleteVisible(Z)V

    .line 88
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    invoke-interface {v2, v1, v3}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onChanged(FI)V

    goto :goto_0

    .end local v1    # "percentForTotal":F
    :cond_3
    move v2, v3

    .line 70
    goto :goto_1

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$100(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)I

    move-result v2

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 75
    iget v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    .line 76
    iget v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 77
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$1;->tempCurrentTime:I

    goto :goto_2
.end method
