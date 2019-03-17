.class public Lcom/miui/gallery/widget/ScrollableViewDrawer;
.super Landroid/widget/FrameLayout;
.source "ScrollableViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/ScrollableViewDrawer$ScrollViewWrapper;,
        Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;,
        Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;,
        Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;,
        Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;
    }
.end annotation


# instance fields
.field private mActionPointerId:I

.field private mAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

.field private mContentView:Landroid/view/View;

.field private mContentViewId:I

.field private mDetermineHorizontal:Z

.field private mDetermineVertical:Z

.field private mDetermineVerticalDrag:Z

.field private mDividerHeight:I

.field private mDownX:F

.field private mDownY:F

.field private mDragEnabled:Z

.field private mDrawerListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

.field private mLastMotionY:F

.field private mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPendingOpenDrawerAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

.field private mPendingOpenDrawerBeforeLaidOut:Z

.field private mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPendingOpenDrawerWithAnimation:Z

.field private mPendingTranslate:Z

.field private mScrollDivider:Landroid/graphics/drawable/Drawable;

.field private mScrollableViewId:I

.field private mScrollableViewWrapper:Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

.field private mScroller:Landroid/widget/Scroller;

.field private mState:I

.field private mTargetView:Landroid/view/View;

.field private mTargetViewId:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalRange:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    .line 104
    iput-boolean v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingTranslate:Z

    .line 111
    iput-boolean v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 112
    iput-boolean v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    .line 113
    iput-object v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 114
    iput-object v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 123
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTouchSlop:I

    .line 124
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    new-instance v1, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$1;-><init>(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 145
    sget-object v1, Lcom/miui/gallery/R$styleable;->ScrollableViewDrawer:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentViewId:I

    .line 147
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentViewId:I

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetViewId:I

    .line 152
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetViewId:I

    if-nez v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewId:I

    .line 157
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewId:I

    if-nez v1, :cond_2

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 163
    const v1, 0x7f0100ca

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDividerHeight:I

    .line 168
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDragEnabled:Z

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/ScrollableViewDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/widget/ScrollableViewDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/ScrollableViewDrawer;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/ScrollableViewDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mState:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/widget/ScrollableViewDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingTranslate:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/widget/ScrollableViewDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->onTranslationYChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/ScrollableViewDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/ScrollableViewDrawer;)Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/ScrollableViewDrawer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    return-void
.end method

.method private clearPendingOpenDrawerInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 527
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    if-eqz v0, :cond_0

    .line 528
    iput-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 529
    iput-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    .line 530
    iput-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 531
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 533
    iput-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 536
    :cond_0
    return-void
.end method

.method private computeStateChanged()V
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x1

    .line 412
    .local v0, "newState":I
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    if-nez v1, :cond_2

    .line 413
    iget-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 421
    :cond_0
    :goto_0
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mState:I

    if-eq v1, v0, :cond_3

    .line 422
    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mState:I

    .line 423
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->notifyStateChanged()V

    .line 427
    :cond_1
    :goto_1
    return-void

    .line 416
    :cond_2
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 417
    iget-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v1, :cond_0

    .line 418
    const/4 v0, 0x2

    goto :goto_0

    .line 424
    :cond_3
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->notifyStateChanged()V

    goto :goto_1
.end method

.method private getVerticalRange()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    .line 213
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    return v0
.end method

.method private internalOpenDrawer(ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .locals 6
    .param p1, "withAnimation"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    .prologue
    const/4 v1, 0x0

    .line 515
    iput-object p2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 516
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    sub-int v4, v3, v4

    const/16 v5, 0x320

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 523
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->invalidate()V

    .line 524
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 520
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    .line 521
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->onTranslationYChange()V

    goto :goto_0
.end method

.method private notifyStateChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDrawerListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDrawerListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V

    .line 434
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingTranslate:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    .line 436
    iput-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingTranslate:Z

    goto :goto_0

    .line 440
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDrawerListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V

    .line 441
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingTranslate:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    .line 443
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVerticalRange:I

    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    .line 444
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->onTranslationYChange()V

    .line 445
    iput-boolean v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingTranslate:Z

    goto :goto_0

    .line 449
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDrawerListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, p0, v1}, Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lcom/miui/gallery/widget/ScrollableViewDrawer;F)V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onTranslationYChange()V
    .locals 2

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 565
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->computeStateChanged()V

    .line 567
    :cond_0
    return-void
.end method

.method private shouldInterceptDown()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

    invoke-interface {v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 383
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    .line 386
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->onTranslationYChange()V

    .line 387
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->postInvalidateOnAnimation()V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->isDrawerOpen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;->onDrawerAnimEnd(Z)V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 218
    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-nez v8, :cond_1

    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 295
    :cond_0
    :goto_0
    return v7

    .line 222
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 294
    :cond_2
    :goto_1
    :pswitch_0
    const-string v8, "ScrollableViewDrawer"

    const-string v9, "dispatchTouchEvent:action=%s, mYOffset=%s"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v8, :cond_0

    :cond_3
    move v7, v6

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    .line 225
    iput-boolean v7, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 226
    iget-object v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 227
    iget-object v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 228
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDownX:F

    .line 229
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDownY:F

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 230
    iget-object v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    goto :goto_1

    .line 233
    :pswitch_2
    iget v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 234
    .local v3, "pointerIndex":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_4

    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    .line 239
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget v9, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDownX:F

    sub-float v4, v8, v9

    .line 240
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v9, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDownY:F

    sub-float v5, v8, v9

    .line 242
    .local v5, "y":F
    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v8, :cond_8

    .line 243
    iget v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v9

    if-ne v8, v9, :cond_9

    iget v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTouchSlop:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_9

    .line 244
    iput-boolean v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 245
    const-string v8, "ScrollableViewDrawer"

    const-string v9, "determine vertical up dragging"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5
    :goto_2
    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v8, :cond_6

    .line 252
    const-string v8, "ScrollableViewDrawer"

    const-string v9, "determine vertical drag"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 254
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_6

    .line 255
    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 259
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_6
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v8, :cond_7

    .line 260
    iput-boolean v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    .line 263
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    if-nez v8, :cond_8

    .line 264
    iput-boolean v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    .line 267
    :cond_8
    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v8, :cond_2

    .line 268
    iget-object v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 269
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 246
    :cond_9
    iget v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->shouldInterceptDown()Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 248
    const-string v8, "ScrollableViewDrawer"

    const-string v9, "determine vertical down dragging %s"

    iget-boolean v10, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 274
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 275
    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 276
    .local v2, "pointerId":I
    iget v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    if-ne v2, v8, :cond_2

    .line 277
    if-nez v3, :cond_a

    move v0, v6

    .line 278
    .local v0, "newIndex":I
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDownX:F

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDownY:F

    iput v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .end local v0    # "newIndex":I
    :cond_a
    move v0, v7

    .line 277
    goto :goto_3

    .line 285
    .end local v2    # "pointerId":I
    .end local v3    # "pointerIndex":I
    :pswitch_4
    iget-boolean v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v8, :cond_b

    .line 286
    iget-object v8, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 288
    :cond_b
    iput-boolean v7, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    .line 289
    iput-boolean v7, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    .line 290
    iput-boolean v7, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    goto/16 :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 356
    iget-object v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v5, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getPaddingLeft()I

    move-result v1

    .line 358
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getPaddingRight()I

    move-result v6

    sub-int v3, v5, v6

    .line 359
    .local v3, "right":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 360
    .local v4, "top":I
    iget v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    add-int v0, v4, v5

    .line 361
    .local v0, "bottom":I
    iget v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDividerHeight:I

    if-lez v5, :cond_0

    .line 362
    iget-object v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDividerHeight:I

    sub-int v6, v0, v6

    invoke-virtual {v5, v1, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    iget v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDividerHeight:I

    sub-int/2addr v0, v5

    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 367
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 369
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 370
    .local v2, "result":Z
    iget-object v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v5, :cond_2

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 373
    :cond_2
    return v2
.end method

.method public isDrawerOpen()Z
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 174
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentViewId:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The contentView attribute is must refer to an existing child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mOnContentViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 185
    iget v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetViewId:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The targetView attribute is must refer to an existing child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "scrollableView":Landroid/view/View;
    if-nez v0, :cond_3

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_3
    instance-of v1, v0, Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

    if-eqz v1, :cond_4

    .line 198
    check-cast v0, Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

    .end local v0    # "scrollableView":Landroid/view/View;
    iput-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

    .line 207
    :goto_0
    return-void

    .line 199
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_4
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    .line 200
    new-instance v1, Lcom/miui/gallery/widget/ScrollableViewDrawer$ScrollViewWrapper;

    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "scrollableView":Landroid/view/View;
    invoke-direct {v1, v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_0

    .line 201
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_5
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_6

    .line 202
    new-instance v1, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;

    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "scrollableView":Landroid/view/View;
    invoke-direct {v1, v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lcom/miui/gallery/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_0

    .line 204
    .restart local v0    # "scrollableView":Landroid/view/View;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    const-string v3, "ScrollableViewDrawer"

    const-string v4, "onTouchEvent:action=%s, mYOffset=%s"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 304
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 305
    iget v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 306
    .local v0, "pointerIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mActionPointerId:I

    .line 310
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 311
    .local v2, "y":F
    iget v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mLastMotionY:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    add-int v1, v3, v4

    .line 312
    .local v1, "translationY":I
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 313
    iput v1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    .line 314
    iput v2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 316
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->onTranslationYChange()V

    .line 317
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_0

    .line 321
    .end local v0    # "pointerIndex":I
    .end local v1    # "translationY":I
    .end local v2    # "y":F
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 322
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 323
    iget v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 324
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 329
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->invalidate()V

    .line 333
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    iget v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v5, v5

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->computeStateChanged()V

    goto :goto_2

    .line 336
    :pswitch_3
    iget v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 337
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    iget v5, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v5, v5

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 338
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->invalidate()V

    .line 342
    :goto_3
    iget-object v3, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 340
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->computeStateChanged()V

    goto :goto_3

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 480
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->openDrawer(ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V

    .line 481
    return-void
.end method

.method public openDrawer(ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .locals 1
    .param p1, "withAnimation"    # Z
    .param p2, "listener"    # Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->clearPendingOpenDrawerInfo()V

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->internalOpenDrawer(ZLcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;)V

    .line 512
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerBeforeLaidOut:Z

    .line 493
    iput-boolean p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerWithAnimation:Z

    .line 494
    iput-object p2, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerAnimEndListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 495
    new-instance v0, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/ScrollableViewDrawer$2;-><init>(Lcom/miui/gallery/widget/ScrollableViewDrawer;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 510
    iget-object v0, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mPendingOpenDrawerLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ScrollableViewDrawer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDragEnabled:Z

    .line 400
    return-void
.end method

.method public setDrawerListener(Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/miui/gallery/widget/ScrollableViewDrawer;->mDrawerListener:Lcom/miui/gallery/widget/ScrollableViewDrawer$DrawerListener;

    .line 408
    return-void
.end method
