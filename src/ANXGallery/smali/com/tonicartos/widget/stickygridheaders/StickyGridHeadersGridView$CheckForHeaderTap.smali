.class final Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1587
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v3, :cond_1

    .line 1588
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v5, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 1589
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v4, v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v3, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1590
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-nez v3, :cond_1

    .line 1591
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 1592
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1593
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1594
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->refreshDrawableState()V

    .line 1596
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 1597
    .local v2, "longPressTimeout":I
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v1

    .line 1599
    .local v1, "longClickable":Z
    if-eqz v1, :cond_2

    .line 1600
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    if-nez v3, :cond_0

    .line 1601
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V

    iput-object v4, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 1603
    :cond_0
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 1604
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1613
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_1
    :goto_0
    return-void

    .line 1606
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "longClickable":Z
    .restart local v2    # "longPressTimeout":I
    :cond_2
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v6, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0

    .line 1609
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_3
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v6, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
