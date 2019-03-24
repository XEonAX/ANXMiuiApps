.class public Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentMaskAnimator"
.end annotation


# instance fields
.field final synthetic rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private rK:Landroid/animation/ObjectAnimator;

.field private rL:Landroid/animation/ObjectAnimator;

.field private rM:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 750
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rM:Landroid/view/View$OnClickListener;

    .line 753
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p2

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rK:Landroid/animation/ObjectAnimator;

    .line 754
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rK:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 756
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    const-string p2, "alpha"

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rL:Landroid/animation/ObjectAnimator;

    .line 757
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rL:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 759
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez p1, :cond_0

    .line 760
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rK:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 761
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rL:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 763
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .locals 0

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rL:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rL:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 795
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 796
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 785
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 786
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 787
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 790
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 802
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rK:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 776
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 778
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 779
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rJ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rM:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->rK:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
