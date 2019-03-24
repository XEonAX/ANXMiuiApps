.class public abstract Lcom/miui/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/miui/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;,
        Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field private mK:Z

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private nk:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 41
    new-instance p1, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-direct {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;-><init>(Lcom/miui/internal/view/menu/ActionMenuView;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nk:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    .line 42
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez p1, :cond_0

    .line 43
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->initLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 140
    if-eqz p1, :cond_0

    instance-of p1, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected computeAlpha(FZZ)F
    .locals 2

    .line 258
    nop

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    if-eqz p2, :cond_1

    .line 262
    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    int-to-float p1, p1

    div-float v0, p1, v1

    goto :goto_0

    .line 263
    :cond_1
    if-eqz p3, :cond_2

    .line 264
    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    div-float v0, p1, v1

    .line 267
    :cond_2
    :goto_0
    return v0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 4

    .line 241
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 244
    float-to-double p2, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, p2, v2

    const/high16 p3, 0x40000000    # 2.0f

    if-gez p2, :cond_0

    .line 245
    mul-float/2addr p1, p3

    goto :goto_0

    .line 247
    :cond_0
    sub-float/2addr v1, p1

    mul-float p1, p3, v1

    goto :goto_0

    .line 249
    :cond_1
    if-eqz p3, :cond_2

    .line 250
    sub-float p1, v1, p1

    .line 253
    :cond_2
    :goto_0
    mul-float/2addr p1, v0

    .line 254
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 177
    const/4 p1, 0x0

    return p1
.end method

.method public filterLeftoverView(I)Z
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 113
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->removeView(Landroid/view/View;)V

    .line 114
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 119
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 121
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 126
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    .line 131
    instance-of v0, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 133
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 146
    return-object v0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    .line 164
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    nop

    .line 167
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    instance-of v2, v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v2, :cond_0

    .line 168
    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/2addr v3, v0

    .line 170
    :cond_0
    if-lez p1, :cond_1

    instance-of p1, v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz p1, :cond_1

    .line 171
    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p1

    or-int/2addr v3, p1

    .line 173
    :cond_1
    return v3
.end method

.method protected initLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 10

    .line 50
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->action_menu_item_appear_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 52
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$integer;->action_menu_item_anim_delay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v2

    long-to-float v0, v0

    div-float/2addr v3, v0

    .line 55
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v0, v9, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 56
    invoke-virtual {v0, v9}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 58
    return-object v0
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 161
    return-void
.end method

.method public invokeItem(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 78
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 80
    iget-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 83
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 98
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 99
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 89
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 93
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 272
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setAlpha(F)V

    .line 276
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    .line 277
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getTranslationY()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_2

    .line 278
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setTranslationY(F)V

    .line 280
    :cond_2
    iget-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nk:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 281
    return-void
.end method

.method public playCloseAnimator()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nk:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->close()V

    .line 237
    return-void
.end method

.method public playOpenAnimator()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nk:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->open()V

    .line 233
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Z

    .line 107
    return-void
.end method

.method public setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->nj:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 63
    return-void
.end method
