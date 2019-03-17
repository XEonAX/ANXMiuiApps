.class Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "PhoneActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/view/menu/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuViewAnimator"
.end annotation


# instance fields
.field private mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

.field private mCollapseAnimator:Landroid/animation/AnimatorSet;

.field private mExpandAnimator:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/view/menu/PhoneActionMenuView;Lcom/miui/gallery/view/menu/PhoneActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView;
    .param p2, "x1"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView$1;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)V

    return-void
.end method

.method private setContentViewImportantForAccessibility(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 541
    return-void
.end method


# virtual methods
.method public ensureAnimators()V
    .locals 9

    .prologue
    const/high16 v8, 0x10e0000

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 424
    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v2}, Lcom/miui/gallery/view/menu/BottomMenuBarUtils;->findBottomMenuBar(Landroid/view/View;)Lcom/miui/gallery/widget/BottomMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    .line 427
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 428
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    const-string v3, "Value"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 429
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    iget-object v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/widget/BottomMenu;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 431
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 435
    new-instance v1, Landroid/animation/AnimatorSet;

    .end local v1    # "set":Landroid/animation/AnimatorSet;
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 436
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    const-string v3, "Value"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 437
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    iget-object v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mBottomMenu:Lcom/miui/gallery/widget/BottomMenu;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/BottomMenu;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 438
    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 439
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 443
    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 428
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 436
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators()V

    .line 454
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 455
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 456
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 457
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .line 522
    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_2

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setValue(F)V

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 530
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 531
    return-void

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .line 526
    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_1

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setValue(F)V

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {v0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$202(Lcom/miui/gallery/view/menu/PhoneActionMenuView;Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 514
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 515
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {v0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$202(Lcom/miui/gallery/view/menu/PhoneActionMenuView;Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 511
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$400(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$300(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 518
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 501
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-static {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 548
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 469
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 471
    :try_start_0
    const-string v4, "android.animation.AnimatorSet"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "reverse"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 472
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PhoneActionMenuView"

    const-string v5, "reverse: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 482
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    .line 483
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 484
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 486
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 487
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 490
    :cond_4
    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 495
    .local v0, "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/ValueAnimator;

    .end local v0    # "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1
.end method

.method public show()V
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators()V

    .line 447
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 448
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 449
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 450
    return-void
.end method
