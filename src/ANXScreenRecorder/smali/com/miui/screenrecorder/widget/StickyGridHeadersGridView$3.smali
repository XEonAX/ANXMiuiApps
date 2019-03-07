.class Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

.field final synthetic val$header:Landroid/view/View;

.field final synthetic val$performHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Landroid/view/View;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput-object p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$performHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 436
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 437
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->access$202(Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 438
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iput v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mTouchMode:I

    .line 439
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 440
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->setPressed(Z)V

    .line 441
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 442
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$header:Landroid/view/View;

    .line 443
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 442
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 444
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$3;->val$performHeaderClick:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    .line 447
    :cond_0
    return-void
.end method
