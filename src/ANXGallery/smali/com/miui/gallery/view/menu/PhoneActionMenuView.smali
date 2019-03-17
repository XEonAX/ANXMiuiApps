.class public Lcom/miui/gallery/view/menu/PhoneActionMenuView;
.super Lcom/miui/gallery/view/menu/ActionMenuView;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mAverageActionButtonWidth:I

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBackgroundView:Landroid/view/View;

.field private mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field private mExpandBackground:Landroid/graphics/drawable/Drawable;

.field private mMaxActionButtonWidth:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private mOverflowMenuView:Landroid/view/View;

.field private mOverflowMenuViewAnimator:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private mSplitActionBarOverlayHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x7f010008
        0x7f01003c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 66
    iput v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 68
    iput v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    .line 77
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/gallery/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->extractBackground()V

    .line 86
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setChildrenDrawingOrderEnabled(Z)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/view/menu/PhoneActionMenuView;Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView;
    .param p1, "x1"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/view/menu/PhoneActionMenuView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method private extractBackground()V
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 354
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_2

    .line 355
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 360
    :goto_1
    return-void

    .line 353
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 359
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

.method private getOverflowMenuViewAnimator()Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/gallery/view/menu/PhoneActionMenuView;Lcom/miui/gallery/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 5

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 186
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 188
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 6
    .param p1, "childIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v0, v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v0, v5, :cond_1

    .line 107
    :cond_0
    const/4 v1, 0x0

    .line 112
    .local v1, "filter":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    return v4

    .line 109
    .end local v1    # "filter":Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;

    .line 110
    .local v2, "lp":Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v5, :cond_3

    :cond_2
    move v1, v4

    .restart local v1    # "filter":Z
    :goto_2
    goto :goto_0

    .end local v1    # "filter":Z
    :cond_3
    move v1, v3

    goto :goto_2

    .end local v2    # "lp":Lcom/miui/gallery/view/menu/ActionMenuView$LayoutParams;
    .restart local v1    # "filter":Z
    :cond_4
    move v4, v3

    .line 112
    goto :goto_1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    const/4 v5, -0x1

    .line 375
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 376
    .local v3, "overflowIndex":I
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 378
    .local v0, "backgroundIndex":I
    if-nez p2, :cond_4

    .line 379
    if-eq v3, v5, :cond_1

    move v0, v3

    .line 407
    .end local v0    # "backgroundIndex":I
    :cond_0
    :goto_0
    return v0

    .line 381
    .restart local v0    # "backgroundIndex":I
    :cond_1
    if-ne v0, v5, :cond_0

    .line 390
    :cond_2
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_1
    if-ge v1, p1, :cond_8

    .line 391
    if-eq v1, v3, :cond_3

    if-ne v1, v0, :cond_5

    .line 390
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    .end local v1    # "childIndex":I
    :cond_4
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 385
    if-eq v3, v5, :cond_2

    if-eq v0, v5, :cond_2

    goto :goto_0

    .line 395
    .restart local v1    # "childIndex":I
    :cond_5
    move v2, v1

    .line 396
    .local v2, "drawingIndex":I
    if-ge v1, v3, :cond_6

    .line 397
    add-int/lit8 v2, v2, 0x1

    .line 399
    :cond_6
    if-ge v1, v0, :cond_7

    .line 400
    add-int/lit8 v2, v2, 0x1

    .line 402
    :cond_7
    if-ne v2, p2, :cond_3

    move v0, v1

    .line 403
    goto :goto_0

    .line 407
    .end local v2    # "drawingIndex":I
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/view/menu/ActionMenuView;->getChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCollapsedHeight()I
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public hasBackgroundView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 161
    .local v1, "state":Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;
    sget-object v2, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_1

    .line 162
    :cond_0
    const/4 v2, 0x0

    .line 172
    :goto_0
    return v2

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v0

    .line 166
    .local v0, "animator":Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    sget-object v2, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_3

    .line 167
    sget-object v2, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v2, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 168
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->hide()V

    .line 172
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 169
    :cond_3
    sget-object v2, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 26
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 268
    sub-int v6, p4, p2

    .line 269
    .local v6, "width":I
    sub-int v13, p5, p3

    .line 271
    .local v13, "height":I
    const/16 v16, 0x0

    .line 272
    .local v16, "x":I
    const/4 v5, 0x0

    .line 273
    .local v5, "top":I
    const/4 v7, 0x0

    .line 275
    .local v7, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v2

    .line 281
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v10, 0x0

    move-object/from16 v8, p0

    move v11, v5

    move v12, v6

    invoke-static/range {v8 .. v13}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v13, v2

    .line 285
    const/16 v25, 0x0

    .line 286
    .local v25, "isAverage":Z
    const/16 v20, 0x0

    .line 287
    .local v20, "actionCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v22

    .line 289
    .local v22, "count":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 291
    .local v15, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v15, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v15, v2, :cond_2

    .line 289
    :cond_1
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    if-lt v2, v3, :cond_3

    .line 295
    const/16 v25, 0x1

    .line 297
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 301
    .end local v15    # "child":Landroid/view/View;
    :cond_4
    if-eqz v25, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    mul-int v2, v2, v20

    sub-int v2, v6, v2

    shr-int/lit8 v16, v2, 0x1

    .line 307
    :goto_2
    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 309
    .restart local v15    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v15, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v15, v2, :cond_7

    .line 307
    :cond_5
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 304
    .end local v15    # "child":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    sub-int v2, v6, v2

    shr-int/lit8 v16, v2, 0x1

    goto :goto_2

    .line 312
    .restart local v15    # "child":Landroid/view/View;
    :cond_7
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 313
    .local v21, "childWidth":I
    if-eqz v25, :cond_8

    .line 314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    sub-int v2, v2, v21

    shr-int/lit8 v24, v2, 0x1

    .line 315
    .local v24, "innerX":I
    add-int v16, v16, v24

    .line 316
    add-int v18, v16, v21

    move-object/from16 v14, p0

    move/from16 v17, v5

    move/from16 v19, v7

    invoke-static/range {v14 .. v19}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 317
    sub-int v16, v16, v24

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    add-int v16, v16, v2

    .line 319
    goto :goto_4

    .line 320
    .end local v24    # "innerX":I
    :cond_8
    add-int v18, v16, v21

    move-object/from16 v14, p0

    move/from16 v17, v5

    move/from16 v19, v7

    invoke-static/range {v14 .. v19}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 321
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v16, v16, v2

    goto :goto_4

    .line 325
    .end local v15    # "child":Landroid/view/View;
    .end local v21    # "childWidth":I
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 201
    const/4 v14, 0x0

    .line 202
    .local v14, "measuredWidth":I
    const/4 v13, 0x0

    .line 205
    .local v13, "measuredHeight":I
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v10

    .line 207
    .local v10, "count":I
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v9

    .line 208
    .local v9, "actionCount":I
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 209
    add-int/lit8 v9, v9, -0x1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 212
    add-int/lit8 v9, v9, -0x1

    .line 215
    :cond_1
    if-eqz v10, :cond_2

    if-nez v9, :cond_3

    .line 216
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    .line 217
    invoke-virtual {p0, v14, v13}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 264
    :goto_0
    return-void

    .line 221
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    div-int/2addr v0, v9

    iget v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    .line 224
    iget v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 226
    .local v2, "widthSpec":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_6

    .line 227
    invoke-virtual {p0, v11}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v1, v0, :cond_5

    .line 226
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 232
    :cond_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v14, v0

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_2

    .line 236
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iput v14, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    .line 237
    iput v13, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 241
    .local v12, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getStatusBarHeight()I

    move-result v0

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 242
    iget v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 244
    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v13, v0

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v3, :cond_9

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 256
    .end local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v0

    .line 259
    :cond_8
    iget-object v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v4, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 263
    invoke-virtual {p0, v14, v13}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 251
    .restart local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v3, :cond_7

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    int-to-float v3, v13

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 259
    .end local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 331
    :goto_0
    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/gallery/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->extractBackground()V

    .line 100
    :cond_0
    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 1
    .param p1, "overflowMenuView"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p0, p1}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 127
    :cond_2
    iput-object p1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 128
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->extractBackground()V

    .line 130
    :cond_3
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 134
    .local v1, "state":Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;
    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 152
    :goto_0
    return v2

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-direct {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v0

    .line 140
    .local v0, "animator":Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v3, :cond_3

    .line 141
    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v3, p0, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 142
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->show()V

    .line 147
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setFocusable(Z)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->setFocusableInTouchMode(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView;->requestFocus()Z

    goto :goto_0

    .line 143
    :cond_3
    sget-object v3, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v3, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/miui/gallery/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    goto :goto_1
.end method
