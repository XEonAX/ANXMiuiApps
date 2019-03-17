.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field final synthetic val$header:Landroid/view/View;

.field final synthetic val$performHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$header:Landroid/view/View;

    iput-object p3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$performHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 516
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 517
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->access$402(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 518
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 519
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$header:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 520
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 521
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 522
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$header:Landroid/view/View;

    .line 523
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 522
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 524
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$4;->val$performHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    .line 527
    :cond_0
    return-void
.end method
