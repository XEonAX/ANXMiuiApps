.class Landroid/support/v7/widget/FastScroller;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/FastScroller$AnimatorUpdater;,
        Landroid/support/v7/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I

.field private final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I

.field private final mVerticalThumbWidth:I

.field private final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 76
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "verticalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "verticalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "horizontalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p5, "horizontalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "defaultWidth"    # I
    .param p7, "scrollbarMinimumRange"    # I
    .param p8, "margin"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 103
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 104
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 111
    iput-boolean v1, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 112
    iput-boolean v1, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 113
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 114
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 116
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    .line 117
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    .line 118
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 119
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 120
    new-instance v0, Landroid/support/v7/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$1;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Landroid/support/v7/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$2;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 138
    iput-object p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 139
    iput-object p3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-object p4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 141
    iput-object p5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    .line 143
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    .line 145
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 147
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 148
    iput p7, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 149
    iput p8, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/FastScroller$AnimatorListener;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/widget/FastScroller$AnimatorListener;-><init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/FastScroller$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;-><init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/FastScroller$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/FastScroller;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 157
    return-void

    .line 118
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Landroid/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/FastScroller;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/FastScroller;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/FastScroller;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/FastScroller;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/FastScroller;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private cancelHide()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 182
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 183
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 320
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 322
    .local v2, "viewHeight":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int v1, v2, v3

    .line 323
    .local v1, "top":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 324
    .local v0, "left":I
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 325
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 326
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    int-to-float v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    int-to-float v3, v0

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 331
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 295
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 297
    .local v2, "viewWidth":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int v0, v2, v3

    .line 298
    .local v0, "left":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 299
    .local v1, "top":I
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 300
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 301
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 307
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 309
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_0
    int-to-float v3, v0

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    int-to-float v3, v1

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private getHorizontalRange()[I
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    aput v2, v0, v1

    .line 546
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 547
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    aput v2, v0, v1

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v8, 0x0

    .line 464
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    .line 465
    .local v3, "scrollbarRange":[I
    aget v0, v3, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 466
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 470
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 471
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 472
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    .line 470
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v7

    .line 473
    .local v7, "scrollingBy":I
    if-eqz v7, :cond_1

    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 477
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestRedraw()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 187
    return-void
.end method

.method private resetHideDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 8
    .param p1, "oldDragPos"    # F
    .param p2, "newDragPos"    # F
    .param p3, "scrollbarRange"    # [I
    .param p4, "scrollRange"    # I
    .param p5, "scrollOffset"    # I
    .param p6, "viewLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 482
    const/4 v6, 0x1

    aget v6, p3, v6

    aget v7, p3, v5

    sub-int v2, v6, v7

    .line 483
    .local v2, "scrollbarLength":I
    if-nez v2, :cond_1

    move v3, v5

    .line 493
    :cond_0
    :goto_0
    return v3

    .line 486
    :cond_1
    sub-float v6, p2, p1

    int-to-float v7, v2

    div-float v1, v6, v7

    .line 487
    .local v1, "percentage":F
    sub-int v4, p4, p6

    .line 488
    .local v4, "totalPossibleOffset":I
    int-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 489
    .local v3, "scrollingBy":I
    add-int v0, p5, v3

    .line 490
    .local v0, "absoluteOffset":I
    if-ge v0, v4, :cond_2

    if-gez v0, :cond_0

    :cond_2
    move v3, v5

    .line 493
    goto :goto_0
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x2

    .line 190
    if-ne p1, v2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v0, v2, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 192
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 195
    :cond_0
    if-nez p1, :cond_2

    .line 196
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    .line 201
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_3

    if-eq p1, v2, :cond_3

    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 203
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    .line 207
    :cond_1
    :goto_1
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 208
    return-void

    .line 198
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    goto :goto_0

    .line 204
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 205
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_1
.end method

.method private setupCallbacks()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 176
    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 9
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getVerticalRange()[I

    move-result-object v3

    .line 450
    .local v3, "scrollbarRange":[I
    aget v0, v3, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 451
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 454
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 455
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 456
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    .line 454
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v7

    .line 457
    .local v7, "scrollingBy":I
    if-eqz v7, :cond_1

    .line 458
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 460
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->destroyCallbacks()V

    .line 166
    :cond_2
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->setupCallbacks()V

    goto :goto_0
.end method

.method hide(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 248
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 253
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 254
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 507
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 272
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 273
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    .line 285
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v0, :cond_3

    .line 286
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 288
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 384
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v3, v6, :cond_4

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v2

    .line 386
    .local v2, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v1

    .line 387
    .local v1, "insideHorizontalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 389
    :cond_0
    if-eqz v1, :cond_2

    .line 390
    iput v6, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 397
    :cond_1
    :goto_0
    invoke-direct {p0, v5}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 398
    const/4 v0, 0x1

    .line 407
    .end local v1    # "insideHorizontalThumb":Z
    .end local v2    # "insideVerticalThumb":Z
    .local v0, "handled":Z
    :goto_1
    return v0

    .line 392
    .end local v0    # "handled":Z
    .restart local v1    # "insideHorizontalThumb":Z
    .restart local v2    # "insideVerticalThumb":Z
    :cond_2
    if-eqz v2, :cond_1

    .line 393
    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_0

    .line 400
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "handled":Z
    goto :goto_1

    .line 402
    .end local v0    # "handled":Z
    .end local v1    # "insideHorizontalThumb":Z
    .end local v2    # "insideVerticalThumb":Z
    :cond_4
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v3, v5, :cond_5

    .line 403
    const/4 v0, 0x1

    .restart local v0    # "handled":Z
    goto :goto_1

    .line 405
    .end local v0    # "handled":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "handled":Z
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 446
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 412
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 417
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v1

    .line 418
    .local v1, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v0

    .line 419
    .local v0, "insideHorizontalThumb":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 420
    :cond_2
    if-eqz v0, :cond_4

    .line 421
    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 427
    :cond_3
    :goto_1
    invoke-direct {p0, v4}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 423
    :cond_4
    if-eqz v1, :cond_3

    .line 424
    iput v4, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_1

    .line 429
    .end local v0    # "insideHorizontalThumb":Z
    .end local v1    # "insideVerticalThumb":Z
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_6

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v2, v4, :cond_6

    .line 430
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 431
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 432
    invoke-direct {p0, v5}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 433
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    goto :goto_0

    .line 434
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v2, v4, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    .line 436
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne v2, v5, :cond_7

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/FastScroller;->horizontalScrollTo(F)V

    .line 439
    :cond_7
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne v2, v4, :cond_0

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/FastScroller;->verticalScrollTo(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 228
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :pswitch_2
    iput v4, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 234
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateScrollPosition(II)V
    .locals 10
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 343
    iget-object v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 344
    .local v3, "verticalContentLength":I
    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 345
    .local v4, "verticalVisibleLength":I
    sub-int v5, v3, v4

    if-lez v5, :cond_1

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v8, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v8, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 348
    iget-object v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    .line 349
    .local v0, "horizontalContentLength":I
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 350
    .local v1, "horizontalVisibleLength":I
    sub-int v5, v0, v1

    if-lez v5, :cond_2

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v8, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v8, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 353
    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v5, :cond_3

    .line 354
    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v5, :cond_0

    .line 355
    invoke-direct {p0, v7}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 379
    :cond_0
    :goto_2
    return-void

    .end local v0    # "horizontalContentLength":I
    .end local v1    # "horizontalVisibleLength":I
    :cond_1
    move v5, v7

    .line 345
    goto :goto_0

    .restart local v0    # "horizontalContentLength":I
    .restart local v1    # "horizontalVisibleLength":I
    :cond_2
    move v5, v7

    .line 350
    goto :goto_1

    .line 360
    :cond_3
    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v5, :cond_4

    .line 361
    int-to-float v5, p2

    int-to-float v7, v4

    div-float/2addr v7, v9

    add-float v2, v5, v7

    .line 362
    .local v2, "middleScreenPos":F
    int-to-float v5, v4

    mul-float/2addr v5, v2

    int-to-float v7, v3

    div-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 364
    mul-int v5, v4, v4

    div-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    .line 368
    .end local v2    # "middleScreenPos":F
    :cond_4
    iget-boolean v5, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v5, :cond_5

    .line 369
    int-to-float v5, p1

    int-to-float v7, v1

    div-float/2addr v7, v9

    add-float v2, v5, v7

    .line 370
    .restart local v2    # "middleScreenPos":F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    int-to-float v7, v0

    div-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 372
    mul-int v5, v1, v1

    div-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 376
    .end local v2    # "middleScreenPos":F
    :cond_5
    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v5, v6, :cond_0

    .line 377
    :cond_6
    invoke-direct {p0, v6}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_2
.end method
