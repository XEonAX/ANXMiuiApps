.class public Lcom/miui/gallery/widget/TwoStageDrawer;
.super Landroid/widget/RelativeLayout;
.source "TwoStageDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/TwoStageDrawer$RecyclerViewWrapper;,
        Lcom/miui/gallery/widget/TwoStageDrawer$FixedViewWrapper;,
        Lcom/miui/gallery/widget/TwoStageDrawer$ScrollViewWrapper;,
        Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;,
        Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;,
        Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;,
        Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;,
        Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;,
        Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;
    }
.end annotation


# instance fields
.field private mActionPointerId:I

.field private mAlwaysShowTargetViewDivider:Z

.field private mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

.field private mAutoClose:Z

.field private mCanScrollDown:Z

.field private mContentViewBackground:Landroid/graphics/drawable/Drawable;

.field private mDetectMode:I

.field private mDividerHeight:I

.field private mDownTranslationY:F

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mDragEnabled:Z

.field private mDrawDividerWhenContentEmpty:Z

.field private mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

.field private mInitialDrawerState:I

.field private mIsFirstLayoutChanged:Z

.field private mLastY:F

.field private mMinimumFlingVelocity:I

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPendingScroll:Z

.field private mPendingTranslate:Z

.field private mPrimaryContentHeight:I

.field private mPrimaryContentHeightChanged:Z

.field private mPrimaryContentView:Landroid/view/View;

.field private mPrimaryContentViewId:I

.field private mScrollDivider:Landroid/graphics/drawable/Drawable;

.field private mScrollableViewId:I

.field private mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mSecondaryContentHeight:I

.field private mSecondaryContentHeightChanged:Z

.field private mSecondaryContentView:Landroid/view/View;

.field private mSecondaryContentViewId:I

.field private mTargetView:Landroid/view/View;

.field private mTargetViewAncestor:Landroid/view/View;

.field private mTargetViewId:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

.field private mTriggerOn:Z

.field private mTriggerView:Landroid/view/View;

.field private mTriggerViewHeight:I

.field private mTriggerViewId:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mActionPointerId:I

    .line 161
    iput-boolean v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mIsFirstLayoutChanged:Z

    .line 162
    iput v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mInitialDrawerState:I

    .line 201
    new-instance v1, Lcom/miui/gallery/widget/TwoStageDrawer$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/widget/TwoStageDrawer$1;-><init>(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchSlop:I

    .line 178
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mMinimumFlingVelocity:I

    .line 179
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    .line 180
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    sget-object v1, Lcom/miui/gallery/R$styleable;->TwoStageDrawer:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentViewId:I

    .line 184
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentViewId:I

    .line 185
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewId:I

    .line 186
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewId:I

    .line 187
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    .line 191
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewId:I

    .line 192
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    .line 193
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDragEnabled:Z

    .line 194
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAlwaysShowTargetViewDivider:Z

    .line 195
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawDividerWhenContentEmpty:Z

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/TwoStageDrawer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/TwoStageDrawer;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/TwoStageDrawer;->getViewHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->onFirstLayoutChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/TwoStageDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrolling:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingTranslate:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/widget/TwoStageDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->adaptiveTranslate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/widget/TwoStageDrawer;)Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/widget/TwoStageDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mCanScrollDown:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mCanScrollDown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/TwoStageDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/widget/TwoStageDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeightChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/TwoStageDrawer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/TwoStageDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/widget/TwoStageDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeightChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/TwoStageDrawer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/TwoStageDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/widget/TwoStageDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/TwoStageDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mIsFirstLayoutChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/widget/TwoStageDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/TwoStageDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mIsFirstLayoutChanged:Z

    return p1
.end method

.method private adaptiveTranslate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    .line 610
    .local v0, "translationY":I
    if-eqz v0, :cond_1

    .line 611
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 613
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(II)V

    .line 622
    .end local v0    # "translationY":I
    :cond_1
    :goto_0
    return-void

    .line 615
    .restart local v0    # "translationY":I
    :cond_2
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(II)V

    goto :goto_0

    .line 617
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 618
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(II)V

    goto :goto_0
.end method

.method private computeScrollDuration(IF)I
    .locals 3
    .param p1, "distance"    # I
    .param p2, "velocity"    # F

    .prologue
    .line 753
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 755
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 756
    const/4 v0, 0x0

    .line 760
    .local v0, "ret":I
    :goto_0
    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    .line 761
    const/16 v0, 0x320

    .line 763
    :cond_0
    return v0

    .line 758
    .end local v0    # "ret":I
    :cond_1
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v2, p1

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    neg-float v0, v2

    .line 725
    .local v0, "offsetX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    neg-float v1, v2

    .line 726
    .local v1, "offsetY":F
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 727
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 728
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 729
    return-void
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "action"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;IZ)V

    .line 721
    return-void
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;IZ)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "action"    # I
    .param p4, "resetDowntime"    # Z

    .prologue
    .line 706
    if-eqz p4, :cond_0

    .line 708
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 709
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v4, p3

    .line 707
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 715
    .local v8, "fakeEvent":Landroid/view/MotionEvent;
    :goto_0
    invoke-direct {p0, p1, v8}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 716
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 717
    return-void

    .line 712
    .end local v8    # "fakeEvent":Landroid/view/MotionEvent;
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 713
    .restart local v8    # "fakeEvent":Landroid/view/MotionEvent;
    invoke-virtual {v8, p3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method

.method private drawPrimaryContentView(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 782
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    float-to-int v5, v6

    .line 783
    .local v5, "translationY":I
    if-gtz v5, :cond_0

    .line 784
    const/4 v2, 0x1

    .line 803
    :goto_0
    return v2

    .line 786
    :cond_0
    const/4 v1, 0x0

    .line 787
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getWidth()I

    move-result v3

    .line 788
    .local v3, "right":I
    const/4 v4, 0x0

    .line 789
    .local v4, "top":I
    move v0, v5

    .line 790
    .local v0, "bottom":I
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-ge v5, v6, :cond_1

    .line 791
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v6, v1, v4, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 792
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 793
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    add-int/2addr v4, v6

    .line 795
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 796
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 797
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 799
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 800
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 801
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 802
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawSecondaryContentView(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 807
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    float-to-int v5, v6

    .line 808
    .local v5, "translationY":I
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-gt v5, v6, :cond_0

    .line 809
    const/4 v2, 0x1

    .line 830
    :goto_0
    return v2

    .line 811
    :cond_0
    const/4 v1, 0x0

    .line 812
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getWidth()I

    move-result v3

    .line 813
    .local v3, "right":I
    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    .line 814
    .local v4, "top":I
    move v0, v5

    .line 815
    .local v0, "bottom":I
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-le v5, v6, :cond_1

    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    if-lez v6, :cond_1

    .line 818
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v6, v1, v4, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 819
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 820
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    add-int/2addr v4, v6

    .line 822
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 823
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 824
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 827
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 828
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 829
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawTargetViewAncestor(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 834
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 836
    .local v1, "result":Z
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    float-to-int v3, v4

    .line 837
    .local v3, "translationY":I
    iget-boolean v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAlwaysShowTargetViewDivider:Z

    if-nez v4, :cond_1

    if-gtz v3, :cond_0

    iget-boolean v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mCanScrollDown:Z

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawDividerWhenContentEmpty:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    if-nez v4, :cond_2

    .line 839
    :cond_1
    const/4 v0, 0x0

    .line 840
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getWidth()I

    move-result v2

    .line 841
    .local v2, "right":I
    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    if-lez v4, :cond_2

    .line 842
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v0, v3, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 843
    iget-object v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 846
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_2
    return v1
.end method

.method private drawTriggerView(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 850
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    float-to-int v5, v6

    .line 851
    .local v5, "translationY":I
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    .line 852
    const/4 v2, 0x1

    .line 866
    :goto_0
    return v2

    .line 854
    :cond_0
    const/4 v1, 0x0

    .line 855
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getWidth()I

    move-result v3

    .line 856
    .local v3, "right":I
    iget v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int v4, v6, v7

    .line 857
    .local v4, "top":I
    move v0, v5

    .line 858
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 859
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 860
    iget-object v6, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 862
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 863
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 864
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 865
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getTouchDownView(II)Landroid/view/View;
    .locals 10
    .param p1, "downX"    # I
    .param p2, "downY"    # I

    .prologue
    const/4 v7, 0x0

    .line 586
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 588
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v8, 0x4

    new-array v6, v8, [Landroid/view/View;

    iget-object v8, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    aput-object v9, v6, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    aput-object v9, v6, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    aput-object v9, v6, v8

    .line 589
    .local v6, "views":[Landroid/view/View;
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v5, v6, v7

    .line 590
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 591
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v2, v9

    .line 592
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v9

    float-to-int v4, v9

    .line 593
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v3, v2, v9

    .line 594
    .local v3, "right":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v0, v4, v9

    .line 595
    .local v0, "bottom":I
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 596
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 601
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "v":Landroid/view/View;
    :goto_1
    return-object v5

    .line 589
    .restart local v5    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 601
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getViewHeight(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 365
    .local v0, "height":I
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 367
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 373
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    return v0

    .line 371
    .end local v0    # "height":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private notifyDrawerStateChanged()V
    .locals 5

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    .line 1058
    .local v0, "translationY":I
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1059
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1060
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    int-to-float v2, v0

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;->onDrawerSlide(Lcom/miui/gallery/widget/TwoStageDrawer;F)V

    .line 1077
    .end local v0    # "translationY":I
    :cond_1
    :goto_0
    return-void

    .line 1062
    .restart local v0    # "translationY":I
    :cond_2
    if-nez v0, :cond_3

    .line 1063
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    invoke-interface {v1, p0}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;->onDrawerClose(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    goto :goto_0

    .line 1064
    :cond_3
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-ne v0, v1, :cond_5

    .line 1065
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    if-nez v1, :cond_4

    .line 1066
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    invoke-interface {v1, p0}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;->onDrawerOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    goto :goto_0

    .line 1068
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    invoke-interface {v1, p0}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;->onDrawerHalfOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    goto :goto_0

    .line 1070
    :cond_5
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_6

    .line 1071
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    invoke-interface {v1, p0}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;->onDrawerOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    goto :goto_0

    .line 1073
    :cond_6
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    int-to-float v2, v0

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;->onDrawerSlide(Lcom/miui/gallery/widget/TwoStageDrawer;F)V

    goto :goto_0
.end method

.method private notifyTriggerStateChanged()V
    .locals 5

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1081
    iget v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    .line 1082
    .local v0, "maxTranslationY":I
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    sub-int v1, v2, v3

    .line 1083
    .local v1, "translationY":I
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-interface {v2, p0, v3}, Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;->onTriggerSlide(Lcom/miui/gallery/widget/TwoStageDrawer;F)V

    .line 1084
    if-lt v1, v0, :cond_1

    .line 1085
    iget-boolean v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerOn:Z

    if-nez v2, :cond_0

    .line 1086
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerOn:Z

    .line 1087
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    invoke-interface {v2, p0}, Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;->onTriggerOpen(Lcom/miui/gallery/widget/TwoStageDrawer;)V

    .line 1095
    .end local v0    # "maxTranslationY":I
    .end local v1    # "translationY":I
    :cond_0
    :goto_0
    return-void

    .line 1090
    .restart local v0    # "maxTranslationY":I
    .restart local v1    # "translationY":I
    :cond_1
    iget-boolean v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerOn:Z

    if-eqz v2, :cond_0

    .line 1091
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerOn:Z

    goto :goto_0
.end method

.method private offsetTranslationAnimation(FF)V
    .locals 7
    .param p1, "deltaY"    # F
    .param p2, "velocity"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 625
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v1, v2

    .line 627
    .local v1, "translationY":I
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 628
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float v0, v2, v3

    .line 633
    .local v0, "transformTranslationY":F
    :goto_0
    add-float/2addr v0, p1

    .line 634
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownTranslationY:F

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mMinimumFlingVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 637
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    int-to-float v2, v2

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 647
    :goto_2
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    .line 648
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 653
    :goto_3
    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 654
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    .line 655
    return-void

    .line 631
    .end local v0    # "transformTranslationY":F
    :cond_0
    int-to-float v0, v1

    .restart local v0    # "transformTranslationY":F
    goto :goto_0

    .line 637
    :cond_1
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    int-to-float v2, v2

    goto :goto_1

    .line 642
    :cond_2
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    if-gtz v2, :cond_3

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    :goto_4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_2

    :cond_3
    const/high16 v2, 0x4f000000

    goto :goto_4

    .line 651
    :cond_4
    float-to-int v1, v0

    goto :goto_3
.end method

.method private onFirstLayoutChanged()V
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "translation":I
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mInitialDrawerState:I

    packed-switch v1, :pswitch_data_0

    .line 258
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 259
    return-void

    .line 247
    :pswitch_0
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int v0, v1, v2

    .line 248
    goto :goto_0

    .line 250
    :pswitch_1
    iget v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    .line 251
    goto :goto_0

    .line 253
    :pswitch_2
    const/4 v0, 0x0

    .line 254
    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startScroll(II)V
    .locals 2
    .param p1, "startY"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrolling:Z

    .line 743
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    .line 744
    return-void
.end method

.method private startScroll(IIF)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "dy"    # I
    .param p3, "velocity"    # F

    .prologue
    .line 732
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/widget/TwoStageDrawer;->computeScrollDuration(IF)I

    move-result v0

    .line 733
    .local v0, "duration":I
    if-lez v0, :cond_0

    .line 734
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(III)V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(II)V

    goto :goto_0
.end method

.method private startScroll(III)V
    .locals 6
    .param p1, "startY"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 747
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrolling:Z

    .line 749
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    .line 750
    return-void
.end method

.method private updateTranslationAnimation(I)V
    .locals 5
    .param p1, "translationY"    # I

    .prologue
    const/4 v4, 0x0

    .line 658
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 660
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 662
    .local v0, "finalTranslationY":I
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 663
    iget-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeightChanged:Z

    if-nez v1, :cond_4

    .line 664
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-ge p1, v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 678
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 679
    iget-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeightChanged:Z

    if-nez v1, :cond_7

    .line 680
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-gt p1, v1, :cond_6

    .line 681
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 694
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 695
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_a

    .line 696
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 701
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyTriggerStateChanged()V

    .line 702
    return-void

    .line 666
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 670
    :cond_4
    if-nez v0, :cond_5

    .line 671
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 673
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 683
    :cond_6
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 686
    :cond_7
    if-eqz v0, :cond_8

    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-ne v0, v1, :cond_9

    .line 687
    :cond_8
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 689
    :cond_9
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 698
    :cond_a
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method


# virtual methods
.method public closeDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 3
    .param p1, "withAnimation"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 990
    iput-object p2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .line 991
    if-eqz p1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    .line 993
    .local v0, "translationY":I
    neg-int v1, v0

    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(III)V

    .line 1000
    .end local v0    # "translationY":I
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 996
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 997
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyDrawerStateChanged()V

    .line 998
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 872
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 874
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 877
    .local v0, "translationY":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 878
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->postInvalidateOnAnimation()V

    .line 897
    .end local v0    # "translationY":I
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->isDrawerOpen()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;->onDrawerAnimEnd(Z)V

    .line 882
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .line 884
    :cond_2
    iget-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrolling:Z

    if-eqz v1, :cond_0

    .line 885
    iput-boolean v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrolling:Z

    .line 886
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyDrawerStateChanged()V

    .line 887
    iget-boolean v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingTranslate:Z

    if-eqz v1, :cond_3

    .line 888
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->adaptiveTranslate()V

    .line 889
    iput-boolean v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingTranslate:Z

    goto :goto_0

    .line 891
    :cond_3
    iput-boolean v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeightChanged:Z

    .line 892
    iput-boolean v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeightChanged:Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDragEnabled:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-eqz v11, :cond_2

    :cond_0
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-gtz v11, :cond_1

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    if-gtz v11, :cond_1

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    if-lez v11, :cond_2

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    if-nez v11, :cond_3

    .line 387
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 582
    :goto_0
    return v11

    .line 390
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 572
    :cond_4
    :goto_1
    :pswitch_0
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_24

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5

    .line 574
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 575
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-direct {p0, v11, p1}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 582
    :cond_5
    :goto_2
    const/4 v11, 0x1

    goto :goto_0

    .line 393
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 394
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mActionPointerId:I

    .line 395
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 396
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 397
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownX:F

    .line 398
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mLastY:F

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownY:F

    .line 399
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownTranslationY:F

    .line 400
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownX:F

    float-to-int v11, v11

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownY:F

    float-to-int v12, v12

    invoke-direct {p0, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->getTouchDownView(II)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownView:Landroid/view/View;

    .line 401
    const/4 v11, 0x1

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    .line 402
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    .line 403
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    goto :goto_1

    .line 406
    .end local v3    # "index":I
    :pswitch_2
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mActionPointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 407
    .local v6, "pointerIndex":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_6

    .line 408
    const/4 v6, 0x0

    .line 409
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mActionPointerId:I

    .line 412
    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 413
    .local v0, "currentX":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 414
    .local v1, "currentY":F
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownX:F

    sub-float v11, v0, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 415
    .local v9, "xDistance":F
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownY:F

    sub-float v11, v1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 416
    .local v10, "yDistance":F
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 417
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-lez v11, :cond_e

    cmpl-float v11, v9, v10

    if-lez v11, :cond_e

    .line 419
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    .line 444
    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 445
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 447
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mLastY:F

    sub-float v2, v1, v11

    .line 448
    .local v2, "deltaY":F
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v2, v11

    if-gez v11, :cond_8

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v11, v2, v11

    if-gtz v11, :cond_4

    .line 449
    :cond_8
    iget v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    .line 450
    .local v7, "touchMode":I
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_13

    .line 452
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v13, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewHeight:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-gez v11, :cond_9

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    .line 453
    invoke-interface {v11}, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;->canScrollDown()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 454
    :cond_9
    const/4 v7, 0x2

    .line 466
    :cond_a
    :goto_4
    const/4 v11, 0x1

    if-ne v7, v11, :cond_17

    .line 467
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    .line 469
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    const/4 v12, 0x1

    invoke-direct {p0, v11, p1, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 475
    :cond_b
    :goto_5
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    invoke-direct {p0, v2, v11}, Lcom/miui/gallery/widget/TwoStageDrawer;->offsetTranslationAnimation(FF)V

    .line 476
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyDrawerStateChanged()V

    .line 506
    :cond_c
    :goto_6
    iget-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    if-eqz v11, :cond_d

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    .line 507
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    .line 509
    :cond_d
    iput v7, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    .line 510
    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mLastY:F

    goto/16 :goto_1

    .line 420
    .end local v2    # "deltaY":F
    .end local v7    # "touchMode":I
    :cond_e
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-lez v11, :cond_7

    .line 422
    iget-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDragEnabled:Z

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-eqz v11, :cond_f

    .line 423
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownY:F

    sub-float v11, v1, v11

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_f

    .line 424
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    goto/16 :goto_1

    .line 429
    :cond_f
    const/4 v11, 0x2

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    .line 430
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 432
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownView:Landroid/view/View;

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-ne v11, v12, :cond_10

    .line 433
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    const/4 v12, 0x3

    invoke-direct {p0, v11, p1, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 435
    :cond_10
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownView:Landroid/view/View;

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-ne v11, v12, :cond_11

    .line 436
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    const/4 v12, 0x3

    invoke-direct {p0, v11, p1, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 438
    :cond_11
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownView:Landroid/view/View;

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-ne v11, v12, :cond_7

    .line 439
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    const/4 v12, 0x3

    invoke-direct {p0, v11, p1, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    goto/16 :goto_3

    .line 456
    .restart local v2    # "deltaY":F
    .restart local v7    # "touchMode":I
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 458
    :cond_13
    const/4 v11, 0x0

    cmpg-float v11, v2, v11

    if-gez v11, :cond_a

    .line 459
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_14

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    if-nez v11, :cond_15

    .line 460
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 462
    :cond_15
    const/4 v7, 0x2

    goto/16 :goto_4

    .line 470
    :cond_16
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownView:Landroid/view/View;

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-ne v11, v12, :cond_b

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    if-nez v11, :cond_b

    .line 473
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    const/4 v12, 0x3

    invoke-direct {p0, v11, p1, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    goto/16 :goto_5

    .line 477
    :cond_17
    const/4 v11, 0x2

    if-ne v7, v11, :cond_c

    .line 478
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_18

    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownView:Landroid/view/View;

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-eq v11, v12, :cond_1a

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    if-nez v11, :cond_1a

    .line 482
    :cond_18
    iget-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    if-eqz v11, :cond_19

    .line 483
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    .line 486
    const/4 v11, 0x0

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mLastY:F

    sub-float/2addr v12, v1

    invoke-virtual {p1, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 487
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, v11, p1, v12, v13}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;IZ)V

    .line 489
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 490
    const/4 v11, 0x0

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mLastY:F

    sub-float v12, v1, v12

    invoke-virtual {p1, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 491
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-direct {p0, v11, p1, v12, v13}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;IZ)V

    goto/16 :goto_6

    .line 494
    :cond_19
    iput v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownX:F

    .line 495
    iput v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownY:F

    .line 496
    const/4 v11, 0x1

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    .line 497
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    .line 498
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 501
    :cond_1a
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-direct {p0, v11, p1}, Lcom/miui/gallery/widget/TwoStageDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 515
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "deltaY":F
    .end local v6    # "pointerIndex":I
    .end local v7    # "touchMode":I
    .end local v9    # "xDistance":F
    .end local v10    # "yDistance":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 516
    .restart local v6    # "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 517
    .local v5, "pointerId":I
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mActionPointerId:I

    if-ne v5, v11, :cond_1b

    .line 518
    if-nez v6, :cond_1c

    const/4 v4, 0x1

    .line 519
    .local v4, "newIndex":I
    :goto_7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mActionPointerId:I

    .line 520
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownX:F

    .line 521
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDownY:F

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mLastY:F

    .line 523
    .end local v4    # "newIndex":I
    :cond_1b
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 518
    :cond_1c
    const/4 v4, 0x0

    goto :goto_7

    .line 526
    .end local v5    # "pointerId":I
    .end local v6    # "pointerIndex":I
    :pswitch_4
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    float-to-int v8, v11

    .line 527
    .local v8, "translationY":I
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 528
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 529
    iget-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAutoClose:Z

    if-eqz v11, :cond_1e

    if-eqz v8, :cond_1e

    .line 530
    neg-int v11, v8

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-direct {p0, v8, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(IIF)V

    .line 546
    :cond_1d
    :goto_8
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 547
    const/4 v11, 0x1

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    .line 548
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    .line 549
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    .line 550
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerOn:Z

    goto/16 :goto_1

    .line 531
    :cond_1e
    if-eqz v8, :cond_1d

    .line 532
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-ge v8, v11, :cond_20

    .line 533
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mMinimumFlingVelocity:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1f

    .line 534
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int/2addr v11, v8

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-direct {p0, v8, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(IIF)V

    goto :goto_8

    .line 536
    :cond_1f
    neg-int v11, v8

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-direct {p0, v8, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(IIF)V

    goto :goto_8

    .line 538
    :cond_20
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-le v8, v11, :cond_1d

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v11, v12

    if-eq v8, v11, :cond_1d

    .line 539
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mMinimumFlingVelocity:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_21

    .line 540
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v11, v12

    sub-int/2addr v11, v8

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-direct {p0, v8, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(IIF)V

    goto :goto_8

    .line 542
    :cond_21
    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int/2addr v11, v8

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-direct {p0, v8, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(IIF)V

    goto :goto_8

    .line 554
    .end local v8    # "translationY":I
    :pswitch_5
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v11

    float-to-int v8, v11

    .line 555
    .restart local v8    # "translationY":I
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 556
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 557
    if-eqz v8, :cond_23

    iget-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAutoClose:Z

    if-nez v11, :cond_22

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    if-eq v8, v11, :cond_23

    iget v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v11, v12

    if-eq v8, v11, :cond_23

    .line 559
    :cond_22
    neg-int v11, v8

    iget-object v12, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-direct {p0, v8, v11, v12}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(IIF)V

    .line 561
    :cond_23
    iget-object v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 562
    const/4 v11, 0x1

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDetectMode:I

    .line 563
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTouchMode:I

    .line 564
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPendingScroll:Z

    .line 565
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerOn:Z

    goto/16 :goto_1

    .line 579
    .end local v8    # "translationY":I
    :cond_24
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 768
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 769
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/widget/TwoStageDrawer;->drawPrimaryContentView(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 777
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-ne p2, v0, :cond_1

    .line 771
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/widget/TwoStageDrawer;->drawSecondaryContentView(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-ne p2, v0, :cond_2

    .line 773
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/widget/TwoStageDrawer;->drawTargetViewAncestor(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-ne p2, v0, :cond_3

    .line 775
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/widget/TwoStageDrawer;->drawTriggerView(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 777
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public halfCloseDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 3
    .param p1, "withAnimation"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iput-object p2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .line 1019
    if-eqz p1, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    .line 1021
    .local v0, "translationY":I
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int/2addr v1, v0

    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(III)V

    goto :goto_0

    .line 1023
    .end local v0    # "translationY":I
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1024
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 1025
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyDrawerStateChanged()V

    .line 1026
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    goto :goto_0
.end method

.method public halfOpenDrawer()V
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->halfOpenDrawer(Z)V

    .line 955
    return-void
.end method

.method public halfOpenDrawer(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 963
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 967
    if-eqz p1, :cond_2

    .line 968
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    .line 969
    .local v0, "translationY":I
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    sub-int/2addr v1, v0

    const/16 v2, 0x320

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(III)V

    goto :goto_0

    .line 971
    .end local v0    # "translationY":I
    :cond_2
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 972
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyDrawerStateChanged()V

    .line 973
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerHalfOpen()Z
    .locals 2

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1051
    .local v0, "transY":F
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen()Z
    .locals 3

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1041
    .local v0, "transY":F
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 323
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentViewId:I

    if-lez v2, :cond_1

    .line 324
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentViewId:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    .line 325
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The primaryContentView attribute is must refer to an existing child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The primaryContentView attribute is must be a direct child of TwoStageDrawer."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_1
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentViewId:I

    if-lez v2, :cond_3

    .line 333
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentViewId:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    .line 334
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The secondaryContentView attribute is must refer to an existing child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The secondaryContentView attribute is must be a direct child of TwoStageDrawer."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    :cond_3
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewId:I

    if-lez v2, :cond_4

    .line 342
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewId:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "targetView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setTargetView(Landroid/view/View;)V

    .line 346
    .end local v1    # "targetView":Landroid/view/View;
    :cond_4
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewId:I

    if-lez v2, :cond_5

    .line 347
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    iget v3, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "scrollableView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->setScrollableView(Landroid/view/View;)V

    .line 351
    .end local v0    # "scrollableView":Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewId:I

    if-lez v2, :cond_7

    .line 352
    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerViewId:I

    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    .line 353
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    if-nez v2, :cond_6

    .line 354
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The triggerView attribute is must refer to an existing child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_6
    iget-object v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_7

    .line 356
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The triggerView attribute is must be a direct child of TwoStageDrawer."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_7
    return-void
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 928
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->openDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V

    .line 929
    return-void
.end method

.method public openDrawer(ZLcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;)V
    .locals 3
    .param p1, "withAnimation"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 938
    iput-object p2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerAnimEndListener;

    .line 939
    if-eqz p1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    .line 941
    .local v0, "translationY":I
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/16 v2, 0x320

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->startScroll(III)V

    .line 948
    .end local v0    # "translationY":I
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 944
    iget v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentHeight:I

    iget v2, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentHeight:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->updateTranslationAnimation(I)V

    .line 945
    invoke-direct {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->notifyDrawerStateChanged()V

    .line 946
    invoke-virtual {p0}, Lcom/miui/gallery/widget/TwoStageDrawer;->invalidate()V

    goto :goto_0
.end method

.method public setAlwaysShowTargetViewDivider(Z)V
    .locals 0
    .param p1, "alwaysShowTargetViewDivider"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAlwaysShowTargetViewDivider:Z

    .line 263
    return-void
.end method

.method public setAutoClose(Z)V
    .locals 0
    .param p1, "autoClose"    # Z

    .prologue
    .line 1036
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mAutoClose:Z

    .line 1037
    return-void
.end method

.method public setContentViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mContentViewBackground:Landroid/graphics/drawable/Drawable;

    .line 267
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 904
    iput-boolean p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDragEnabled:Z

    .line 905
    return-void
.end method

.method public setDrawerListener(Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDrawerListener:Lcom/miui/gallery/widget/TwoStageDrawer$DrawerListener;

    .line 914
    return-void
.end method

.method public setInitialDrawerState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mInitialDrawerState:I

    .line 318
    return-void
.end method

.method public setPrimaryContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mPrimaryContentView:Landroid/view/View;

    .line 299
    return-void
.end method

.method public setScrollDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mDividerHeight:I

    goto :goto_0
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 3
    .param p1, "scrollableView"    # Landroid/view/View;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    instance-of v0, p1, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 283
    check-cast v0, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    iput-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    .line 294
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/widget/TwoStageDrawer$MyOnScrollChangeListener;-><init>(Lcom/miui/gallery/widget/TwoStageDrawer;Lcom/miui/gallery/widget/TwoStageDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 295
    return-void

    .line 284
    :cond_1
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    .line 285
    new-instance v1, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollViewWrapper;

    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lcom/miui/gallery/widget/TwoStageDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    goto :goto_0

    .line 286
    :cond_2
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_3

    .line 287
    new-instance v1, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;

    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lcom/miui/gallery/widget/TwoStageDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    goto :goto_0

    .line 288
    :cond_3
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 289
    new-instance v1, Lcom/miui/gallery/widget/TwoStageDrawer$RecyclerViewWrapper;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v0}, Lcom/miui/gallery/widget/TwoStageDrawer$RecyclerViewWrapper;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    goto :goto_0

    .line 291
    :cond_4
    const-string v0, "TwoStageDrawer"

    const-string v1, "The scrollableView is a fixed view that can\'t scroll all the time"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/miui/gallery/widget/TwoStageDrawer$FixedViewWrapper;

    invoke-direct {v0}, Lcom/miui/gallery/widget/TwoStageDrawer$FixedViewWrapper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/TwoStageDrawer$ScrollableView;

    goto :goto_0
.end method

.method public setSecondaryContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mSecondaryContentView:Landroid/view/View;

    .line 303
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetView:Landroid/view/View;

    iput-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTargetViewAncestor:Landroid/view/View;

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public setTriggerListener(Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/miui/gallery/widget/TwoStageDrawer;->mTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    .line 922
    return-void
.end method
