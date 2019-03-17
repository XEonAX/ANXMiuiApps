.class public Lcom/miui/gallery/widget/BottomMenu;
.super Landroid/widget/FrameLayout;
.source "BottomMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;
    }
.end annotation


# instance fields
.field private mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

.field private mHiddenByApp:Z

.field private mMenuBarAnim:Landroid/animation/Animator;

.field private mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

.field private mOptionsMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

.field private mSplitMenuView:Lcom/miui/gallery/view/menu/PhoneActionMenuView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/PhoneActionMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/BottomMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mSplitMenuView:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/BottomMenu;)Lcom/miui/gallery/view/menu/ActionMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/BottomMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/widget/BottomMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/BottomMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 100
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 102
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 103
    const/4 v0, 0x1

    .line 104
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 106
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 107
    const/4 v0, 0x1

    .line 108
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 110
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 111
    const/4 v0, 0x1

    .line 112
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 114
    :cond_3
    return v0
.end method

.method private configPresenters(Lcom/miui/gallery/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "builder"    # Lcom/miui/gallery/view/menu/MenuBuilder;

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 267
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/gallery/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method private getMenuBarAnimator(Z)Landroid/animation/Animator;
    .locals 12
    .param p1, "isShow"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 300
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 301
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_0

    .line 302
    iget-object v4, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const-string v5, "TranslationY"

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/miui/gallery/view/menu/ActionMenuView;->getTranslationY()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 303
    .local v3, "translate":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const-string v5, "Alpha"

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/miui/gallery/view/menu/ActionMenuView;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 304
    .local v0, "alpha":Landroid/animation/Animator;
    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v3, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 305
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 321
    :goto_0
    return-object v1

    .line 308
    .end local v0    # "alpha":Landroid/animation/Animator;
    .end local v3    # "translate":Landroid/animation/Animator;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/BottomMenu;->getMenuBarHeight()I

    move-result v4

    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v5

    add-int v2, v4, v5

    .line 309
    .local v2, "height":I
    iget-object v4, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const-string v5, "TranslationY"

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/miui/gallery/view/menu/ActionMenuView;->getTranslationY()F

    move-result v7

    aput v7, v6, v8

    int-to-float v7, v2

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 310
    .restart local v3    # "translate":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const-string v5, "Alpha"

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/miui/gallery/view/menu/ActionMenuView;->getAlpha()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 311
    .restart local v0    # "alpha":Landroid/animation/Animator;
    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v3, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 312
    new-instance v4, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 314
    new-instance v4, Lcom/miui/gallery/widget/BottomMenu$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/widget/BottomMenu$2;-><init>(Lcom/miui/gallery/widget/BottomMenu;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getMenuBarHeight()I
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/ActionMenuView;->getHeight()I

    move-result v0

    .line 290
    .local v0, "height":I
    iget-object v2, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    instance-of v2, v2, Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    if-eqz v2, :cond_0

    .line 291
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    check-cast v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .line 292
    .local v1, "menuView":Lcom/miui/gallery/view/menu/PhoneActionMenuView;
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getCollapsedHeight()I

    move-result v0

    .line 296
    .end local v1    # "menuView":Lcom/miui/gallery/view/menu/PhoneActionMenuView;
    :cond_0
    return v0
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pullChildren()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMask:Landroid/view/View;

    if-nez v0, :cond_0

    .line 74
    const v0, 0x7f12026a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/BottomMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMask:Landroid/view/View;

    .line 75
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isOledDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMask:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMask:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02035b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    return-void
.end method

.method private updateContentMaskVisibility(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    instance-of v0, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    check-cast v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mSplitMenuView:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mSplitMenuView:Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMask:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/BottomMenu;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/BottomMenu;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected createActionMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    .locals 6
    .param p1, "callback"    # Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .prologue
    .line 270
    new-instance v0, Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 271
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f040005

    :goto_0
    const v3, 0x7f040003

    const/high16 v4, 0x7f040000

    const v5, 0x7f040001

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    .line 275
    .local v0, "actionMenuPresenter":Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V

    .line 276
    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->setId(I)V

    .line 277
    return-object v0

    .line 271
    .end local v0    # "actionMenuPresenter":Lcom/miui/gallery/view/menu/ActionMenuPresenter;
    :cond_0
    const v2, 0x7f040004

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    :goto_0
    return v1

    .line 330
    :cond_0
    const/4 v0, 0x0

    .line 331
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/BottomMenu;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    move v1, v0

    .line 335
    goto :goto_0

    :cond_2
    move v0, v2

    .line 332
    goto :goto_1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsets(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/gallery/widget/BottomMenu;->mBaseInnerInsets:Landroid/graphics/Rect;

    move-object v0, p0

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/widget/BottomMenu;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 89
    :cond_0
    if-eqz v7, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->requestLayout()V

    .line 92
    :cond_1
    return v4
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mHiddenByApp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getCollapsedHeight()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 281
    iget-object v2, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/gallery/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    .line 283
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 285
    .end local v0    # "height":I
    :goto_0
    return v0

    .restart local v0    # "height":I
    :cond_0
    move v0, v1

    .line 283
    goto :goto_0

    .end local v0    # "height":I
    :cond_1
    move v0, v1

    .line 285
    goto :goto_0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 343
    new-instance v0, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/gallery/widget/BottomMenu$ContentMaskAnimator;-><init>(Lcom/miui/gallery/widget/BottomMenu;Landroid/view/View$OnClickListener;Lcom/miui/gallery/widget/BottomMenu$1;)V

    return-object v0
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-boolean v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mHiddenByApp:Z

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 233
    :cond_2
    if-eqz p1, :cond_3

    .line 234
    invoke-direct {p0, v3}, Lcom/miui/gallery/widget/BottomMenu;->getMenuBarAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 241
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/gallery/widget/BottomMenu;->updateContentMaskVisibility(Z)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-direct {p0}, Lcom/miui/gallery/widget/BottomMenu;->getMenuBarHeight()I

    move-result v1

    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->setTranslationY(F)V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->setAlpha(F)V

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->setVisibility(I)V

    goto :goto_1
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->requestFitSystemWindows()V

    .line 56
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/widget/BottomMenu;->pullChildren()V

    .line 62
    new-instance v0, Lcom/miui/gallery/widget/BottomMenu$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/BottomMenu$1;-><init>(Lcom/miui/gallery/widget/BottomMenu;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mContentMaskOnClickListener:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/miui/gallery/view/menu/MenuPresenter$Callback;

    .prologue
    .line 118
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mOptionsMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-ne p1, v6, :cond_0

    .line 165
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mOptionsMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mOptionsMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 127
    .local v0, "builder":Lcom/miui/gallery/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mOptionsMenu:Lcom/miui/gallery/view/menu/MenuBuilder;

    .line 128
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v6}, Lcom/miui/gallery/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 130
    .local v4, "oldParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    .line 131
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    .end local v4    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-nez v6, :cond_3

    .line 135
    invoke-virtual {p0, p2}, Lcom/miui/gallery/widget/BottomMenu;->createActionMenuPresenter(Lcom/miui/gallery/view/menu/MenuPresenter$Callback;)Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .line 139
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 141
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v8, 0x1

    .line 141
    invoke-virtual {v6, v7, v8}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 143
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x50

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 147
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/BottomMenu;->configPresenters(Lcom/miui/gallery/view/menu/MenuBuilder;)V

    .line 148
    iget-object v6, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/gallery/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/view/menu/ActionMenuView;

    .line 149
    .local v3, "menuView":Lcom/miui/gallery/view/menu/ActionMenuView;
    invoke-virtual {v3}, Lcom/miui/gallery/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 150
    .restart local v4    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_4

    if-eq v4, p0, :cond_4

    .line 151
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->getAnimatedVisibility()I

    move-result v5

    .line 154
    .local v5, "visibility":I
    invoke-virtual {v3, v5}, Lcom/miui/gallery/view/menu/ActionMenuView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0, v3, v2}, Lcom/miui/gallery/widget/BottomMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const v6, 0x7f120082

    invoke-virtual {v3, v6}, Lcom/miui/gallery/view/menu/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "expandedMenu":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 161
    :cond_5
    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/widget/BottomMenu;->requestFitSystemWindows()V

    .line 164
    :cond_6
    iput-object v3, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    goto/16 :goto_0
.end method

.method public show(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 197
    iget-boolean v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mHiddenByApp:Z

    if-eqz v1, :cond_0

    .line 198
    iput-boolean v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mHiddenByApp:Z

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    if-nez v1, :cond_1

    .line 200
    const-string v1, "BottomMenu"

    const-string/jumbo v2, "show: menuView is null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/view/menu/ActionMenuView;->setVisibility(I)V

    .line 207
    if-eqz p1, :cond_5

    .line 208
    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/BottomMenu;->getMenuBarAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuBarAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    instance-of v1, v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    check-cast v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 212
    .local v0, "needLayoutAnim":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 213
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 220
    .end local v0    # "needLayoutAnim":Z
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/BottomMenu;->updateContentMaskVisibility(Z)V

    goto :goto_0

    .line 217
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/gallery/view/menu/ActionMenuView;->setTranslationY(F)V

    .line 218
    iget-object v1, p0, Lcom/miui/gallery/widget/BottomMenu;->mMenuView:Lcom/miui/gallery/view/menu/ActionMenuView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/miui/gallery/view/menu/ActionMenuView;->setAlpha(F)V

    goto :goto_1
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/BottomMenu;->mActionMenuPresenter:Lcom/miui/gallery/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
