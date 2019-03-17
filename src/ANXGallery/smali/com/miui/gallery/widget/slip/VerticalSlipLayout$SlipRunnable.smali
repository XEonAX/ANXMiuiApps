.class Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;
.super Ljava/lang/Object;
.source "VerticalSlipLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlipRunnable"
.end annotation


# instance fields
.field private isAbort:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetY:I

.field final synthetic this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 682
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    .line 683
    return-void
.end method

.method private completeSlip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1402(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Z)Z

    .line 705
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 706
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mTargetY:I

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1100(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V

    .line 707
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$700(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V

    .line 708
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1200(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)V

    .line 709
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1402(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Z)Z

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->isAbort:Z

    .line 726
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 727
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 728
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1000(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;F)V

    .line 715
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->isAbort:Z

    if-nez v0, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->completeSlip()V

    goto :goto_0
.end method

.method public slipTo(II)V
    .locals 6
    .param p1, "y"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->abort()V

    .line 687
    iput-boolean v1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->isAbort:Z

    .line 688
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1300(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)I

    move-result v2

    .line 689
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 691
    .local v4, "dy":I
    iput p1, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mTargetY:I

    .line 693
    if-nez v4, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->completeSlip()V

    .line 701
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-static {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1500(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v3, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$1402(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;Z)Z

    .line 698
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->access$700(Lcom/miui/gallery/widget/slip/VerticalSlipLayout;I)V

    .line 699
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->mScroller:Landroid/widget/Scroller;

    const/16 v5, 0xfa

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 700
    iget-object v0, p0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout$SlipRunnable;->this$0:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 697
    goto :goto_1
.end method
