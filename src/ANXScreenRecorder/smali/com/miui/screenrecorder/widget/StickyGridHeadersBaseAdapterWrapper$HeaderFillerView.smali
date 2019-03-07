.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
.super Landroid/widget/FrameLayout;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderFillerView"
.end annotation


# instance fields
.field private mHeaderId:I

.field final synthetic this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 452
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 456
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 457
    return-void
.end method

.method public constructor <init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 460
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 461
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 476
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getHeaderId()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->mHeaderId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 482
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 503
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 484
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 486
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 490
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 489
    invoke-static {v5, v7, v6}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 491
    .local v1, "heightSpec":I
    iget-object v5, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->this$0:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .line 492
    invoke-static {v5}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->access$400(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 491
    invoke-static {v5, v7, v6}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getChildMeasureSpec(III)I

    move-result v4

    .line 497
    .local v4, "widthSpec":I
    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v1    # "heightSpec":I
    .end local v4    # "widthSpec":I
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 498
    .restart local v1    # "heightSpec":I
    .restart local v4    # "widthSpec":I
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setHeaderId(I)V
    .locals 0
    .param p1, "headerId"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->mHeaderId:I

    .line 472
    return-void
.end method
