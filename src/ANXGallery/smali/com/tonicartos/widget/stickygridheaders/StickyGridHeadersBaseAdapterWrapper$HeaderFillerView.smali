.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
.super Landroid/widget/FrameLayout;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderFillerView"
.end annotation


# instance fields
.field private mHeaderId:I

.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 561
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 562
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 585
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getHeaderId()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->mHeaderId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 591
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 592
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 594
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 598
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 597
    invoke-static {v4, v6, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 599
    .local v0, "heightSpec":I
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 600
    invoke-static {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->access$400(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 599
    invoke-static {v4, v6, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v3

    .line 602
    .local v3, "widthSpec":I
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 604
    .end local v0    # "heightSpec":I
    .end local v3    # "widthSpec":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setMeasuredDimension(II)V

    .line 605
    return-void
.end method

.method public setHeaderId(I)V
    .locals 0
    .param p1, "headerId"    # I

    .prologue
    .line 580
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->mHeaderId:I

    .line 581
    return-void
.end method
