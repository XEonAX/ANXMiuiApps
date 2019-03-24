.class public Lcom/miui/internal/view/menu/PhoneActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final oY:[I


# instance fields
.field private oZ:Landroid/view/View;

.field private pa:Landroid/view/View;

.field private pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private pd:Landroid/graphics/drawable/Drawable;

.field private pe:Landroid/graphics/drawable/Drawable;

.field private pf:I

.field private pg:I

.field private ph:Landroid/graphics/Rect;

.field private pi:I

.field private pj:I

.field private pk:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sget v1, Lcom/miui/internal/R$attr;->expandBackground:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/miui/internal/R$attr;->splitActionBarOverlayHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oY:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pj:I

    .line 70
    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    .line 79
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oY:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pe:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pd:Landroid/graphics/drawable/Drawable;

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pi:I

    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aX()V

    .line 88
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    .line 89
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setChildrenDrawingOrderEnabled(Z)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->action_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pj:I

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method private aV()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pb:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private aW()I
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 188
    if-lez v1, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private aX()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pe:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pd:Landroid/graphics/drawable/Drawable;

    .line 359
    :goto_0
    if-nez v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 361
    return-void

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 365
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pe:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 4

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    .line 113
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 115
    :cond_2
    :goto_0
    move v0, v2

    goto :goto_3

    .line 110
    :cond_3
    :goto_1
    nop

    .line 115
    :goto_2
    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    return v2
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 383
    const/4 v2, -0x1

    if-nez p2, :cond_1

    .line 384
    if-eq v0, v2, :cond_0

    .line 385
    return v0

    .line 386
    :cond_0
    if-eq v1, v2, :cond_2

    .line 387
    return v1

    .line 389
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 390
    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    .line 391
    return v1

    .line 395
    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_7

    .line 396
    if-eq v2, v0, :cond_6

    if-ne v2, v1, :cond_3

    .line 397
    goto :goto_2

    .line 400
    :cond_3
    nop

    .line 401
    if-ge v2, v0, :cond_4

    .line 402
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 404
    :cond_4
    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_5

    .line 405
    add-int/lit8 v3, v3, 0x1

    .line 407
    :cond_5
    if-ne v3, p2, :cond_6

    .line 408
    return v2

    .line 395
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getCollapsedHeight()I
    .locals 2

    .line 196
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pg:I

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pg:I

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pi:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 3

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 164
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aV()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_1

    .line 170
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 171
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->hide()V

    goto :goto_0

    .line 172
    :cond_1
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2

    .line 173
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 175
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 271
    sub-int p1, p4, p2

    .line 272
    sub-int p2, p5, p3

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 279
    iget-object p3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 280
    iget-object p3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 281
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 282
    iget-object p5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p5

    goto :goto_0

    .line 284
    :cond_0
    move p3, p4

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 288
    nop

    .line 289
    nop

    .line 290
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result p5

    .line 292
    move v0, p4

    move v1, v0

    move v6, v1

    :goto_1
    const/4 v7, 0x1

    if-ge v0, p5, :cond_4

    .line 293
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    if-ne v2, v3, :cond_1

    .line 295
    goto :goto_2

    .line 297
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    if-lt v2, v3, :cond_2

    .line 298
    nop

    .line 300
    move v6, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 292
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    :cond_4
    if-eqz v6, :cond_5

    .line 305
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    shr-int/2addr p1, v7

    goto :goto_3

    .line 307
    :cond_5
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pf:I

    sub-int/2addr p1, v0

    shr-int/2addr p1, v7

    .line 310
    :goto_3
    if-ge p4, p5, :cond_9

    .line 311
    invoke-virtual {p0, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 312
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eq v8, v0, :cond_8

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    if-ne v8, v0, :cond_6

    .line 313
    goto :goto_4

    .line 315
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 316
    if-eqz v6, :cond_7

    .line 317
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    sub-int/2addr v1, v0

    shr-int/lit8 v9, v1, 0x1

    .line 318
    add-int/2addr p1, v9

    .line 319
    add-int v4, p1, v0

    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 320
    sub-int/2addr p1, v9

    .line 321
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    add-int/2addr p1, v0

    .line 322
    goto :goto_4

    .line 323
    :cond_7
    add-int v4, p1, v0

    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 324
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 310
    :cond_8
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 328
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 204
    nop

    .line 205
    nop

    .line 208
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 212
    add-int/lit8 v1, v1, -0x1

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 215
    add-int/lit8 v1, v1, -0x1

    .line 218
    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 224
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/2addr v3, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pj:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    .line 227
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pk:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 229
    move v3, v2

    move v10, v3

    :goto_0
    if-ge v2, v0, :cond_5

    .line 230
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 231
    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eq v11, v4, :cond_4

    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    if-ne v11, v4, :cond_3

    .line 232
    goto :goto_1

    .line 235
    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v11

    move v6, v1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 236
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 237
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 229
    move v10, v4

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_5
    iput v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pf:I

    .line 240
    iput v10, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pg:I

    .line 242
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aW()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 245
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pg:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 247
    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 248
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 249
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v10, p2

    .line 252
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p2, v0, :cond_6

    .line 253
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 254
    :cond_6
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p2, v0, :cond_7

    .line 255
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    int-to-float v0, v10

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 259
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-nez p2, :cond_8

    .line 260
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ph:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, p2

    .line 262
    :cond_8
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_9

    .line 263
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pe:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pd:Landroid/graphics/drawable/Drawable;

    .line 262
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 266
    invoke-virtual {p0, p1, v10}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 267
    return-void

    .line 219
    :cond_a
    :goto_4
    iput v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pg:I

    .line 220
    invoke-virtual {p0, v2, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 221
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 339
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    .line 343
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    .line 344
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 345
    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 346
    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eq p3, p4, :cond_2

    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    if-ne p3, p4, :cond_1

    .line 347
    goto :goto_1

    .line 349
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 344
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 351
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_0
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 333
    :goto_2
    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pe:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 100
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pe:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aX()V

    .line 103
    :cond_0
    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    .line 127
    :cond_1
    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 130
    :cond_2
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    .line 131
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aX()V

    .line 133
    :cond_3
    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-nez v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 372
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 137
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->oZ:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pa:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->aV()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_1

    .line 144
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->pc:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 145
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->show()V

    goto :goto_0

    .line 146
    :cond_1
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2

    .line 147
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 150
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusable(Z)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusableInTouchMode(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->requestFocus()Z

    .line 155
    return v0

    .line 138
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
