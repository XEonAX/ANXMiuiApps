.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
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
    name = "PerformHeaderClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "x1"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    .prologue
    .line 1544
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 1556
    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 1561
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    invoke-static {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->access$600(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->performHeaderClick(Landroid/view/View;J)Z

    goto :goto_0
.end method
