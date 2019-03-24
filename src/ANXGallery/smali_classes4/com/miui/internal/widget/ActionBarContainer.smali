.class public Lcom/miui/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# static fields
.field private static final qg:I = 0x0

.field private static final qh:I = 0x1

.field private static final qi:I = 0x2

.field private static final qj:I = 0x3


# instance fields
.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private nI:Landroid/graphics/drawable/Drawable;

.field private pQ:Z

.field private pR:Landroid/view/View;

.field private pS:Lcom/miui/internal/widget/ActionBarContextView;

.field private pT:Landroid/animation/Animator;

.field private pU:[Landroid/graphics/drawable/Drawable;

.field private pV:Landroid/graphics/drawable/Drawable;

.field private pW:Landroid/graphics/drawable/Drawable;

.field private pX:Landroid/graphics/drawable/Drawable;

.field private pY:Landroid/graphics/drawable/Drawable;

.field private pZ:Z

.field private qa:Z

.field private qb:Z

.field private qc:Z

.field private qd:Z

.field private qe:Landroid/graphics/Rect;

.field private qf:I

.field private qk:Z

.field private ql:Landroid/animation/AnimatorListenerAdapter;

.field private qm:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qk:Z

    .line 83
    new-instance v1, Lcom/miui/internal/widget/ActionBarContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarContainer$1;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->ql:Landroid/animation/AnimatorListenerAdapter;

    .line 91
    new-instance v1, Lcom/miui/internal/widget/ActionBarContainer$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ActionBarContainer$2;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qm:Landroid/animation/AnimatorListenerAdapter;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget-object v1, Lmiui/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 108
    sget v1, Lmiui/R$styleable;->ActionBar_android_background:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    .line 109
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v0

    sget v2, Lmiui/R$styleable;->ActionBar_miui_actionBarEmbededTabsBackground:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lmiui/R$styleable;->ActionBar_miui_actionBarStackedBackground:I

    .line 110
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pU:[Landroid/graphics/drawable/Drawable;

    .line 111
    sget v1, Lmiui/R$styleable;->ActionBar_android_backgroundStacked:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    .line 113
    sget v1, Lmiui/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qd:Z

    .line 115
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getId()I

    move-result v1

    sget v2, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v1, v2, :cond_0

    .line 116
    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    .line 117
    sget v1, Lmiui/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lmiui/R$attr;->colorPrimary:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarContainer;->pX:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-nez p1, :cond_1

    .line 125
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setPadding(IIII)V

    .line 128
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_2
    goto :goto_1

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_0

    .line 128
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    return-object p1
.end method

.method private b(II)V
    .locals 3

    .line 435
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 436
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 440
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 443
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result p1

    .line 444
    nop

    .line 445
    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 446
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    if-nez v1, :cond_2

    .line 449
    invoke-virtual {p0, p2, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 451
    :cond_2
    return-void
.end method

.method private bd()V
    .locals 3

    .line 589
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qk:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pU:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pU:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    const/4 v0, 0x0

    .line 596
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    const/4 v0, 0x1

    .line 598
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    .line 599
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 602
    :cond_1
    nop

    .line 605
    const/4 v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pU:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 606
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pU:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    .line 608
    :cond_3
    return-void

    .line 592
    :cond_4
    :goto_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    .line 374
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qd:Z

    if-nez v0, :cond_2

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 377
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 379
    :cond_2
    return-void
.end method


# virtual methods
.method bc()I
    .locals 6

    .line 176
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    .line 178
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qc:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 179
    nop

    .line 180
    move v1, v2

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 181
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 183
    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pS:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    :cond_2
    nop

    .line 193
    move v0, v2

    :cond_3
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 575
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 577
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qb:Z

    if-eqz p1, :cond_0

    .line 578
    new-instance p1, Lcom/miui/internal/widget/ActionBarContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/ActionBarContainer$3;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->post(Ljava/lang/Runnable;)Z

    .line 584
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qb:Z

    .line 586
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 273
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 274
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 283
    :cond_2
    return-void
.end method

.method getCollapsedHeight()I
    .locals 4

    .line 161
    nop

    .line 162
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 166
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 167
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    return-object v0
.end method

.method public hide(Z)V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 521
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz p1, :cond_2

    .line 522
    const-string p1, "TranslationY"

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 523
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    .line 524
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_1

    .line 525
    nop

    .line 524
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 524
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 526
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->ql:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 527
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 529
    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 531
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz v0, :cond_1

    .line 349
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pX:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 365
    :cond_3
    :goto_0
    return-void

    .line 345
    :cond_4
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 135
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 136
    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pS:Lcom/miui/internal/widget/ActionBarContextView;

    .line 137
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 312
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz p1, :cond_0

    .line 313
    const/4 p1, 0x0

    return p1

    .line 316
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pQ:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 455
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 457
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result p1

    .line 458
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    const/4 p5, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    .line 459
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 460
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 461
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 462
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qf:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    .line 464
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 463
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    add-int/2addr p3, v0

    .line 467
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 468
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->qf:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 469
    :cond_2
    iget v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qf:I

    :goto_1
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    .line 470
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 467
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 472
    :goto_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    sub-int p3, p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 476
    :cond_3
    nop

    .line 477
    iget-boolean p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 478
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 479
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p5, p5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    nop

    .line 499
    move p3, v0

    goto :goto_4

    :cond_4
    move p3, p5

    goto :goto_4

    .line 483
    :cond_5
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->bd()V

    .line 484
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_6

    .line 485
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    sub-int v1, p4, p2

    invoke-virtual {p3, p5, p5, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    nop

    .line 488
    move p3, v0

    goto :goto_3

    :cond_6
    move p3, p5

    :goto_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pX:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 489
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pX:Landroid/graphics/drawable/Drawable;

    sub-int v1, p4, p2

    invoke-virtual {p3, p5, p5, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    nop

    .line 492
    move p3, v0

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pY:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 493
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiui/R$attr;->colorDividerLine:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pY:Landroid/graphics/drawable/Drawable;

    .line 496
    :cond_8
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pY:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, p1, -0x1

    sub-int/2addr p4, p2

    invoke-virtual {v0, p5, v1, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    :goto_4
    if-eqz p3, :cond_9

    .line 500
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 502
    :cond_9
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 383
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->b(II)V

    .line 385
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qf:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    .line 391
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 390
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->e(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pS:Lcom/miui/internal/widget/ActionBarContextView;

    .line 396
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 397
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setContentInset(I)V

    .line 400
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 401
    nop

    .line 402
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 403
    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_4

    .line 404
    const/4 p1, 0x1

    goto :goto_1

    .line 403
    :cond_4
    nop

    .line 404
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    .line 405
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 407
    :cond_5
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    .line 410
    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_8

    .line 411
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 412
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_8

    .line 413
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 414
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    .line 415
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 416
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_3
    add-int/2addr p2, p1

    .line 414
    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 421
    :cond_8
    nop

    .line 422
    move p1, v1

    move p2, p1

    :goto_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 423
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_9

    .line 425
    add-int/lit8 p2, p2, 0x1

    .line 422
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 428
    :cond_a
    if-nez p2, :cond_b

    .line 429
    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 431
    :cond_b
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 571
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 561
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->onPageScrolled(IFZZ)V

    .line 565
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 568
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onWindowHide()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 514
    :cond_0
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 508
    :cond_0
    return-void
.end method

.method public setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pS:Lcom/miui/internal/widget/ActionBarContextView;

    .line 141
    return-void
.end method

.method public setFragmentViewPagerMode(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qc:Z

    .line 158
    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qe:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 150
    :cond_1
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 197
    nop

    .line 198
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 201
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 203
    :cond_0
    move-object v0, v1

    :goto_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    .line 204
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 206
    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->requestLayout()V

    goto :goto_1

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 211
    :goto_1
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->qk:Z

    goto :goto_2

    .line 213
    :cond_2
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qk:Z

    .line 215
    :goto_2
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_3
    goto :goto_4

    .line 216
    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    goto :goto_3

    .line 215
    :cond_5
    :goto_4
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 218
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    .line 242
    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 245
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    goto :goto_1

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_0

    .line 245
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 248
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 223
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    .line 226
    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 229
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    goto :goto_1

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_0

    .line 229
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 231
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 232
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_5
    return-void
.end method

.method public setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 330
    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 331
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 332
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 335
    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qf:I

    .line 336
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pR:Landroid/view/View;

    .line 340
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pQ:Z

    .line 294
    if-eqz p1, :cond_0

    const/high16 p1, 0x60000

    goto :goto_0

    .line 295
    :cond_0
    const/high16 p1, 0x40000

    .line 294
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 296
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 263
    :cond_3
    return-void
.end method

.method public show(Z)V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 538
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 539
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 540
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz p1, :cond_4

    .line 541
    const-string p1, "TranslationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    .line 542
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_1

    .line 543
    nop

    .line 542
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    .line 543
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 542
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 544
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->qm:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->pT:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 547
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 548
    if-eqz p1, :cond_2

    .line 549
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 551
    :cond_2
    goto :goto_1

    .line 553
    :cond_3
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 555
    :cond_4
    :goto_1
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 370
    const/4 p1, 0x0

    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->nI:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pV:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->qa:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pW:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->pZ:Z

    if-nez v0, :cond_3

    .line 268
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 267
    :goto_0
    return p1
.end method
