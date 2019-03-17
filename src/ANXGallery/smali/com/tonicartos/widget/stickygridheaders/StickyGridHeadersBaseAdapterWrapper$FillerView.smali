.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
.super Landroid/view/View;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FillerView"
.end annotation


# instance fields
.field private mMeasureTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 528
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 529
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 547
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 548
    return-void
.end method

.method public setMeasureTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->mMeasureTarget:Landroid/view/View;

    .line 541
    return-void
.end method
