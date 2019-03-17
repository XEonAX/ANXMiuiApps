.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;
.super Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForHeaderLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    .prologue
    .line 1522
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1525
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1526
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1529
    const/4 v1, 0x0

    .line 1530
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v2, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 1533
    :cond_0
    if-eqz v1, :cond_2

    .line 1534
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v3, -0x2

    iput v3, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 1535
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1536
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1541
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    return-void

    .line 1538
    .restart local v1    # "handled":Z
    :cond_2
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v3, 0x2

    iput v3, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
