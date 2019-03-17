.class public Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
.super Landroid/view/View;
.source "VideoEditorRangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;,
        Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$VideoEditorRangeSeekBarBitmapProviderWrapper;
    }
.end annotation


# static fields
.field private static final LONGPRESS_TIMEOUT:I


# instance fields
.field private autoMoveSpeed:F

.field private autoMoving:Z

.field private mAvailableAreaLeft:I

.field private mAvailableAreaOffset:F

.field private mAvailableAreaRight:I

.field private mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

.field private mDragSlop:I

.field private mDragState:I

.field private mEndRange:I

.field private mHeight:I

.field private mHideProgressAnimator:Landroid/animation/Animator;

.field private mHideProgressBarAction:Ljava/lang/Runnable;

.field private mIsShowProgress:Z

.field private mIsZooming:Z

.field private mLastTouchDownX:F

.field private mLeftRangeFloat:F

.field private mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

.field private mLockedAvailableAreaLeft:I

.field private mLockedAvailableAreaRight:I

.field private mLongPressMoveDistanceFlag:F

.field private mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

.field private mMax:I

.field private mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

.field private mProgress:I

.field private mProgressBounds:Landroid/graphics/Rect;

.field private mProgressFloat:F

.field private mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

.field private mRightRangeFloat:F

.field private mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

.field private mScaledTouchSlop:I

.field private mStartLongPressMoveDistanceDownXFlag:F

.field private mStartRange:I

.field private mStopSlide:Z

.field private mThumbOffset:I

.field private mTotal:I

.field private mTouchDownX:F

.field private mTouchMoveX:F

.field private mTouchState:I

.field private mVisibleAreaBottom:I

.field private mVisibleAreaLeft:I

.field private mVisibleAreaRight:I

.field private mVisibleAreaTop:I

.field private mWidth:I

.field private progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    .line 47
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 48
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 49
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 50
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 53
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 55
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 65
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 66
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 67
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 72
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 73
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 74
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 75
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 76
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    .line 47
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 48
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 49
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 50
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 53
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 55
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 65
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 66
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 67
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 72
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 73
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 74
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 75
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 76
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->init()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    .line 47
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 48
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 49
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 50
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 53
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 55
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 65
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 66
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 67
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 72
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 73
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 74
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 75
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 76
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->init()V

    .line 102
    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsZooming:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;FFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->scaleTo(FFZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    return v0
.end method

.method private adjustThumb()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 335
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 336
    .local v0, "leftPosition":F
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 337
    .local v4, "rightPosition":F
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 341
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    invoke-direct {p0, v5, v6, v10, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sub-float v5, v4, v0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getVisibleAreaWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 346
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 347
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v5, v5

    sub-float v3, v5, v4

    .line 348
    .local v3, "offset":F
    add-float v5, v0, v3

    sub-float/2addr v5, v9

    float-to-int v1, v5

    .line 349
    .local v1, "newLeft":I
    add-float v5, v4, v3

    sub-float/2addr v5, v9

    float-to-int v2, v5

    .line 350
    .local v2, "newRight":I
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    if-gt v2, v5, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 353
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {p0, v5, v6, v10, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0

    .line 355
    .end local v1    # "newLeft":I
    .end local v2    # "newRight":I
    .end local v3    # "offset":F
    :cond_2
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    .line 356
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v5, v5

    sub-float v3, v5, v0

    .line 357
    .restart local v3    # "offset":F
    add-float v5, v0, v3

    add-float/2addr v5, v9

    float-to-int v1, v5

    .line 358
    .restart local v1    # "newLeft":I
    add-float v5, v4, v3

    add-float/2addr v5, v9

    float-to-int v2, v5

    .line 359
    .restart local v2    # "newRight":I
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    if-gt v2, v5, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 362
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {p0, v5, v6, v10, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0

    .line 366
    .end local v1    # "newLeft":I
    .end local v2    # "newRight":I
    .end local v3    # "offset":F
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 367
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-direct {p0, v5, v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0

    .line 373
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->clearAvailableAreaOffset()V

    .line 374
    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-direct {p0, v5, v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0
.end method

.method private autoMove()V
    .locals 2

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    if-eqz v0, :cond_2

    .line 798
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 799
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 800
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 802
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 803
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 805
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    .line 806
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->invalidate()V

    .line 808
    :cond_2
    return-void
.end method

.method private canSlip()Z
    .locals 3

    .prologue
    .line 594
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearAvailableAreaOffset()V
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 381
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    .line 383
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 109
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020325

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    .line 110
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020326

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    .line 111
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02034d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    .line 112
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-direct {v6}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;-><init>()V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    .line 113
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setCLayoutDirection(I)V

    .line 114
    new-instance v6, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100105

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v6, v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    .line 115
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 116
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    invoke-virtual {v6, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v8, v6

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    .line 120
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    .line 121
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b03ae

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 122
    .local v1, "contentPaddingTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b03ac

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 123
    .local v3, "progressTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b03ab

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 124
    .local v2, "progressBottom":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b03ad

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 125
    .local v0, "contentPaddingBottom":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v6, v7, v1, v7, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setPadding(IIII)V

    .line 126
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    invoke-virtual {v6, v7, v1, v7, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setPadding(IIII)V

    .line 127
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, v7, v3, v7, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setPadding(IIII)V

    .line 128
    move v5, v1

    .line 129
    .local v5, "thumbPaddingTop":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b03b3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 130
    .local v4, "thumbPaddingBottom":I
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, v7, v5, v7, v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setPadding(IIII)V

    .line 131
    iget-object v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v6, v7, v5, v7, v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setPadding(IIII)V

    .line 132
    return-void

    .line 113
    .end local v0    # "contentPaddingBottom":I
    .end local v1    # "contentPaddingTop":I
    .end local v2    # "progressBottom":I
    .end local v3    # "progressTop":I
    .end local v4    # "thumbPaddingBottom":I
    .end local v5    # "thumbPaddingTop":I
    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V
    .locals 10
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "iSeekbarZooming"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getVisibleAreaWidth()I

    move-result v5

    .line 399
    .local v5, "visibleAreaWidth":I
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v7, v7

    int-to-float v8, v5

    mul-float/2addr v8, p1

    add-float v0, v7, v8

    .line 400
    .local v0, "leftPosition":F
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v7, v7

    int-to-float v8, v5

    mul-float/2addr v8, p2

    add-float v3, v7, v8

    .line 401
    .local v3, "rightPosition":F
    sub-float v6, v3, v0

    .line 402
    .local v6, "zoomWidth":F
    int-to-float v7, v5

    div-float v4, v7, v6

    .line 403
    .local v4, "scale":F
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v8, v8

    sub-float v8, v0, v8

    mul-float/2addr v8, v4

    sub-float v1, v7, v8

    .line 404
    .local v1, "newLeft":F
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v8, v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v4

    add-float v2, v7, v8

    .line 405
    .local v2, "newRight":F
    float-to-int v7, v1

    float-to-int v8, v2

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 406
    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_1

    :goto_0
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    :goto_1
    invoke-interface {v2, p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    .line 224
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_1

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_4

    :goto_3
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    :goto_4
    invoke-interface {v2, p0, v1, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_4
.end method

.method private onStopTrackingTouch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 227
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_3

    .line 229
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_1

    :goto_0
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    :goto_1
    invoke-interface {v2, p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    .line 234
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 229
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_1

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v3, :cond_4

    :goto_3
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    :goto_4
    invoke-interface {v2, p0, v1, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;II)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_4
.end method

.method private recoverToLockedArea()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 322
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->adjustThumb()V

    .line 330
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0
.end method

.method private scaleTo(FFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "center"    # F
    .param p3, "locked"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 416
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getAvailableWidth()I

    move-result v0

    .line 417
    .local v0, "availableAreaWidth":I
    int-to-float v4, v0

    sub-float v5, p1, v6

    mul-float v3, v4, v5

    .line 418
    .local v3, "scaleWidth":F
    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v4, v4

    mul-float v5, v3, p2

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 419
    .local v1, "newLeft":I
    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v4, v4

    sub-float v5, v6, p2

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 420
    .local v2, "newRight":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p3, v4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 422
    return-void
.end method

.method private trackTouchEvent(F)V
    .locals 9
    .param p1, "touchDownX"    # F

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 533
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLastTouchDownX:F

    .line 534
    move v2, p1

    .line 535
    .local v2, "touchLocationX":F
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 536
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 537
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    int-to-float v2, v6

    .line 545
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getAvailableWidth()I

    move-result v6

    int-to-float v0, v6

    .line 546
    .local v0, "availableAreaWidth":F
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    sub-float v3, v6, v7

    .line 547
    .local v3, "x":F
    div-float v1, v3, v0

    .line 548
    .local v1, "scale":F
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    packed-switch v6, :pswitch_data_0

    .line 569
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateRangeValue()V

    .line 570
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_9

    .line 571
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    if-lt v6, v7, :cond_1

    :cond_0
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    if-le v6, v7, :cond_2

    .line 572
    :cond_1
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    .line 573
    iput-boolean v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 581
    :cond_2
    :goto_2
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 582
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->canSlip()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    iget-object v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    const/4 v6, -0x1

    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    invoke-interface {v4, p0, v6, v7, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onProgressPreview(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V

    .line 590
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 591
    return-void

    .line 538
    .end local v0    # "availableAreaWidth":F
    .end local v1    # "scale":F
    .end local v3    # "x":F
    :cond_4
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    .line 539
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    .line 540
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    int-to-float v2, v6

    goto :goto_0

    .line 542
    :cond_5
    iput v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoveSpeed:F

    goto :goto_0

    .line 550
    .restart local v0    # "availableAreaWidth":F
    .restart local v1    # "scale":F
    .restart local v3    # "x":F
    :pswitch_0
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    cmpl-float v6, v1, v6

    if-lez v6, :cond_6

    .line 551
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    goto :goto_1

    .line 553
    :cond_6
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    goto :goto_1

    .line 557
    :pswitch_1
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    .line 558
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    goto :goto_1

    .line 560
    :cond_7
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    goto :goto_1

    .line 565
    :pswitch_2
    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    goto :goto_1

    .line 575
    :cond_8
    iput-boolean v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    goto :goto_2

    .line 579
    :cond_9
    iput-boolean v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    goto :goto_2

    .line 585
    :cond_a
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_d

    .line 586
    iget-object v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_b

    :goto_4
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_c

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    :goto_5
    invoke-interface {v7, p0, v4, v6, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V

    goto :goto_3

    :cond_b
    move v4, v5

    goto :goto_4

    :cond_c
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_5

    .line 588
    :cond_d
    iget-object v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_e

    move v4, v5

    :cond_e
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v6, :cond_f

    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    :goto_6
    invoke-interface {v7, p0, v4, v6, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;IIZ)V

    goto :goto_3

    :cond_f
    iget v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_6

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRangeValue()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 598
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 599
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 607
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 601
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 602
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0

    .line 604
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 605
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getAvailableWidth()I

    move-result v2

    .line 174
    .local v2, "availableAreaWidth":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v8, v9

    float-to-int v0, v8

    .line 175
    .local v0, "availableAreaLeft":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 176
    .local v1, "availableAreaRight":I
    const/4 v6, 0x0

    .line 177
    .local v6, "progressThumbPosition":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaTop:I

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaBottom:I

    invoke-virtual {v8, v0, v9, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 180
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 181
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v2

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 182
    .local v4, "mLeftThumbPosition":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v2

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 183
    .local v5, "mRightThumbPosition":I
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-ne v8, v11, :cond_2

    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    if-ne v8, v11, :cond_2

    .line 184
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v2

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 185
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int v3, v4, v8

    .line 186
    .local v3, "leftLimit":I
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v8}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int v7, v5, v8

    .line 187
    .local v7, "rightLimit":I
    if-gt v6, v3, :cond_1

    .line 188
    move v6, v3

    .line 192
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveProgressThumb(II)V

    .line 197
    .end local v3    # "leftLimit":I
    .end local v7    # "rightLimit":I
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v4, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveLeftThumb(II)V

    .line 198
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v5, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveRightThumb(II)V

    .line 199
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setStartRangeScale(F)V

    .line 200
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-virtual {v8, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setEndRangeScale(F)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->invalidate()V

    .line 202
    return-void

    .line 189
    .restart local v3    # "leftLimit":I
    .restart local v7    # "rightLimit":I
    :cond_1
    if-lt v6, v7, :cond_0

    .line 190
    move v6, v7

    goto :goto_0

    .line 194
    .end local v3    # "leftLimit":I
    .end local v7    # "rightLimit":I
    :cond_2
    iget v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaOffset:F

    int-to-float v9, v4

    sub-int v10, v5, v4

    int-to-float v10, v10

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int v6, v8, v9

    .line 195
    iget-object v8, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->moveTo(II)V

    goto :goto_1
.end method

.method private zoomAvailableAreaTo(IIZLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V
    .locals 9
    .param p1, "newLeft"    # I
    .param p2, "newRight"    # I
    .param p3, "locked"    # Z
    .param p4, "iSeekbarZooming"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 431
    sub-int v3, p2, p1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    if-ge v3, v4, :cond_0

    .line 432
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 433
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 434
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    const-string v3, "AvailableAreaLeft"

    new-array v4, v8, [I

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    aput v5, v4, v7

    aput p1, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 436
    .local v0, "animatorLeft":Landroid/animation/Animator;
    const-string v3, "AvailableAreaRight"

    new-array v4, v8, [I

    iget v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    aput v5, v4, v7

    aput p2, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 437
    .local v1, "animatorRight":Landroid/animation/Animator;
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 438
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 439
    iput-boolean v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsZooming:Z

    .line 440
    new-instance v3, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;

    invoke-direct {v3, p0, p4}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 462
    if-eqz p3, :cond_0

    .line 463
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    .line 464
    iput p2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    .line 467
    .end local v0    # "animatorLeft":Landroid/animation/Animator;
    .end local v1    # "animatorRight":Landroid/animation/Animator;
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailableHeight()I
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getAvailableWidth()I
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndRange()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    return v0
.end method

.method public getNearbyThumbId(IZ)I
    .locals 13
    .param p1, "x"    # I
    .param p2, "leftFirst"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v7, 0x1

    .line 481
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 482
    .local v4, "leftDistance":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 483
    .local v6, "rightDistance":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 484
    .local v5, "progressDistance":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    iget-object v12, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v12}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 485
    .local v0, "gapLeft":I
    iget-object v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v11}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v11

    iget-object v12, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v12}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getLocationX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 486
    .local v1, "gapRight":I
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-gt v0, v11, :cond_1

    move v2, v7

    .line 487
    .local v2, "isTogetherWithLeftThumb":Z
    :goto_0
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-gt v1, v11, :cond_2

    move v3, v7

    .line 488
    .local v3, "isTogetherWithRightThumb":Z
    :goto_1
    if-eqz p2, :cond_7

    .line 489
    if-eqz v2, :cond_3

    .line 490
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v11, :cond_0

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_3

    .line 529
    :cond_0
    :goto_2
    return v7

    .end local v2    # "isTogetherWithLeftThumb":Z
    .end local v3    # "isTogetherWithRightThumb":Z
    :cond_1
    move v2, v8

    .line 486
    goto :goto_0

    .restart local v2    # "isTogetherWithLeftThumb":Z
    :cond_2
    move v3, v8

    .line 487
    goto :goto_1

    .line 494
    .restart local v3    # "isTogetherWithRightThumb":Z
    :cond_3
    if-eqz v3, :cond_5

    .line 495
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v6, v11, :cond_4

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_5

    :cond_4
    move v7, v9

    .line 496
    goto :goto_2

    .line 499
    :cond_5
    iget-boolean v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_6

    move v7, v9

    .line 500
    goto :goto_2

    .line 502
    :cond_6
    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v9, :cond_0

    .line 505
    iget v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v6, v7, :cond_e

    move v7, v10

    .line 506
    goto :goto_2

    .line 509
    :cond_7
    if-eqz v3, :cond_9

    .line 510
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v6, v11, :cond_8

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_9

    :cond_8
    move v7, v10

    .line 511
    goto :goto_2

    .line 514
    :cond_9
    if-eqz v2, :cond_b

    .line 515
    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v11, :cond_a

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_b

    :cond_a
    move v7, v9

    .line 516
    goto :goto_2

    .line 519
    :cond_b
    iget-boolean v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v11, :cond_c

    iget v11, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v5, v11, :cond_c

    move v7, v9

    .line 520
    goto :goto_2

    .line 522
    :cond_c
    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-ge v6, v9, :cond_d

    move v7, v10

    .line 523
    goto :goto_2

    .line 525
    :cond_d
    iget v9, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragSlop:I

    if-lt v4, v9, :cond_0

    :cond_e
    move v7, v8

    .line 529
    goto :goto_2
.end method

.method public getStartRange()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    return v0
.end method

.method public getVisibleAreaWidth()I
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hideProgressBar()V
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->hideProgressBar(Z)V

    .line 682
    :cond_0
    return-void
.end method

.method public hideProgressBar(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 685
    if-eqz p1, :cond_0

    .line 686
    const-string v0, "ProgressBarAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$2;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 706
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 709
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setProgressBarAlpha(I)V

    goto :goto_0

    .line 686
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isTouching()Z
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZooming()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsZooming:Z

    return v0
.end method

.method public lockRangeTo(IILcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "iSeekbarZooming"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 387
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    if-gt p2, v0, :cond_0

    if-ge p1, p2, :cond_0

    sub-int v0, p2, p1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mWidth:I

    if-le v0, v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 389
    int-to-float v0, p1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v0, v1, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    int-to-float v0, p2

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-direct {p0, v0, v1, p3}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->lockFloatRangeTo(FFLcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$ISeekbarZooming;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 783
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 784
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 786
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 787
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 788
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 791
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    if-eqz v0, :cond_1

    .line 792
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMove()V

    .line 794
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const v4, 0x7fffffff

    .line 143
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 144
    if-eqz p1, :cond_2

    .line 145
    sub-int v0, p4, p2

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mWidth:I

    .line 146
    sub-int v0, p5, p3

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setSize(II)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setSize(II)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setSize(II)V

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    .line 151
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mWidth:I

    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaTop:I

    .line 153
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaBottom:I

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setDrawingArea(II)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRangeDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/DisabledRangeDrawable;->setDrawingArea(II)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setDrawingArea(II)V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightThumbDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setDrawingArea(II)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mThumbOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setDrawingArea(II)V

    .line 159
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    if-ne v0, v4, :cond_0

    .line 160
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaLeft:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 161
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    .line 163
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    if-ne v0, v4, :cond_1

    .line 164
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mVisibleAreaRight:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 165
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 170
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 854
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 855
    check-cast v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;

    .line 856
    .local v0, "savedState":Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 857
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->total:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 858
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->startRange:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 859
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->endRange:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 860
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->max:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    .line 861
    iget v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->progress:I

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 862
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$600(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 863
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$700(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 864
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$800(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    .line 865
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$900(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    .line 866
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1000(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 867
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1100(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 868
    invoke-static {v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1200(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;)F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 870
    .end local v0    # "savedState":Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setCLayoutDirection(I)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 836
    new-instance v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 837
    .local v0, "savedState":Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->total:I

    .line 838
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->startRange:I

    .line 839
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->endRange:I

    .line 840
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->max:I

    .line 841
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    iput v1, v0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->progress:I

    .line 842
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$602(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 843
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$702(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 844
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$802(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 845
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$902(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;I)I

    .line 846
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1002(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;F)F

    .line 847
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1102(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;F)F

    .line 848
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;->access$1202(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$SavedState;F)F

    .line 849
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 240
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    .line 241
    iput v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 242
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 243
    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 244
    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    .line 246
    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-direct {v1, p0, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 247
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    sget v3, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v3

    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 250
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 253
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaLeft:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLockedAvailableAreaRight:I

    if-ne v1, v4, :cond_2

    .line 254
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    if-nez v1, :cond_2

    .line 256
    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-direct {v1, p0, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$1;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 257
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    sget v4, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_2
    :goto_1
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-eq v1, v7, :cond_7

    .line 269
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    if-eqz v1, :cond_6

    .line 271
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    goto/16 :goto_0

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->cancel()V

    .line 262
    iput-object v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 264
    :cond_4
    iput v6, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressMoveDistanceFlag:F

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartLongPressMoveDistanceDownXFlag:F

    goto :goto_1

    .line 274
    :cond_5
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    goto/16 :goto_0

    .line 279
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->trackTouchEvent(F)V

    goto/16 :goto_0

    .line 282
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    .line 283
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 284
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchDownX:F

    float-to-int v4, v1

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchMoveX:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {p0, v4, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getNearbyThumbId(IZ)I

    move-result v0

    .line 285
    .local v0, "thumbId":I
    packed-switch v0, :pswitch_data_1

    .line 296
    iput v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 298
    :goto_3
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-eq v1, v7, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->onStartTrackingTouch()V

    goto/16 :goto_0

    .end local v0    # "thumbId":I
    :cond_8
    move v1, v3

    .line 284
    goto :goto_2

    .line 287
    .restart local v0    # "thumbId":I
    :pswitch_2
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    goto :goto_3

    .line 290
    :pswitch_3
    iput v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    goto :goto_3

    .line 293
    :pswitch_4
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    goto :goto_3

    .line 305
    .end local v0    # "thumbId":I
    :pswitch_5
    iput v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTouchState:I

    .line 306
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    if-eqz v1, :cond_9

    .line 307
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;->cancel()V

    .line 308
    iput-object v5, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLongPressedRunnable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$LongPressedRunnable;

    .line 310
    :cond_9
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    if-eq v1, v7, :cond_a

    .line 311
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->onStopTrackingTouch()V

    .line 312
    iput v7, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mDragState:I

    .line 313
    iput-boolean v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->autoMoving:Z

    .line 315
    :cond_a
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->recoverToLockedArea()V

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 285
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAvailableAreaLeft(I)V
    .locals 0
    .param p1, "availableAreaLeft"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaLeft:I

    .line 472
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 473
    return-void
.end method

.method public setAvailableAreaRight(I)V
    .locals 0
    .param p1, "availableAreaRight"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mAvailableAreaRight:I

    .line 477
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 478
    return-void
.end method

.method public setBitmapProvider(Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V
    .locals 2
    .param p1, "mBitmapProvider"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$VideoEditorRangeSeekBarBitmapProviderWrapper;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$VideoEditorRangeSeekBarBitmapProviderWrapper;-><init>(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setmBitmapProvider(Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable$BitmapProvider;)V

    .line 812
    return-void
.end method

.method public setEndRange(I)V
    .locals 3
    .param p1, "range"    # I

    .prologue
    .line 744
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    if-le p1, v0, :cond_0

    .line 745
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    .line 751
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 752
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    .line 756
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 757
    return-void

    .line 746
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    if-ge p1, v0, :cond_1

    .line 747
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0

    .line 749
    :cond_1
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    goto :goto_0

    .line 754
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    goto :goto_1
.end method

.method public setMax(I)V
    .locals 4
    .param p1, "max"    # I

    .prologue
    .line 639
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 640
    .local v0, "progressScale":F
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 641
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    .line 642
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_0

    .line 643
    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 647
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 648
    return-void

    .line 645
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    goto :goto_0
.end method

.method public setOnSeekBarChangeListener(Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "onSeekBarChangeListener"    # Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mOnSeekBarChangeListener:Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar$OnSeekBarChangeListener;

    .line 106
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 728
    if-gez p1, :cond_0

    .line 729
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    .line 735
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 736
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    .line 740
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 741
    return-void

    .line 730
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 731
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    goto :goto_0

    .line 733
    :cond_1
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    goto :goto_0

    .line 738
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mProgressFloat:F

    goto :goto_1
.end method

.method public setProgressBarAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->progressDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/ThumbDrawable;->setAlpha(I)V

    .line 656
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->invalidate()V

    .line 657
    return-void
.end method

.method public setStartRange(I)V
    .locals 3
    .param p1, "range"    # I

    .prologue
    .line 623
    if-gez p1, :cond_0

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    .line 630
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    .line 631
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mLeftRangeFloat:F

    .line 635
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateState()V

    .line 636
    return-void

    .line 625
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    if-le p1, v0, :cond_1

    .line 626
    iget v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mEndRange:I

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_0

    .line 628
    :cond_1
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    goto :goto_0

    .line 633
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStartRange:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mRightRangeFloat:F

    goto :goto_1
.end method

.method public setStopSlide(Z)V
    .locals 0
    .param p1, "stopSlide"    # Z

    .prologue
    .line 973
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mStopSlide:Z

    .line 974
    return-void
.end method

.method public setThumbnailAspectRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 651
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mBackgroundDrawable:Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/drawable/VideoThumbnailBackgroundDrawable;->setAspectRatio(F)V

    .line 652
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 618
    iput p1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mTotal:I

    .line 619
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->updateRangeValue()V

    .line 620
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    if-nez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressBarAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressBarAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 663
    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressBarAction:Ljava/lang/Runnable;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 668
    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mHideProgressAnimator:Landroid/animation/Animator;

    .line 670
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->mIsShowProgress:Z

    .line 671
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/rangeseekbar/VideoEditorRangeSeekBar;->setProgressBarAlpha(I)V

    .line 674
    :cond_2
    return-void
.end method
