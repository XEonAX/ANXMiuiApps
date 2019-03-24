.class public Lcom/miui/internal/widget/ActionBarContextView;
.super Lcom/miui/internal/widget/a;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;,
        Lcom/miui/internal/widget/ActionBarContextView$SavedState;
    }
.end annotation


# static fields
.field private static final qo:I = 0x0

.field private static final qp:I = 0x1

.field private static final qq:I = 0x2


# instance fields
.field private cx:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private pW:Landroid/graphics/drawable/Drawable;

.field private qA:Landroid/animation/Animator;

.field private qB:I

.field private qC:I

.field private qD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private qE:F

.field private qF:Z

.field private qG:Landroid/view/View$OnClickListener;

.field private qb:Z

.field private final qr:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

.field private qs:Landroid/widget/LinearLayout;

.field private qt:Landroid/widget/Button;

.field private qu:Landroid/widget/Button;

.field private qv:I

.field private qw:Z

.field private qx:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private qy:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private qz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 112
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    .line 95
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContextView$1;-><init>(Lcom/miui/internal/widget/ActionBarContextView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qG:Landroid/view/View$OnClickListener;

    .line 118
    sget-object v0, Lmiui/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 119
    sget v0, Lmiui/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    sget v0, Lmiui/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qv:I

    .line 124
    sget v0, Lmiui/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 126
    sget v0, Lmiui/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->pW:Landroid/graphics/drawable/Drawable;

    .line 129
    new-instance v8, Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 130
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->qx:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 131
    new-instance v8, Lcom/miui/internal/view/menu/ActionMenuItem;

    sget v0, Lmiui/R$string;->action_mode_select_all:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/miui/internal/widget/ActionBarContextView;->qy:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 134
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContextView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qB:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContextView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qx:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qy:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qz:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(II)V
    .locals 1

    .line 537
    const v0, 0x1020019

    if-ne p1, v0, :cond_0

    .line 538
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    goto :goto_0

    .line 539
    :cond_0
    const v0, 0x102001a

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 540
    :goto_0
    if-nez p1, :cond_2

    .line 541
    return-void

    .line 543
    :cond_2
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_light:I

    if-eq v0, p2, :cond_b

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_cancel_dark:I

    if-ne v0, p2, :cond_3

    goto :goto_4

    .line 546
    :cond_3
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_light:I

    if-eq v0, p2, :cond_a

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_confirm_dark:I

    if-ne v0, p2, :cond_4

    goto :goto_3

    .line 549
    :cond_4
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_light:I

    if-eq v0, p2, :cond_9

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_select_all_dark:I

    if-ne v0, p2, :cond_5

    goto :goto_2

    .line 552
    :cond_5
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_light:I

    if-eq v0, p2, :cond_8

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_deselect_all_dark:I

    if-ne v0, p2, :cond_6

    goto :goto_1

    .line 555
    :cond_6
    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_light:I

    if-eq v0, p2, :cond_7

    sget v0, Lcom/miui/internal/R$drawable;->action_mode_title_button_delete_dark:I

    if-ne v0, p2, :cond_c

    .line 557
    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->delete_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 554
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->deselect_all_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 551
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->select_all_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 548
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->confirm_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 545
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/internal/R$string;->cancel_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 559
    :cond_c
    :goto_5
    return-void
.end method

.method static synthetic d(Lcom/miui/internal/widget/ActionBarContextView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qB:I

    return p0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .line 606
    if-nez p1, :cond_0

    .line 607
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    if-nez v0, :cond_1

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 0

    .line 563
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    .line 565
    if-eqz p1, :cond_0

    .line 567
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 568
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qb:Z

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 572
    :goto_0
    return-void
.end method

.method bb()I
    .locals 1

    .line 211
    const v0, 0x1010394

    return v0
.end method

.method protected cancelAnimation()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    .line 426
    :cond_0
    return-void
.end method

.method public closeMode()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->endAnimation()V

    .line 300
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qB:I

    .line 301
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->dismissPopupMenus()V

    return-void
.end method

.method protected endAnimation()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    .line 433
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 335
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 340
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getAnimationProgress()F
    .locals 1

    .line 436
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qE:F

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 8

    .line 256
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qz:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->cancelAnimation()V

    .line 258
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->killMode()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qz:Ljava/lang/ref/WeakReference;

    .line 263
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 264
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 267
    :cond_1
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_mode_menu_item_layout:I

    sget v6, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v7, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 272
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 273
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setActionEditMode(Z)V

    .line 275
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_2

    .line 279
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 280
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 281
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 286
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 285
    invoke-virtual {v4, v5, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 288
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_3

    move v2, v3

    nop

    :cond_3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 290
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 292
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 293
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1, v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    :goto_1
    return-void
.end method

.method protected initTitle()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    sget v2, Lcom/miui/internal/R$layout;->action_mode_title_item:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    .line 230
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    const v2, 0x102001a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qG:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->cx:Landroid/widget/TextView;

    .line 241
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qv:I

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->cx:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qv:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->cx:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 249
    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 253
    :cond_4
    return-void
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qw:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .line 304
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 312
    :cond_1
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 313
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qz:Ljava/lang/ref/WeakReference;

    .line 314
    return-void
.end method

.method protected makeInOutAnimator(Z)Landroid/animation/Animator;
    .locals 13

    .line 445
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qF:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 446
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    return-object p1

    .line 448
    :cond_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qF:Z

    .line 455
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 456
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getHeight()I

    move-result v1

    .line 457
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getTranslationY()F

    move-result v0

    .line 458
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 459
    nop

    .line 460
    nop

    .line 461
    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 462
    nop

    .line 470
    move v11, v1

    move v1, v0

    move v0, v11

    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_0

    .line 464
    :cond_1
    nop

    .line 465
    nop

    .line 466
    nop

    .line 467
    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 470
    :goto_0
    const-string v4, "Alpha"

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v3, v6, v2

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 472
    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    const-wide/16 v8, 0x0

    if-nez v4, :cond_2

    .line 473
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    :cond_2
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 478
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->withFinalVisibility(Z)Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    return-object v3

    .line 482
    :cond_3
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const-string v6, "TranslationY"

    new-array v10, v5, [F

    aput v0, v10, v7

    aput v1, v10, v2

    invoke-static {v4, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 485
    const-string v1, "AnimationProgress"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 487
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 488
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v7

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 489
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qr:Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;->withFinalVisibility(Z)Lcom/miui/internal/widget/ActionBarContextView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_4

    const-wide/16 v8, 0x12c

    nop

    :cond_4
    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 492
    iput-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qA:Landroid/animation/Animator;

    .line 494
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    if-nez v0, :cond_0

    .line 597
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 600
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    .line 601
    goto :goto_0

    .line 602
    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    if-nez v0, :cond_0

    .line 577
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 580
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    .line 581
    goto :goto_0

    .line 582
    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 590
    invoke-interface {v1, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    .line 591
    goto :goto_0

    .line 592
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/miui/internal/widget/a;->onDetachedFromWindow()V

    .line 144
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 146
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 148
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 390
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingStart()I

    move-result p1

    .line 391
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qC:I

    add-int/2addr v0, v1

    .line 392
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qC:I

    sub-int/2addr p5, p3

    .line 394
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    .line 395
    iget-object p3, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p1, v0, p5}, Lcom/miui/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    .line 398
    :cond_0
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p4, p1

    .line 399
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 400
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, p4, v0, p5}, Lcom/miui/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    .line 403
    :cond_1
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qb:Z

    if-eqz p1, :cond_2

    .line 404
    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qB:I

    .line 405
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 406
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qb:Z

    .line 408
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 351
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 353
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v0, :cond_0

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 357
    sub-int/2addr p2, v0

    .line 358
    const/high16 v2, -0x80000000

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 359
    nop

    .line 361
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 362
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v1, p2, v3}, Lcom/miui/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 363
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_1

    .line 366
    :cond_1
    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 367
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 368
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 369
    iget-object p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v2, p2

    .line 372
    :cond_2
    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz p2, :cond_6

    .line 373
    nop

    .line 374
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getChildCount()I

    move-result p2

    .line 375
    move v1, v3

    move v2, v1

    :goto_2
    if-ge v1, p2, :cond_4

    .line 376
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 377
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 378
    if-le v4, v2, :cond_3

    .line 379
    nop

    .line 375
    move v2, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 382
    :cond_4
    if-lez v2, :cond_5

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qC:I

    add-int v3, v2, p2

    nop

    :cond_5
    invoke-virtual {p0, p1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 383
    goto :goto_3

    .line 384
    :cond_6
    if-lez v2, :cond_7

    iget p2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mContentHeight:I

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qC:I

    add-int v3, p2, v0

    nop

    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 386
    :goto_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 200
    check-cast p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    .line 201
    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qI:Ljava/lang/CharSequence;

    const v1, 0x102001a

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 204
    iget-boolean p1, p1, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qJ:Z

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->postShowOverflowMenu()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 189
    new-instance v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;

    invoke-super {p0}, Lcom/miui/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qJ:Z

    .line 191
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 192
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarContextView$SavedState;->qI:Ljava/lang/CharSequence;

    .line 195
    :cond_0
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 345
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 346
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/miui/internal/widget/a;->postShowOverflowMenu()V

    return-void
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .line 618
    if-nez p1, :cond_0

    .line 619
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 624
    :cond_1
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    .line 440
    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qE:F

    .line 441
    iget-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qF:Z

    iget v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qE:F

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    .line 442
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 3

    .line 498
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 499
    const/4 v0, 0x0

    const/16 v1, 0x8

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    .line 500
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 501
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qx:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 505
    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    .line 506
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 507
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qy:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 512
    :cond_5
    :goto_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 4

    .line 515
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 516
    const/4 v0, 0x0

    const/16 v1, 0x8

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    .line 517
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    move v0, v1

    nop

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qt:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qx:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 523
    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    .line 524
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 525
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qu:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qy:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p2}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 531
    :cond_5
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 532
    invoke-direct {p0, p1, p3}, Lcom/miui/internal/widget/ActionBarContextView;->c(II)V

    .line 534
    :cond_6
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setContentHeight(I)V

    return-void
.end method

.method public setContentInset(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qC:I

    .line 139
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6

    .line 152
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    .line 153
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_4

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    if-nez p1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 160
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    if-eqz v1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    goto :goto_1

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 169
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    .line 168
    invoke-virtual {v3, v4, v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 171
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 172
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    .line 175
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->pW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 177
    if-eqz v1, :cond_3

    .line 178
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitActionBar(Z)V

    .line 185
    :cond_5
    return-void
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->initTitle()V

    .line 221
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->qw:Z

    if-eq p1, v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContextView;->requestLayout()V

    .line 418
    :cond_0
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContextView;->qw:Z

    .line 419
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
