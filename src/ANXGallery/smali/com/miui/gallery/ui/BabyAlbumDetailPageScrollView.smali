.class public Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;
.super Landroid/widget/LinearLayout;
.source "BabyAlbumDetailPageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;
    }
.end annotation


# instance fields
.field private isTopHidden:Z

.field private mActionBarHeight:I

.field mActionbarMask:Landroid/graphics/Rect;

.field private mDragging:Z

.field private mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

.field private mLastY:F

.field private mMaskColor:I

.field mMaskPaint:Landroid/graphics/Paint;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTopViewHeight:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->isTopHidden:Z

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->setOrientation(I)V

    .line 45
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTouchSlop:I

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaximumVelocity:I

    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMinimumVelocity:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaskColor:I

    .line 53
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->scrollTo(II)V

    .line 237
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->invalidate()V

    .line 239
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mActionbarMask:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mActionBarHeight:I

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mActionbarMask:Landroid/graphics/Rect;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaskPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaskPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaskPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaskColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getScrollY()I

    move-result v0

    mul-int/lit16 v0, v0, 0xff

    iget v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    div-int v5, v0, v2

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    .line 123
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mActionbarMask:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getScrollY()I

    move-result v2

    iget v8, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->invalidate()V

    .line 205
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 133
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 135
    .local v2, "y":F
    packed-switch v0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 137
    :pswitch_1
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    invoke-interface {v4}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;->disappearFloatingView()Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    iput v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mLastY:F

    goto :goto_0

    .line 143
    :pswitch_2
    iget v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mLastY:F

    sub-float v1, v2, v4

    .line 144
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 145
    iput-boolean v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mDragging:Z

    .line 146
    iget-boolean v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->isTopHidden:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    .line 147
    invoke-interface {v4}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;->isScoll2Top()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->isTopHidden:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "child":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 72
    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    instance-of v8, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v8, :cond_2

    .line 77
    :cond_0
    if-nez v0, :cond_3

    .line 103
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 71
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getMeasuredHeight()I

    move-result v3

    .line 82
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-ge v8, v3, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 86
    invoke-static {p1, v8, v9}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 89
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v3, v8

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    .line 91
    iget-object v8, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    .line 92
    invoke-interface {v8}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;->getRecommendFaceButton()Landroid/view/View;

    move-result-object v6

    .line 93
    .local v6, "recommendButton":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const/4 v7, 0x0

    .line 96
    .local v7, "recommendButtonHeight":I
    :goto_2
    iget v8, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mActionBarHeight:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v3, v8

    sub-int/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 100
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 95
    .end local v1    # "childHeightMeasureSpec":I
    .end local v7    # "recommendButtonHeight":I
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 158
    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 160
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 162
    .local v3, "y":F
    packed-switch v0, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 164
    :pswitch_0
    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 167
    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 168
    iput v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mLastY:F

    goto :goto_1

    .line 171
    :pswitch_1
    iget v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mLastY:F

    sub-float v1, v3, v5

    .line 173
    .local v1, "dy":F
    iget-boolean v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mDragging:Z

    if-nez v5, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 174
    iput-boolean v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mDragging:Z

    .line 176
    :cond_2
    iget-boolean v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mDragging:Z

    if-eqz v4, :cond_0

    .line 177
    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {p0, v7, v4}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->scrollBy(II)V

    .line 178
    iput v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mLastY:F

    goto :goto_0

    .line 183
    .end local v1    # "dy":F
    :pswitch_2
    iput-boolean v7, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mDragging:Z

    .line 184
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_0

    .line 189
    :pswitch_3
    iput-boolean v7, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mDragging:Z

    .line 190
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 191
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v2, v4

    .line 192
    .local v2, "velocityY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mMinimumVelocity:I

    if-le v4, v5, :cond_3

    .line 193
    neg-int v4, v2

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->fling(I)V

    .line 195
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 209
    if-gez p2, :cond_0

    .line 210
    const/4 p2, 0x0

    .line 212
    :cond_0
    iget v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    if-le p2, v1, :cond_1

    .line 213
    iget p2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_2

    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    .line 221
    .local v0, "temp":Z
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->isTopHidden:Z

    if-eq v0, v1, :cond_3

    .line 222
    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->isTopHidden:Z

    if-nez v1, :cond_5

    .line 223
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    .line 224
    invoke-interface {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;->setNormalActionBarBackground()V

    .line 228
    :goto_1
    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->isTopHidden:Z

    .line 231
    :cond_3
    return-void

    .line 219
    .end local v0    # "temp":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    .restart local v0    # "temp":Z
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    invoke-interface {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;->setNullActionBarBackground()V

    goto :goto_1
.end method

.method public setInnerScollerMessager(Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;)V
    .locals 0
    .param p1, "messager"    # Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mInnerScollerStateChangedMessager:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;

    .line 57
    return-void
.end method

.method public setTopViewHeight(I)V
    .locals 2
    .param p1, "actionbarHeight"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mActionBarHeight:I

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->mTopViewHeight:I

    .line 64
    return-void
.end method
