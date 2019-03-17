.class Lcom/miui/gallery/widget/recyclerview/FastScroller;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;,
        Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private mAnimTranslateX:I

.field private mAnimTranslateY:I

.field private mAnimationState:I

.field private mDefaultThumbHeight:I

.field private mDefaultThumbWidth:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mHorizontalDragInitX:I

.field mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field private mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mHorizontalThumbHeight:I

.field private mHorizontalThumbWidth:I

.field mHorizontalThumbX:I

.field private mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrackHeight:I

.field private mMargin:I

.field private mNeedDispatchFakeEvent:Z

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private final mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private mScrollSlop:I

.field private mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mTouchOffset:I

.field private mVerticalDragInitY:I

.field mVerticalDragY:F

.field private final mVerticalRange:[I

.field private mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mVerticalThumbHeight:I

.field private mVerticalThumbWidth:I

.field mVerticalThumbY:I

.field private mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->PRESSED_STATE_SET:[I

    .line 92
    new-array v0, v2, [I

    sput-object v0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V
    .locals 4
    .param p1, "view"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 127
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    .line 128
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    .line 135
    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    .line 136
    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 137
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    .line 138
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    .line 140
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalRange:[I

    .line 141
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalRange:[I

    .line 146
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateY:I

    .line 147
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateX:I

    .line 149
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 150
    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    .line 151
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller$1;-><init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller$2;-><init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 552
    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 169
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorListener;-><init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;Lcom/miui/gallery/widget/recyclerview/FastScroller$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/widget/recyclerview/FastScroller$AnimatorUpdater;-><init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;Lcom/miui/gallery/widget/recyclerview/FastScroller$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    invoke-virtual {p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollSlop:I

    .line 173
    return-void

    .line 149
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/recyclerview/FastScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isLayoutRTL()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateY:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/widget/recyclerview/FastScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->requestRedraw()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/recyclerview/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/recyclerview/FastScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateX:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/widget/recyclerview/FastScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateX:I

    return p1
.end method

.method private cancelHide()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 256
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 257
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->cancelHide()V

    .line 258
    return-void
.end method

.method private dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "fakeEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 555
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getItemTouchListenerCount()I

    move-result v2

    .line 556
    .local v2, "size":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 557
    const-string v3, "FastScroller"

    const-string v4, "dispatch fake event %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 559
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getItemTouchListenerAt(I)Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-result-object v1

    .line 560
    .local v1, "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    if-eq v1, p0, :cond_0

    .line 561
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-interface {v1, v3, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    .line 558
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_1
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 424
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v3, :cond_0

    .line 443
    :goto_0
    return-void

    .line 427
    :cond_0
    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    .line 429
    .local v2, "viewHeight":I
    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    sub-int v3, v2, v3

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateY:I

    add-int v1, v3, v4

    .line 430
    .local v1, "top":I
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    .line 431
    .local v0, "left":I
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 432
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    :cond_1
    int-to-float v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 440
    :cond_2
    int-to-float v3, v0

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 441
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 442
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 386
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-nez v4, :cond_0

    .line 421
    :goto_0
    return-void

    .line 389
    :cond_0
    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    .line 391
    .local v3, "viewWidth":I
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    sub-int v0, v3, v4

    .line 392
    .local v0, "left":I
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    .line 393
    .local v1, "top":I
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    iget v6, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 394
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 395
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackWidth:I

    iget v6, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 399
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V

    .line 403
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 404
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 405
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    :cond_3
    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateX:I

    .line 408
    .local v2, "translate":I
    int-to-float v4, v2

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 410
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 412
    .end local v2    # "translate":I
    :cond_4
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimTranslateX:I

    add-int v2, v0, v4

    .line 413
    .restart local v2    # "translate":I
    int-to-float v4, v2

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 415
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    :cond_5
    int-to-float v4, v1

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    iget-object v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private ensureLayoutDirection(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 383
    :cond_0
    return-void
.end method

.method private getHorizontalRange()[I
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalRange:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mMargin:I

    aput v2, v0, v1

    .line 733
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalRange:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 734
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalRange:[I

    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalRange:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mMargin:I

    aput v2, v0, v1

    .line 724
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalRange:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 725
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalRange:[I

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 8
    .param p1, "x"    # F

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    .line 657
    .local v3, "scrollbarRange":[I
    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 658
    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 659
    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    .line 657
    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->scrollTo(FF[IIII)I

    move-result v7

    .line 660
    .local v7, "scrollingBy":I
    if-eqz v7, :cond_0

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->scrollBy(II)V

    .line 664
    :cond_0
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    .line 665
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 296
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

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
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->invalidate()V

    .line 262
    return-void
.end method

.method private resetHideDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->cancelHide()V

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
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

    .line 669
    const/4 v6, 0x1

    aget v6, p3, v6

    aget v7, p3, v5

    sub-int v2, v6, v7

    .line 670
    .local v2, "scrollbarLength":I
    if-nez v2, :cond_1

    move v3, v5

    .line 680
    :cond_0
    :goto_0
    return v3

    .line 673
    :cond_1
    sub-float v6, p2, p1

    int-to-float v7, v2

    div-float v1, v6, v7

    .line 674
    .local v1, "percentage":F
    sub-int v4, p4, p6

    .line 675
    .local v4, "totalPossibleOffset":I
    int-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 676
    .local v3, "scrollingBy":I
    add-int v0, p5, v3

    .line 677
    .local v0, "absoluteOffset":I
    if-ge v0, v4, :cond_2

    if-gez v0, :cond_0

    :cond_2
    move v3, v5

    .line 680
    goto :goto_0
.end method

.method private setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 265
    if-ne p1, v2, :cond_2

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-eq v0, v2, :cond_2

    .line 266
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/miui/gallery/widget/recyclerview/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 269
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/miui/gallery/widget/recyclerview/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->cancelHide()V

    .line 275
    :cond_2
    if-nez p1, :cond_6

    .line 276
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->requestRedraw()V

    .line 281
    :goto_0
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-ne v0, v2, :cond_7

    if-eq p1, v2, :cond_7

    .line 282
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/miui/gallery/widget/recyclerview/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 285
    :cond_3
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/miui/gallery/widget/recyclerview/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 288
    :cond_4
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->resetHideDelay(I)V

    .line 292
    :cond_5
    :goto_1
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    .line 293
    return-void

    .line 278
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->show()V

    goto :goto_0

    .line 289
    :cond_7
    if-ne p1, v3, :cond_5

    .line 290
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->resetHideDelay(I)V

    goto :goto_1
.end method

.method private setupCallbacks()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 251
    return-void
.end method

.method private updateAppearance()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbWidth:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    .line 216
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbHeight:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 220
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbWidth:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackWidth:I

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    .line 224
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbWidth:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

    .line 225
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbHeight:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 229
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbHeight:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackHeight:I

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->updateThumbPositionByScrolling(II)V

    .line 234
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->requestRedraw()V

    .line 235
    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 9
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 631
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->getVerticalRange()[I

    move-result-object v4

    .line 641
    .local v4, "scrollbarRange":[I
    aget v5, v4, v8

    aget v6, v4, v7

    sub-int v3, v5, v6

    .line 642
    .local v3, "scrollbarLength":I
    if-nez v3, :cond_0

    .line 653
    :goto_0
    return-void

    .line 645
    :cond_0
    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mTouchOffset:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    int-to-float v6, v3

    div-float v1, v5, v6

    .line 646
    .local v1, "percentage":F
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 647
    .local v0, "itemCount":I
    int-to-float v5, v0

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 648
    .local v2, "pos":I
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->invalidateItemDecorations()V

    .line 649
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->scrollToPosition(I)V

    .line 650
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragY:F

    .line 652
    const/4 v5, -0x1

    aget v6, v4, v8

    int-to-float v6, v6

    aget v7, v4, v7

    int-to-float v7, v7

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->updateThumbPositionByDragging(II)V

    goto :goto_0
.end method


# virtual methods
.method public attach()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setupCallbacks()V

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->updateThumbPositionByScrolling(II)V

    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->requestRedraw()V

    .line 241
    return-void
.end method

.method public detach()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->destroyCallbacks()V

    .line 245
    return-void
.end method

.method hide(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 333
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 338
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    .line 339
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

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

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 694
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbWidth:I

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
    .line 686
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbWidth:I

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
    .line 357
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 358
    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    .line 370
    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v0, :cond_3

    .line 371
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 373
    :cond_3
    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 507
    const/4 v1, 0x0

    .line 509
    .local v1, "handled":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 511
    .local v0, "action":I
    if-eqz v0, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 512
    :cond_0
    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    .line 513
    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    .line 519
    :cond_1
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-ne v4, v6, :cond_7

    .line 520
    if-nez v0, :cond_4

    .line 521
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v3

    .line 522
    .local v3, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    .line 523
    .local v2, "insideHorizontalThumb":Z
    if-eqz v2, :cond_3

    .line 524
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    .line 549
    .end local v2    # "insideHorizontalThumb":Z
    .end local v3    # "insideVerticalThumb":Z
    :cond_2
    :goto_0
    return v1

    .line 525
    .restart local v2    # "insideHorizontalThumb":Z
    .restart local v3    # "insideVerticalThumb":Z
    :cond_3
    if-eqz v3, :cond_2

    .line 526
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    goto :goto_0

    .line 528
    .end local v2    # "insideHorizontalThumb":Z
    .end local v3    # "insideVerticalThumb":Z
    :cond_4
    if-ne v0, v7, :cond_2

    .line 529
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    if-lez v4, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 530
    iput v6, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    .line 531
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    .line 532
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mTouchOffset:I

    .line 533
    const/4 v1, 0x1

    .line 540
    :cond_5
    :goto_1
    if-eqz v1, :cond_2

    .line 541
    iput-boolean v6, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 543
    invoke-direct {p0, v7}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    goto :goto_0

    .line 534
    :cond_6
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    if-lez v4, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 535
    iput v7, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    .line 536
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragY:F

    .line 537
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragY:F

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mTouchOffset:I

    .line 538
    const/4 v1, 0x1

    goto :goto_1

    .line 546
    :cond_7
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-ne v4, v7, :cond_2

    .line 547
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 627
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 569
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-eqz v4, :cond_2

    .line 570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 572
    .local v0, "action":I
    if-eqz v0, :cond_0

    if-eq v0, v7, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 573
    :cond_0
    iput v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    .line 574
    iput v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    .line 577
    :cond_1
    if-nez v0, :cond_5

    .line 578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v3

    .line 579
    .local v3, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    .line 580
    .local v2, "insideHorizontalThumb":Z
    if-eqz v2, :cond_4

    .line 581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    .line 618
    .end local v0    # "action":I
    .end local v2    # "insideHorizontalThumb":Z
    .end local v3    # "insideVerticalThumb":Z
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedDispatchFakeEvent:Z

    if-eqz v4, :cond_3

    .line 619
    iput-boolean v9, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedDispatchFakeEvent:Z

    .line 620
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 621
    .local v1, "fakeEvent":Landroid/view/MotionEvent;
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 622
    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->dispatchFakeEventExceptSelf(Landroid/view/MotionEvent;)V

    .line 624
    .end local v1    # "fakeEvent":Landroid/view/MotionEvent;
    :cond_3
    return-void

    .line 582
    .restart local v0    # "action":I
    .restart local v2    # "insideHorizontalThumb":Z
    .restart local v3    # "insideVerticalThumb":Z
    :cond_4
    if-eqz v3, :cond_2

    .line 583
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    goto :goto_0

    .line 585
    .end local v2    # "insideHorizontalThumb":Z
    .end local v3    # "insideVerticalThumb":Z
    :cond_5
    if-ne v0, v6, :cond_a

    .line 586
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-eq v4, v6, :cond_8

    .line 587
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    if-lez v4, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragInitX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 588
    iput v7, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    .line 589
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    .line 590
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mTouchOffset:I

    .line 597
    :cond_6
    :goto_1
    invoke-direct {p0, v6}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    goto :goto_0

    .line 591
    :cond_7
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    if-lez v4, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragInitY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 592
    iput v6, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    .line 593
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragY:F

    .line 594
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragY:F

    iget v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mTouchOffset:I

    goto :goto_1

    .line 599
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->show()V

    .line 600
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v4, v7, :cond_9

    .line 601
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->horizontalScrollTo(F)V

    .line 603
    :cond_9
    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v4, v6, :cond_2

    .line 604
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->verticalScrollTo(F)V

    goto/16 :goto_0

    .line 607
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-ne v4, v6, :cond_2

    .line 608
    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalDragY:F

    .line 609
    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalDragX:F

    .line 610
    invoke-direct {p0, v7}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    .line 611
    iput v9, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    goto/16 :goto_0
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 176
    iget-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/R$styleable;->CustomFastScroll:[I

    const v7, 0x7f0100c1

    invoke-virtual {v1, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 178
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 181
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 179
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    iput-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_1

    .line 186
    :pswitch_1
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 189
    :pswitch_2
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    iput-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_1

    .line 192
    :pswitch_3
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 195
    :pswitch_4
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbWidth:I

    goto :goto_1

    .line 198
    :pswitch_5
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDefaultThumbHeight:I

    goto :goto_1

    .line 201
    :pswitch_6
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollbarMinimumRange:I

    goto :goto_1

    .line 204
    :pswitch_7
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mMargin:I

    goto :goto_1

    .line 208
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->updateAppearance()V

    .line 211
    return-void

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 313
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    return-void

    .line 315
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 318
    :pswitch_2
    iput v4, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mAnimationState:I

    .line 319
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateThumbPositionByDragging(II)V
    .locals 3
    .param p1, "dragX"    # I
    .param p2, "dragY"    # I

    .prologue
    const/4 v2, 0x1

    .line 495
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_0

    .line 496
    iput-boolean v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 497
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    .line 499
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 500
    iput-boolean v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    .line 501
    iput p2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    .line 503
    :cond_1
    return-void
.end method

.method updateThumbPositionByScrolling(II)V
    .locals 13
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 453
    iget-object v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v8}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeVerticalScrollRange()I

    move-result v5

    .line 454
    .local v5, "verticalContentLength":I
    iget v7, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    .line 455
    .local v7, "verticalVisibleLength":I
    sub-int v8, v5, v7

    if-lez v8, :cond_1

    iget v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewHeight:I

    iget v11, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollbarMinimumRange:I

    if-lt v8, v11, :cond_1

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    .line 458
    iget-object v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v8}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    .line 459
    .local v0, "horizontalContentLength":I
    iget v2, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    .line 460
    .local v2, "horizontalVisibleLength":I
    sub-int v8, v0, v2

    if-lez v8, :cond_2

    iget v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mRecyclerViewWidth:I

    iget v11, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mScrollbarMinimumRange:I

    if-lt v8, v11, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 463
    iget-boolean v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v8, :cond_3

    .line 464
    iget v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-eqz v8, :cond_0

    .line 465
    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    .line 487
    :cond_0
    :goto_2
    return-void

    .end local v0    # "horizontalContentLength":I
    .end local v2    # "horizontalVisibleLength":I
    :cond_1
    move v8, v10

    .line 455
    goto :goto_0

    .restart local v0    # "horizontalContentLength":I
    .restart local v2    # "horizontalVisibleLength":I
    :cond_2
    move v8, v10

    .line 460
    goto :goto_1

    .line 470
    :cond_3
    iget-boolean v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v8, :cond_4

    .line 471
    int-to-float v8, p2

    mul-float/2addr v8, v12

    sub-int v11, v5, v7

    int-to-float v11, v11

    div-float v4, v8, v11

    .line 472
    .local v4, "scrollRatio":F
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->getVerticalRange()[I

    move-result-object v6

    .line 473
    .local v6, "verticalRange":[I
    aget v8, v6, v9

    aget v11, v6, v10

    sub-int v3, v8, v11

    .line 474
    .local v3, "scrollBarLength":I
    aget v8, v6, v10

    int-to-float v8, v8

    int-to-float v11, v3

    mul-float/2addr v11, v4

    add-float/2addr v8, v11

    float-to-int v8, v8

    iput v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mVerticalThumbY:I

    .line 477
    .end local v3    # "scrollBarLength":I
    .end local v4    # "scrollRatio":F
    .end local v6    # "verticalRange":[I
    :cond_4
    iget-boolean v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v8, :cond_5

    .line 478
    int-to-float v8, p1

    mul-float/2addr v8, v12

    sub-int v11, v0, v2

    int-to-float v11, v11

    div-float v4, v8, v11

    .line 479
    .restart local v4    # "scrollRatio":F
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->getHorizontalRange()[I

    move-result-object v1

    .line 480
    .local v1, "horizontalRange":[I
    aget v8, v1, v9

    aget v11, v1, v10

    sub-int v3, v8, v11

    .line 481
    .restart local v3    # "scrollBarLength":I
    aget v8, v1, v10

    int-to-float v8, v8

    int-to-float v10, v3

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mHorizontalThumbX:I

    .line 484
    .end local v1    # "horizontalRange":[I
    .end local v3    # "scrollBarLength":I
    .end local v4    # "scrollRatio":F
    :cond_5
    iget v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller;->mState:I

    if-ne v8, v9, :cond_0

    .line 485
    :cond_6
    invoke-direct {p0, v9}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setState(I)V

    goto :goto_2
.end method
