.class public Lcom/miui/gallery/ui/PhotoPageMaskView;
.super Landroid/view/View;
.source "PhotoPageMaskView.java"


# instance fields
.field private isActionBarDividerVisible:Z

.field private isMaskVisible:Z

.field private isSplitBarDividerVisible:Z

.field private mActionBarDividerY:I

.field private mActionBarMask:Landroid/graphics/drawable/Drawable;

.field private mActionBarMaskAnim:Landroid/animation/ValueAnimator;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mHost:Lcom/miui/gallery/app/BottomMenuFragment;

.field private mSplitBarDividerY:I

.field private mSplitBarHeight:I

.field private mSplitBarMask:Landroid/graphics/drawable/Drawable;

.field private mSystemWindowInsetBottom:I

.field private mSystemWindowInsetTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/PhotoPageMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, 0x7f020222

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarHeight:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mDividerPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageMaskView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageMaskView$1;-><init>(Lcom/miui/gallery/ui/PhotoPageMaskView;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoPageMaskView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSystemWindowInsetBottom:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSystemWindowInsetBottom:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPageMaskView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSystemWindowInsetTop:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarDividerY:I

    return p1
.end method

.method static synthetic access$102(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSystemWindowInsetTop:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageMaskView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setMaskBounds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPageMaskView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->initSplitBarDividerPos()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPageMaskView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->initActionBarDividerPos()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageMaskView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getActionBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/ui/PhotoPageMaskView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarDividerY:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageMaskView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoPageMaskView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageMaskView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getSplitBarHeight()I

    move-result v0

    return v0
.end method

.method private cancelAnim()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMaskAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMaskAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMaskAnim:Landroid/animation/ValueAnimator;

    .line 152
    :cond_0
    return-void
.end method

.method private getActionBarHeight()I
    .locals 4

    .prologue
    .line 217
    const/4 v0, -0x1

    .line 218
    .local v0, "actionBarHeight":I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mHost:Lcom/miui/gallery/app/BottomMenuFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mHost:Lcom/miui/gallery/app/BottomMenuFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/app/BottomMenuFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSystemWindowInsetTop:I

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v0, v1, v2

    .line 221
    :cond_0
    return v0
.end method

.method private getMaskAnim(Z)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x2

    .line 137
    if-eqz p1, :cond_0

    .line 138
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 139
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    :goto_0
    return-object v0

    .line 141
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 142
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 138
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 141
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private getSplitBarHeight()I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mHost:Lcom/miui/gallery/app/BottomMenuFragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mHost:Lcom/miui/gallery/app/BottomMenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/app/BottomMenuFragment;->getMenuCollapsedHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarHeight:I

    .line 228
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarHeight:I

    .line 229
    :goto_0
    invoke-static {p0}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->getDefaultSplitActionBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private initActionBarDividerPos()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getActionBarHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarDividerY:I

    .line 100
    return-void
.end method

.method private initSplitBarDividerPos()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getSplitBarHeight()I

    move-result v0

    .line 116
    .local v0, "splitHeight":I
    if-lez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getSplitBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarDividerY:I

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarDividerY:I

    goto :goto_0
.end method

.method private setMaskBounds()Z
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getActionBarHeight()I

    move-result v0

    .line 156
    .local v0, "actionBarHeight":I
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getSplitBarHeight()I

    move-result v1

    .line 157
    .local v1, "splitBarHeight":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getHeight()I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 234
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isActionBarDividerVisible:Z

    if-eqz v0, :cond_0

    .line 236
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarDividerY:I

    if-eq v0, v6, :cond_0

    .line 237
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarDividerY:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarDividerY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isSplitBarDividerVisible:Z

    if-eqz v0, :cond_1

    .line 241
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarDividerY:I

    if-eq v0, v6, :cond_1

    .line 242
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarDividerY:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarDividerY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->cancelAnim()V

    .line 81
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setMaskBounds()Z

    .line 82
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->initActionBarDividerPos()V

    .line 83
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->initSplitBarDividerPos()V

    .line 84
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isMaskVisible:Z

    if-eqz v1, :cond_2

    const/16 v0, 0xff

    .line 85
    .local v0, "alpha":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->invalidate()V

    .line 92
    return-void

    .line 84
    .end local v0    # "alpha":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarDividerVisible(Z)Z
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isActionBarDividerVisible:Z

    if-ne p1, v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isActionBarDividerVisible:Z

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->initActionBarDividerPos()V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->invalidate()V

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setActionBarMaskVisible(ZZ)Z
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isMaskVisible:Z

    if-eq p1, v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->setMaskBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isMaskVisible:Z

    .line 180
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->cancelAnim()V

    .line 181
    if-eqz p2, :cond_2

    .line 182
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageMaskView;->getMaskAnim(Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMaskAnim:Landroid/animation/ValueAnimator;

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMaskAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/gallery/ui/PhotoPageMaskView$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageMaskView$2;-><init>(Lcom/miui/gallery/ui/PhotoPageMaskView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMaskAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0xff

    .line 205
    .local v0, "alpha":I
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mActionBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mSplitBarMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->invalidate()V

    goto :goto_1
.end method

.method public setHost(Lcom/miui/gallery/app/BottomMenuFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/miui/gallery/app/BottomMenuFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->mHost:Lcom/miui/gallery/app/BottomMenuFragment;

    .line 96
    return-void
.end method

.method public setSplitBarDividerVisible(Z)Z
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isSplitBarDividerVisible:Z

    if-ne p1, v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageMaskView;->isSplitBarDividerVisible:Z

    .line 128
    if-eqz p1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->initSplitBarDividerPos()V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageMaskView;->invalidate()V

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method
