.class Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;
.super Ljava/lang/Object;
.source "DisplayWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return v4

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$002(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$102(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$100(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$000(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$202(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$200(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$300(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$400(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$200(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$400(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$502(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$200(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    sget v0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->LEFT:I

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$602(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;I)I

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$700(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$700(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$600(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$500(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;->onVideoProgressChanging(IF)V

    goto/16 :goto_0

    .line 76
    :cond_1
    sget v0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->RIGHT:I

    goto :goto_1

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$802(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$800(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$000(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$202(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;F)F

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$700(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$1;->this$0:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->access$700(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;->onVideoProgressChanged()V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
