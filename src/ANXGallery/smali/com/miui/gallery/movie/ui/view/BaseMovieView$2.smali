.class Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;
.super Ljava/lang/Object;
.source "BaseMovieView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/view/BaseMovieView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private changed:Z

.field private downX:F

.field private dx:F

.field private layout:I

.field private moveX:F

.field final synthetic this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->downX:F

    .line 95
    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->moveX:F

    .line 96
    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->dx:F

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->layout:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$100(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->downX:F

    .line 108
    iput-boolean v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->changed:Z

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->moveX:F

    .line 112
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->moveX:F

    iget v3, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->downX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->dx:F

    .line 113
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->dx:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$200(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$300(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    iget v3, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->dx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$300(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$402(Lcom/miui/gallery/movie/ui/view/BaseMovieView;F)F

    .line 115
    iget v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->dx:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->layout:I

    .line 116
    iput-boolean v2, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->changed:Z

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$500(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$500(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    move-result-object v0

    iget v2, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->layout:I

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$400(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;->onVideoProgressChanging(IF)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 115
    goto :goto_1

    .line 124
    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->changed:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$500(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$500(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView$IProgressChangeListener;->onVideoProgressChanged()V

    .line 128
    :cond_3
    iget-boolean v1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$2;->changed:Z

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
