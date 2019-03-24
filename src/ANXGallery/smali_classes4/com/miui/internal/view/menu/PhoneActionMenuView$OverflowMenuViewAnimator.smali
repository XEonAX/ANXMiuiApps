.class Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuViewAnimator"
.end annotation


# instance fields
.field private pr:Landroid/animation/AnimatorSet;

.field private ps:Landroid/animation/AnimatorSet;

.field private pt:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field final synthetic pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V

    return-void
.end method

.method private o(Z)V
    .locals 1

    .line 545
    if-eqz p1, :cond_0

    .line 546
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pt:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 549
    :cond_0
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pt:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 550
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/variable/Android_View_View_class;->setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V

    .line 552
    :goto_0
    return-void
.end method


# virtual methods
.method public aY()V
    .locals 8

    .line 429
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .line 431
    invoke-static {v0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pt:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 433
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const-string v2, "Value"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 435
    new-array v2, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pt:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 436
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 437
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 438
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 439
    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    .line 441
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const-string v6, "Value"

    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 443
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pt:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 444
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 445
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 447
    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    .line 449
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 451
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 454
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancel()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 477
    :cond_1
    return-void
.end method

.method public hide()V
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->aY()V

    .line 465
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 466
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 467
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 468
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 532
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .line 533
    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .line 537
    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p1, v0, :cond_3

    .line 538
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setValue(F)V

    .line 539
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->o(Z)V

    goto :goto_1

    .line 534
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setValue(F)V

    .line 535
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->o(Z)V

    .line 541
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 542
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 515
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 516
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 518
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->o(Z)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 521
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->o(Z)V

    .line 522
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->c(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 525
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 526
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 529
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 512
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 556
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object p1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p1, v0, :cond_0

    .line 557
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pu:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 559
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 4

    .line 480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 482
    :try_start_0
    const-string v0, "android.animation.AnimatorSet"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "reverse"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    const-string v1, "PhoneActionMenuView"

    const-string v2, "reverse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    :cond_1
    :goto_0
    goto :goto_2

    .line 493
    :cond_2
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 497
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 498
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 501
    :cond_4
    if-nez v0, :cond_5

    .line 502
    return-void

    .line 505
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 506
    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 507
    goto :goto_1

    .line 509
    :cond_6
    :goto_2
    return-void
.end method

.method public show()V
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->aY()V

    .line 458
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ps:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 459
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 460
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->pr:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 461
    return-void
.end method
