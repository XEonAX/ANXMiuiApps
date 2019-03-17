.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.super Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$TranslateListener;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;,
        Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;
    }
.end annotation


# instance fields
.field private mAdjustDegree:F

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

.field private mBgBounds:Landroid/graphics/Rect;

.field private mBgPadding:Landroid/graphics/Rect;

.field private mBoundsFixCallback:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;

.field private mCanvasAnimator:Landroid/animation/ValueAnimator;

.field private mClipBounds:Landroid/graphics/Rect;

.field private mCropArea:Landroid/graphics/RectF;

.field private mCropAreaChanged:Z

.field private mCropWindow:Landroid/graphics/drawable/Drawable;

.field private mEditFinished:Ljava/lang/Runnable;

.field private mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

.field private mFirstIn:Z

.field private mGlobalMatrix:Landroid/graphics/Matrix;

.field private mGuideLineAlpha:I

.field private mGuideLineAnimator:Landroid/animation/ObjectAnimator;

.field private mGuideLineFinished:Ljava/lang/Runnable;

.field private mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

.field private mGuideLineSize:F

.field private mInitialDegree:F

.field private mInitialMatrix:Landroid/graphics/Matrix;

.field private mInvertArea:Landroid/graphics/RectF;

.field private mInvertMatrix:Landroid/graphics/Matrix;

.field private mMaskColor:I

.field private mMaskColorAlpha:I

.field private mMaskColorAnimator:Landroid/animation/ObjectAnimator;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMsgCropFinish:I

.field private mMsgGuideLineFinish:I

.field private mOffset:Landroid/graphics/PointF;

.field private mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPerformCropFinish:Landroid/animation/Animator$AnimatorListener;

.field private mRect:Landroid/graphics/RectF;

.field private mResizeDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;

.field private mResizeEdgeSlop:F

.field private mRotateDegree:I

.field private mRotateListener:Landroid/animation/Animator$AnimatorListener;

.field private mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mRotateValues:Landroid/animation/PropertyValuesHolder;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleValues:Landroid/animation/PropertyValuesHolder;

.field private mStartGuideLine:Z

.field private mTouchBounds:Landroid/graphics/RectF;

.field private mTranslateDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;

.field private mUnmodifiedMatrix:Landroid/graphics/Matrix;

.field private mWindowAnimator:Landroid/animation/ValueAnimator;

.field private mWindowUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWindowValues:Landroid/animation/PropertyValuesHolder;

.field private mXferModeClear:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;-><init>()V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mUnmodifiedMatrix:Landroid/graphics/Matrix;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgPadding:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mClipBounds:Landroid/graphics/Rect;

    .line 98
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$000()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    .line 100
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTouchBounds:Landroid/graphics/RectF;

    .line 135
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGlobalMatrix:Landroid/graphics/Matrix;

    .line 145
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOffset:Landroid/graphics/PointF;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 151
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRect:Landroid/graphics/RectF;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mXferModeClear:Landroid/graphics/PorterDuffXfermode;

    .line 186
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mStartGuideLine:Z

    .line 190
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->CROP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    .line 509
    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mFirstIn:Z

    .line 701
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$4;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEditFinished:Ljava/lang/Runnable;

    .line 729
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$5;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 744
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateListener:Landroid/animation/Animator$AnimatorListener;

    .line 766
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 822
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPerformCropFinish:Landroid/animation/Animator$AnimatorListener;

    .line 1724
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$9;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBoundsFixCallback:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;

    .line 1873
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$10;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineFinished:Ljava/lang/Runnable;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropWindow:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropWindow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColor:I

    .line 208
    const/16 v0, 0xe5

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineSize:F

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mResizeEdgeSlop:F

    .line 211
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$TranslateListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$TranslateListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector$OnTranslateListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTranslateDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;

    .line 212
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 213
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mResizeDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;

    .line 214
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGlobalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateDegree:I

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateDegree:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgCropFinish:I

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->performCropFinished()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->postCropProceed()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->postCropFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->endManualRotate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOffset:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mResizeEdgeSlop:F

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->calculateMinPixels()F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->preTransform()V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBoundsFixCallback:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animGuideLine(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mStartGuideLine:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->doMirror()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->doRotate()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animCropAreaChanged(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method private animCropAreaChanged(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;

    .prologue
    const/4 v8, 0x0

    .line 805
    new-instance v3, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 806
    .local v3, "startMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 808
    .local v1, "endMatrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 809
    .local v2, "startArea":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 811
    .local v0, "endArea":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v6

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 812
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 814
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 816
    invoke-virtual {p0, v3, v1, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupImageAnimator(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 817
    invoke-direct {p0, v2, v0, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupWindowAnimator(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 818
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v4, v5, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupAnimatorSet(Landroid/animation/Animator;Landroid/animation/Animator;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 819
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 820
    return-void
.end method

.method private animGuideLine(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v5, 0xff

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1884
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1887
    :cond_0
    if-eqz p1, :cond_3

    .line 1888
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAlpha:I

    if-ge v0, v5, :cond_1

    .line 1889
    const-string v0, "guideLineAlpha"

    new-array v1, v1, [I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAlpha:I

    aput v2, v1, v3

    aput v5, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    .line 1918
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1920
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1922
    :cond_2
    return-void

    .line 1892
    :cond_3
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAlpha:I

    if-lez v0, :cond_1

    .line 1893
    const-string v0, "guideLineAlpha"

    new-array v1, v1, [I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAlpha:I

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    .line 1894
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$11;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$11;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private animRotate(FJLcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)Landroid/animation/Animator;
    .locals 6
    .param p1, "scale"    # F
    .param p2, "duration"    # J
    .param p4, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 711
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    .line 713
    const-string v0, "rotate"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateValues:Landroid/animation/PropertyValuesHolder;

    .line 714
    const-string v0, "scale"

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleValues:Landroid/animation/PropertyValuesHolder;

    .line 715
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 716
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 720
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateValues:Landroid/animation/PropertyValuesHolder;

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 721
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleValues:Landroid/animation/PropertyValuesHolder;

    new-array v1, v3, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    aput p1, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 722
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateValues:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleValues:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 723
    if-eqz p4, :cond_1

    .line 724
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    .line 713
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 714
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 720
    :array_2
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data
.end method

.method private animTouchMaskColor(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    const/4 v1, 0x2

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 569
    :cond_0
    if-eqz p1, :cond_1

    .line 570
    const-string v0, "maskColorAlpha"

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 576
    return-void

    .line 572
    :cond_1
    const-string v0, "maskColorAlpha"

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 570
    :array_0
    .array-data 4
        0xe5
        0x7f
    .end array-data

    .line 572
    :array_1
    .array-data 4
        0x7f
        0xe5
    .end array-data
.end method

.method private calculateMinPixels()F
    .locals 3

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 1687
    .local v0, "minPixels":F
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private doMirror()V
    .locals 5

    .prologue
    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 237
    .local v0, "end":Landroid/graphics/Matrix;
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 239
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 240
    return-void
.end method

.method private doRotate()V
    .locals 5

    .prologue
    .line 390
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 391
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 392
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v0, v1, v2

    .line 393
    .local v0, "scale":F
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 394
    const-wide/16 v2, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animRotate(FJLcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 395
    return-void
.end method

.method private drawGuideLines(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->mCount:I

    if-nez v0, :cond_1

    .line 1947
    :cond_0
    return-void

    .line 1928
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1929
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1930
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1931
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1932
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1933
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iget v1, v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->mCount:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1934
    .local v7, "offsetX":F
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iget v1, v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->mCount:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 1935
    .local v8, "offsetY":F
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->mCount:I

    if-ge v6, v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v6

    mul-float/2addr v2, v8

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v4, v6

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1941
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, v6

    mul-float/2addr v1, v7

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    int-to-float v3, v6

    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1935
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private endManualRotate()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialDegree:F

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    .line 277
    return-void
.end method

.method private performCropFinished()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    .line 684
    return-void
.end method

.method private postCropFinish()V
    .locals 4

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgCropFinish:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 695
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;->onChanged()V

    .line 699
    :cond_0
    return-void
.end method

.method private postCropProceed()V
    .locals 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgCropFinish:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->removeMessages(I)V

    .line 690
    :cond_0
    return-void
.end method

.method private postGuideLineFinish()V
    .locals 4

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgGuideLineFinish:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->removeMessages(I)V

    .line 1864
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgGuideLineFinish:I

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1865
    return-void
.end method

.method private preTransform()V
    .locals 1

    .prologue
    .line 1760
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->postCropProceed()V

    .line 1761
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1764
    :cond_0
    return-void
.end method

.method private setupAnimatorSet(Landroid/animation/Animator;Landroid/animation/Animator;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V
    .locals 4
    .param p1, "image"    # Landroid/animation/Animator;
    .param p2, "window"    # Landroid/animation/Animator;
    .param p3, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 795
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 796
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPerformCropFinish:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 799
    if-eqz p3, :cond_1

    .line 800
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 802
    :cond_1
    return-void
.end method

.method private setupWindowAnimator(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/RectF;
    .param p2, "end"    # Landroid/graphics/RectF;
    .param p3, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 776
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    .line 778
    const-string/jumbo v0, "window"

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/RectFEvaluator;-><init>()V

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowValues:Landroid/animation/PropertyValuesHolder;

    .line 780
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 784
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowValues:Landroid/animation/PropertyValuesHolder;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowValues:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 787
    if-eqz p3, :cond_1

    .line 788
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    :cond_1
    return-void
.end method

.method private startGuideLine()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1868
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgGuideLineFinish:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->removeMessages(I)V

    .line 1869
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mStartGuideLine:Z

    .line 1870
    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animGuideLine(Z)V

    .line 1871
    return-void
.end method


# virtual methods
.method public beginAutoRotate()V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 257
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAdjustDegree:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialDegree:F

    .line 258
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mUnmodifiedMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    .line 259
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->CROP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    .line 260
    const/16 v0, 0xe5

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    .line 261
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->startGuideLine()V

    .line 262
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 263
    return-void
.end method

.method public beginRotate()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 245
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAdjustDegree:F

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialDegree:F

    .line 246
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    .line 247
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    .line 248
    const/16 v0, 0x7f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    .line 249
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->startGuideLine()V

    .line 250
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 251
    return-void
.end method

.method protected config(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 647
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->config(Landroid/graphics/Canvas;)V

    .line 648
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 649
    return-void
.end method

.method protected drawOverlay(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 654
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    const/16 v3, 0xe5

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mStartGuideLine:Z

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->drawGuideLines(Landroid/graphics/Canvas;)V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 658
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 659
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 660
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 661
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 657
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropWindow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 663
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropWindow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 666
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageDisplayBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 667
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageDisplayBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 668
    .local v2, "maskTop":F
    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    .line 669
    const/4 v2, 0x0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 673
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 675
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 676
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 677
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 679
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mBgBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 680
    return-void
.end method

.method public export()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;
    .locals 6

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgCropFinish:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->removeMessages(I)V

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    .line 505
    :cond_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAdjustDegree:F

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateDegree:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$CropEntry;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;F)V

    return-object v0
.end method

.method public finishRotate()V
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0xe5

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    .line 267
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 268
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->postGuideLineFinish()V

    .line 270
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 271
    return-void
.end method

.method public getCroppedSize()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSampleSize()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 488
    .local v0, "sample":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 489
    return-object v0
.end method

.method public mirror()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animCropAreaChanged(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->doMirror()V

    goto :goto_0
.end method

.method protected onMatrixChanged()V
    .locals 3

    .prologue
    .line 560
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->onMatrixChanged()V

    .line 561
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 562
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mUnmodifiedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 563
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEditFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->register(Ljava/lang/Runnable;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgCropFinish:I

    .line 514
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->register(Ljava/lang/Runnable;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgGuideLineFinish:I

    .line 515
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mFirstIn:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->reset()V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mFirstIn:Z

    .line 519
    :cond_0
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 581
    .local v0, "action":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-ne v3, v4, :cond_0

    .line 642
    :goto_0
    :pswitch_0
    return v1

    .line 585
    :cond_0
    if-nez v0, :cond_6

    .line 586
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTouchBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_5

    .line 587
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-ne v3, v4, :cond_3

    .line 605
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-eq v3, v4, :cond_2

    .line 606
    if-nez v0, :cond_7

    .line 607
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->startGuideLine()V

    .line 608
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animTouchMaskColor(Z)V

    .line 609
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;->CROP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineMode:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$GuideLine;

    .line 610
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    if-eqz v3, :cond_2

    .line 611
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    invoke-interface {v3, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;->changeRotationState(Z)V

    .line 618
    :cond_2
    :goto_2
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$12;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$obsoletes$Crop$EventState:[I

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 640
    goto :goto_0

    .line 589
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-ne v3, v4, :cond_4

    .line 590
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 592
    goto :goto_0

    .line 595
    :cond_5
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    goto :goto_1

    .line 599
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTouchBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 601
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 613
    :cond_7
    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    if-ne v0, v1, :cond_2

    .line 614
    :cond_8
    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animTouchMaskColor(Z)V

    .line 615
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->postGuideLineFinish()V

    goto :goto_2

    .line 622
    :pswitch_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 623
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTranslateDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 626
    :pswitch_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 627
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTranslateDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 630
    :pswitch_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mResizeDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 633
    :pswitch_4
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mResizeDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 634
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 635
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTranslateDetector:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/TranslateDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mUnmodifiedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mTouchBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAdjustDegree:F

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mRotateDegree:I

    .line 527
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$000()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    .line 528
    return-void
.end method

.method public rotate()V
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :cond_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$3;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animCropAreaChanged(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->doRotate()V

    goto :goto_0
.end method

.method public setFixedAspectRatio(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 398
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v9

    int-to-float v10, p1

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v9

    int-to-float v10, p2

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 401
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$000()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    goto :goto_0

    .line 403
    :cond_2
    const/4 v9, -0x1

    if-ne p1, v9, :cond_8

    const/4 v9, -0x1

    if-ne p2, v9, :cond_8

    .line 405
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 406
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 413
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 414
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->end()V

    .line 417
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 418
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->end()V

    .line 421
    :cond_5
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 422
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCanvasAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->end()V

    .line 425
    :cond_6
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 426
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->end()V

    .line 429
    :cond_7
    new-instance v9, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    int-to-float v10, p1

    int-to-float v11, p2

    invoke-direct {v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;-><init>(FF)V

    iput-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    .line 430
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v1, v9, v10

    .line 431
    .local v1, "cur":F
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAspectRatio:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    invoke-static {v10}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v10

    div-float v4, v9, v10

    .line 433
    .local v4, "dst":F
    sub-float v9, v1, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x800000

    cmpg-float v9, v9, v10

    if-lez v9, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v9

    iget v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMsgCropFinish:I

    invoke-virtual {v9, v10}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->removeMessages(I)V

    .line 439
    new-instance v0, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 442
    .local v0, "area":Landroid/graphics/RectF;
    cmpl-float v9, v1, v4

    if-lez v9, :cond_9

    .line 443
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v3, v9, v10

    .line 444
    .local v3, "deltaY":F
    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 445
    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 452
    .end local v3    # "deltaY":F
    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v10

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v0, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 453
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 455
    new-instance v7, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 456
    .local v7, "start":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 458
    .local v5, "end":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 459
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 460
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-static {v9, v10}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->resolveScale(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v6

    .line 461
    .local v6, "scale":F
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v5, v6, v6, v9, v10}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 463
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 464
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 467
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOffset:Landroid/graphics/PointF;

    invoke-static {v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->resolveTranslate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 468
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOffset:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOffset:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 470
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    .line 471
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 472
    .local v8, "startArea":Landroid/graphics/RectF;
    const/4 v9, 0x0

    invoke-direct {p0, v8, v0, v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupWindowAnimator(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 473
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v5, v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupImageAnimator(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 474
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mWindowAnimator:Landroid/animation/ValueAnimator;

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupAnimatorSet(Landroid/animation/Animator;Landroid/animation/Animator;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 475
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 407
    .end local v0    # "area":Landroid/graphics/RectF;
    .end local v1    # "cur":F
    .end local v4    # "dst":F
    .end local v5    # "end":Landroid/graphics/Matrix;
    .end local v6    # "scale":F
    .end local v7    # "start":Landroid/graphics/Matrix;
    .end local v8    # "startArea":Landroid/graphics/RectF;
    :cond_8
    const/4 v9, -0x2

    if-ne p1, v9, :cond_3

    const/4 v9, -0x2

    if-ne p2, v9, :cond_3

    .line 409
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    .line 410
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    invoke-static {v9}, Lcom/miui/gallery/util/ScreenUtils;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result p2

    goto/16 :goto_1

    .line 447
    .restart local v0    # "area":Landroid/graphics/RectF;
    .restart local v1    # "cur":F
    .restart local v4    # "dst":F
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v9, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, v9, v10

    .line 448
    .local v2, "deltaX":F
    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v2

    iput v9, v0, Landroid/graphics/RectF;->left:F

    .line 449
    iget v9, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v2

    iput v9, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2
.end method

.method public setGuideLineAlpha(I)V
    .locals 0
    .param p1, "guideLineAlpha"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 1858
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mGuideLineAlpha:I

    .line 1859
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 1860
    return-void
.end method

.method public setMaskColorAlpha(I)V
    .locals 0
    .param p1, "editMaskColorAlpha"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 173
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mMaskColorAlpha:I

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 175
    return-void
.end method

.method public setOnCropChangedListener(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;)V
    .locals 0
    .param p1, "onCropChangedListener"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mOnCropChangedListener:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    .line 194
    return-void
.end method

.method public setRotateDegree(F)V
    .locals 9
    .param p1, "degree"    # F

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 280
    iget-boolean v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v4, :cond_0

    .line 314
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->beginRotate()V

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 290
    .local v2, "imageMatrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 291
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 292
    .local v1, "image":Landroid/graphics/RectF;
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialDegree:F

    sub-float v0, p1, v4

    .line 293
    .local v0, "delta":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v0, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 294
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAdjustDegree:F

    .line 296
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 297
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 299
    const/high16 v3, 0x3f800000    # 1.0f

    .line 300
    .local v3, "scale":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 303
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 304
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v7

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 306
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_4

    .line 307
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 309
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 310
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 312
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 313
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    goto/16 :goto_0
.end method

.method public setRotateDegreeWithAnimation(F)V
    .locals 10
    .param p1, "degree"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 317
    iget-boolean v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropAreaChanged:Z

    if-eqz v5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mEventState:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->ROTATION:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-eq v5, v6, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->beginAutoRotate()V

    .line 326
    new-instance v4, Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 327
    .local v4, "startMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 329
    .local v1, "endMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 330
    .local v2, "image":Landroid/graphics/RectF;
    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInitialDegree:F

    sub-float v0, p1, v5

    .line 331
    .local v0, "delta":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v1, v0, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 332
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mAdjustDegree:F

    .line 334
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 335
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mCropArea:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 337
    const/high16 v3, 0x3f800000    # 1.0f

    .line 338
    .local v3, "scale":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_2

    .line 339
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 341
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v8

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 344
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_4

    .line 345
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 347
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 348
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v8

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 351
    :cond_5
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mInvertArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 353
    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    invoke-virtual {p0, v4, v1, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->setupImageAnimator(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/OneShotAnimateListener;)V

    .line 366
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3eb33333    # 0.35f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/compat/interpolator/PathInterpolatorCompat;->getPathInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method
