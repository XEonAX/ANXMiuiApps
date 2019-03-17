.class public Luk/co/senab/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Luk/co/senab/photoview/IPhotoView;
.implements Luk/co/senab/photoview/gestures/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$Transition;,
        Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;,
        Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final EXIT_SCALE_RATIO:F

.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private mAlpha:F

.field private mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

.field private mAlphaDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnim:I

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private mDownScale:F

.field private mDragDownOutThreshold:F

.field private mDragDownOutY:F

.field private mDragHandled:Z

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

.field private mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

.field private mExitScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHScrollEdge:I

.field private mHasScale:Z

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepted:Z

.field private mIsDragDownOut:Z

.field private mIsRegionDecodeEnable:Z

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLastScaleFocusX:F

.field private mLastScaleFocusY:F

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMatrixValues:[F

.field private mMaxDoubleTapScale:F

.field private mMaxPointsScale:F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOriginHeight:I

.field private mOriginWidth:I

.field private mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

.field private mRotateEnabled:Z

.field private mRotateListener:Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

.field private mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

.field private mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mSupportHd:Z

.field private mTileView:Lcom/miui/gallery/util/photoview/TileView;

.field private mTouchDownY:F

.field private mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

.field private mTransitionListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

.field private mVScrollEdge:I

.field private mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mWantEnterTime:J

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Luk/co/senab/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "zoomable"    # Z

    .prologue
    const/4 v5, 0x4

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v1, 0xc8

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 96
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->EXIT_SCALE_RATIO:F

    .line 97
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitScale:F

    .line 101
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDownScale:F

    .line 103
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 104
    const/high16 v1, 0x3fe00000    # 1.75f

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 105
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 120
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 184
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 185
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 186
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 187
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 188
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 191
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    .line 204
    iput v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    .line 206
    iput v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    .line 211
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    .line 212
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 224
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    .line 235
    const/4 v1, 0x0

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    .line 2045
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    .line 285
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 289
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 292
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    :cond_0
    invoke-static {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 297
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 304
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutThreshold:F

    goto :goto_0
.end method

.method static synthetic access$000(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Luk/co/senab/photoview/PhotoViewAttacher;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->clearAnim(I)V

    return-void
.end method

.method static synthetic access$1000(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method

.method static synthetic access$1100(Luk/co/senab/photoview/PhotoViewAttacher;FFF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->postRotate(FFF)V

    return-void
.end method

.method static synthetic access$1200(Luk/co/senab/photoview/PhotoViewAttacher;)Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateListener:Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    return-object v0
.end method

.method static synthetic access$1300(Luk/co/senab/photoview/PhotoViewAttacher;F)I
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->trimRotation(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1500(Luk/co/senab/photoview/PhotoViewAttacher;)Z
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateBaseRect(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$200(Luk/co/senab/photoview/PhotoViewAttacher;I)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->appendAnim(I)V

    return-void
.end method

.method static synthetic access$2000(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2200(Luk/co/senab/photoview/PhotoViewAttacher;FFFFF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Luk/co/senab/photoview/PhotoViewAttacher;->dispatchScaleChanged(FFFFF)V

    return-void
.end method

.method static synthetic access$300(Luk/co/senab/photoview/PhotoViewAttacher;FF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    return-void
.end method

.method static synthetic access$400(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$500(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Luk/co/senab/photoview/PhotoViewAttacher;)F
    .locals 1
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;

    .prologue
    .line 71
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    return v0
.end method

.method static synthetic access$800(Luk/co/senab/photoview/PhotoViewAttacher;F)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F

    .prologue
    .line 71
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    return-void
.end method

.method static synthetic access$900(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V
    .locals 0
    .param p0, "x0"    # Luk/co/senab/photoview/PhotoViewAttacher;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    return-void
.end method

.method private appendAnim(I)V
    .locals 1
    .param p1, "anim"    # I

    .prologue
    .line 269
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    or-int/2addr v0, p1

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    .line 270
    return-void
.end method

.method private calculateBaseRect(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;
    .locals 18
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rotation"    # I

    .prologue
    .line 1372
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 1373
    .local v7, "imageView":Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    .line 1374
    :cond_0
    const/4 v3, 0x0

    .line 1437
    :goto_0
    return-object v3

    .line 1377
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v14

    int-to-float v12, v14

    .line 1378
    .local v12, "viewWidth":F
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v14

    int-to-float v11, v14

    .line 1379
    .local v11, "viewHeight":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawableWidth(I)I

    move-result v5

    .line 1380
    .local v5, "drawableWidth":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawbleHeight(I)I

    move-result v4

    .line 1381
    .local v4, "drawableHeight":I
    const/4 v14, 0x0

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    cmpl-float v14, v11, v14

    if-eqz v14, :cond_2

    if-eqz v5, :cond_2

    if-nez v4, :cond_3

    .line 1382
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1385
    :cond_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1387
    .local v2, "baseMatrix":Landroid/graphics/Matrix;
    int-to-float v14, v5

    div-float v13, v12, v14

    .line 1388
    .local v13, "widthScale":F
    int-to-float v14, v4

    div-float v6, v11, v14

    .line 1390
    .local v6, "heightScale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_4

    .line 1391
    int-to-float v14, v5

    sub-float v14, v12, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v4

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1433
    :goto_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1434
    .local v3, "baseRect":Landroid/graphics/RectF;
    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v5

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1435
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    .line 1394
    .end local v3    # "baseRect":Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_5

    .line 1395
    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1396
    .local v10, "scale":F
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1397
    int-to-float v14, v5

    mul-float/2addr v14, v10

    sub-float v14, v12, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v4

    mul-float/2addr v15, v10

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1400
    .end local v10    # "scale":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_6

    .line 1401
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1402
    .restart local v10    # "scale":F
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1403
    int-to-float v14, v5

    mul-float/2addr v14, v10

    sub-float v14, v12, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v4

    mul-float/2addr v15, v10

    sub-float v15, v11, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1407
    .end local v10    # "scale":F
    :cond_6
    new-instance v9, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v5

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1408
    .local v9, "mTempSrc":Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v8, v14, v15, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1410
    .local v8, "mTempDst":Landroid/graphics/RectF;
    sget-object v14, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 1417
    :pswitch_0
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1412
    :pswitch_1
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 1413
    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1421
    :pswitch_2
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1425
    :pswitch_3
    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v8, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1410
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private calculateScales()V
    .locals 18

    .prologue
    .line 1452
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v13

    int-to-float v11, v13

    .line 1456
    .local v11, "viewWidth":F
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v13

    int-to-float v10, v13

    .line 1457
    .local v10, "viewHeight":F
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v13

    float-to-int v7, v13

    .line 1458
    .local v7, "rotation":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawableWidth(I)I

    move-result v4

    .line 1459
    .local v4, "drawableWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawbleHeight(I)I

    move-result v3

    .line 1460
    .local v3, "drawableHeight":I
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1463
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    .line 1464
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    .line 1466
    move-object/from16 v0, p0

    iget-object v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1467
    .local v2, "baseRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 1468
    .local v6, "rectWidth":F
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v13

    mul-float v9, v6, v13

    .line 1469
    .local v9, "scaledWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v14

    mul-float v8, v13, v14

    .line 1470
    .local v8, "scaledHeight":F
    div-float v12, v9, v11

    .line 1471
    .local v12, "widthScale":F
    div-float v5, v8, v10

    .line 1473
    .local v5, "heightScale":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Luk/co/senab/photoview/PhotoViewAttacher;->getEnlargeMode(FF)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 1505
    :cond_2
    :goto_1
    const/high16 v13, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    goto :goto_0

    .line 1475
    :pswitch_0
    cmpg-float v13, v12, v5

    if-gez v13, :cond_4

    .line 1476
    float-to-double v14, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v11, v13

    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 1477
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Luk/co/senab/photoview/PhotoViewAttacher;->getCorrectWidth(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    .line 1482
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 1483
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto :goto_1

    .line 1476
    :cond_3
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_2

    .line 1479
    :cond_4
    float-to-double v14, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v13, v10, v13

    :goto_4
    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 1480
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Luk/co/senab/photoview/PhotoViewAttacher;->getCorrectHeight(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto :goto_3

    .line 1479
    :cond_5
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_4

    .line 1487
    :pswitch_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v13, v11, v13

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 1488
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto/16 :goto_1

    .line 1492
    :pswitch_2
    float-to-double v14, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_6

    .line 1494
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v13, v10, v13

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    .line 1499
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    goto/16 :goto_1

    .line 1496
    :cond_6
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    goto :goto_5

    .line 1473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 1125
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 1131
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 1134
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 1137
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1143
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Luk/co/senab/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 1144
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1149
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 12

    .prologue
    .line 1152
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptCheckBounds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1153
    const/4 v8, 0x1

    .line 1218
    :goto_0
    return v8

    .line 1155
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 1156
    .local v3, "imageView":Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 1157
    const/4 v8, 0x0

    goto :goto_0

    .line 1160
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-direct {p0, v8}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 1161
    .local v4, "rect":Landroid/graphics/RectF;
    if-nez v4, :cond_2

    .line 1162
    const/4 v8, 0x0

    goto :goto_0

    .line 1165
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 1166
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 1168
    .local v1, "deltaY":F
    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 1169
    .local v5, "viewHeight":I
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    .line 1170
    sget-object v8, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1178
    int-to-float v8, v5

    sub-float/2addr v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 1181
    :goto_1
    const/4 v8, 0x5

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    .line 1192
    :goto_2
    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 1193
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_6

    .line 1194
    sget-object v8, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 1202
    int-to-float v8, v6

    sub-float/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 1205
    :goto_3
    const/4 v8, 0x4

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    .line 1217
    :goto_4
    invoke-direct {p0, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    .line 1218
    const/4 v8, 0x1

    goto :goto_0

    .line 1172
    .end local v6    # "viewWidth":I
    :pswitch_0
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 1173
    goto :goto_1

    .line 1175
    :pswitch_1
    int-to-float v8, v5

    sub-float/2addr v8, v2

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 1176
    goto :goto_1

    .line 1182
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    .line 1183
    const/4 v8, 0x2

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    .line 1184
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_2

    .line 1185
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_5

    .line 1186
    int-to-float v8, v5

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    .line 1187
    const/4 v8, 0x3

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    goto :goto_2

    .line 1189
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    goto :goto_2

    .line 1196
    .restart local v6    # "viewWidth":I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 1197
    goto :goto_3

    .line 1199
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 1200
    goto :goto_3

    .line 1206
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_7

    .line 1207
    const/4 v8, 0x0

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    .line 1208
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_4

    .line 1209
    :cond_7
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, v6

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_8

    .line 1210
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    .line 1211
    const/4 v8, 0x1

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    goto :goto_4

    .line 1213
    :cond_8
    const/4 v8, -0x1

    iput v8, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    goto :goto_4

    .line 1170
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1194
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 126
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    return-void
.end method

.method private clearAnim(I)V
    .locals 2
    .param p1, "anim"    # I

    .prologue
    .line 273
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAnim:I

    .line 278
    return-void
.end method

.method private dispatchScaleChanged(FFFFF)V
    .locals 6
    .param p1, "scaleFactorX"    # F
    .param p2, "scaleFactorY"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "scale"    # F

    .prologue
    .line 894
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;->onScaleChange(FFFFF)V

    .line 897
    :cond_0
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 1776
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1777
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1778
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1779
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1780
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1782
    :cond_0
    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1808
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    if-lez v1, :cond_0

    .line 1809
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1810
    .local v0, "rectF":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 1811
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    int-to-float v1, v1

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1812
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1815
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private ensureRotateDetector()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    .line 743
    :cond_0
    return-void
.end method

.method private ensureScaleDragDetector()V
    .locals 2

    .prologue
    .line 705
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 707
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Luk/co/senab/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Luk/co/senab/photoview/gestures/OnGestureListener;)Luk/co/senab/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    .line 712
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private ensureStrokePaint()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    .line 245
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    :cond_0
    return-void
.end method

.method private ensureTapDetector()V
    .locals 4

    .prologue
    .line 715
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    .line 716
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 717
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 718
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Luk/co/senab/photoview/PhotoViewAttacher$1;

    invoke-direct {v3, p0}, Luk/co/senab/photoview/PhotoViewAttacher$1;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 734
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Luk/co/senab/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v2, p0}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 737
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private getCorrectHeight(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1447
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1448
    .local v0, "baseRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getCorrectWidth(II)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1442
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1443
    .local v0, "baseRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 1228
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1231
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1232
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1233
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1234
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1235
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1234
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1236
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1237
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 1240
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDrawableWidth(I)I
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 1346
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1347
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return v2

    .line 1350
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1351
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1354
    if-lez p1, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 1355
    :goto_1
    div-int/lit8 v2, p1, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0

    .line 1354
    :cond_2
    add-int/lit8 p1, p1, -0x2d

    goto :goto_1

    .line 1355
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0
.end method

.method private getDrawbleHeight(I)I
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 1359
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1360
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v2

    .line 1363
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1364
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1367
    if-lez p1, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 1368
    :goto_1
    div-int/lit8 v2, p1, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    .line 1367
    :cond_2
    add-int/lit8 p1, p1, -0x2d

    goto :goto_1

    .line 1368
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0
.end method

.method private getEnlargeMode(FF)I
    .locals 2
    .param p1, "rectWidth"    # F
    .param p2, "viewWidth"    # F

    .prologue
    .line 1510
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSupportHd:Z

    if-eqz v0, :cond_0

    .line 1511
    const/4 v0, 0x0

    .line 1516
    :goto_0
    return v0

    .line 1513
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1514
    const/4 v0, 0x1

    goto :goto_0

    .line 1516
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1526
    if-nez p1, :cond_0

    .line 1527
    const/4 v0, 0x0

    .line 1528
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1520
    if-nez p1, :cond_0

    .line 1521
    const/4 v0, 0x0

    .line 1522
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxPointsScale()F
    .locals 2

    .prologue
    .line 516
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxPointsScale:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    goto :goto_0
.end method

.method private getMaxPointsScalingScale()F
    .locals 2

    .prologue
    .line 520
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;
    .locals 3

    .prologue
    .line 2054
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    if-nez v1, :cond_0

    .line 2055
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2056
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2057
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    .line 2060
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransition:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    return-object v1
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 1270
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1271
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptCheckBounds()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptDrag()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptDrawTiles()Z
    .locals 2

    .prologue
    .line 687
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->isViewAnimationRunning()Z

    move-result v0

    .line 688
    .local v0, "animing":Z
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private interceptMotionEnd()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interceptTouch()Z
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isAutoRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    .line 150
    :cond_0
    sget-object v0, Luk/co/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isViewAnimationRunning()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 693
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 695
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 697
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    return v2
.end method

.method private needDrawTile()Z
    .locals 18

    .prologue
    .line 2170
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptDrawTiles()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2171
    const/4 v11, 0x0

    .line 2214
    :goto_0
    return v11

    .line 2173
    :cond_0
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 2174
    .local v6, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-eqz v11, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 2175
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2177
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 2178
    .local v5, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 2179
    .local v4, "drawableHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderWidth()I

    move-result v10

    .line 2180
    .local v10, "tileWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderHeight()I

    move-result v9

    .line 2181
    .local v9, "tileHeight":I
    if-lez v10, :cond_1

    if-gtz v9, :cond_2

    .line 2182
    :cond_1
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "invalid tile size[%dx%d]"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/4 v11, 0x0

    goto :goto_0

    .line 2185
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderRotation()I

    move-result v11

    div-int/lit8 v11, v11, 0x5a

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2186
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderHeight()I

    move-result v10

    .line 2187
    move-object/from16 v0, p0

    iget-object v11, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v11}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderWidth()I

    move-result v9

    .line 2189
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v5

    mul-float/2addr v11, v12

    int-to-float v12, v4

    div-float v2, v11, v12

    .line 2190
    .local v2, "dRatio":F
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v10

    mul-float/2addr v11, v12

    int-to-float v12, v9

    div-float v8, v11, v12

    .line 2191
    .local v8, "tRation":F
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v2, v8, v11}, Lcom/miui/gallery/util/MiscUtil;->floatNear(FFF)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2192
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 2193
    .local v3, "displayRect":Landroid/graphics/RectF;
    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_4

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2201
    .end local v3    # "displayRect":Landroid/graphics/RectF;
    :cond_5
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    const-string v13, "drawable w/h not equal to tile w/h: %.2f, %.2f"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 2202
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2201
    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/2addr v11, v12

    int-to-float v2, v11

    .line 2204
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-int/2addr v11, v12

    int-to-float v8, v11

    .line 2205
    invoke-static {v2, v8}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2206
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v11

    const-string v12, "PhotoViewAttacher"

    const-string v13, "drawable w[%s], h[%s] not equal to tile w[%s], h[%s]; tile rotation[%s]"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 2207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderRotation()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2206
    invoke-interface {v11, v12, v13}, Luk/co/senab/photoview/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2209
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "tile_rotation"

    move-object/from16 v0, p0

    iget-object v12, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v12}, Lcom/miui/gallery/util/photoview/TileView;->getTileProviderRotation()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const-string v11, "photo"

    const-string v12, "photo_tile_orientation_error"

    invoke-static {v11, v12, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2214
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dRatio":F
    .end local v4    # "drawableHeight":I
    .end local v5    # "drawableWidth":I
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "tRation":F
    .end local v9    # "tileHeight":I
    .end local v10    # "tileWidth":I
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private notifyTileViewInvalidate()V
    .locals 3

    .prologue
    .line 2218
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->needDrawTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/photoview/TileView;->notifyInvalidate(Landroid/graphics/RectF;F)V

    .line 2221
    :cond_0
    return-void
.end method

.method private onBaseMatrixChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1335
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->tryAnimEnter()V

    .line 1338
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateScales()V

    .line 1340
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/TileView;->setViewPort(Landroid/graphics/Rect;)V

    .line 1343
    :cond_0
    return-void
.end method

.method private onScaleChanged(FFFF)V
    .locals 6
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 2337
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    .line 2338
    .local v5, "curScale":F
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2339
    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher;->dispatchScaleChanged(FFFFF)V

    .line 2340
    return-void
.end method

.method private postRotate(FFF)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 2327
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2328
    return-void
.end method

.method private postScale(FFFF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 2317
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2319
    invoke-direct {p0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->onScaleChanged(FFFF)V

    .line 2320
    return-void
.end method

.method private postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 2323
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2324
    return-void
.end method

.method private resetMatrix()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1278
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 1279
    .local v0, "preScale":F
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1280
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1282
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 1283
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v1, :cond_1

    .line 1284
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 1285
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    .line 1290
    :cond_1
    :goto_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 1291
    return-void

    .line 1286
    :cond_2
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 1287
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMidScaleStage(Z)V

    goto :goto_0
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1294
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 1295
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1296
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 1297
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1299
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->notifyTileViewInvalidate()V

    .line 1301
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1302
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1303
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 1304
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1305
    .local v3, "rect":Landroid/graphics/RectF;
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 1306
    .local v2, "listener":Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    invoke-interface {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 1311
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "listener":Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    .end local v3    # "rect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 168
    if-eqz p0, :cond_0

    instance-of v0, p0, Luk/co/senab/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    :cond_0
    return-void
.end method

.method private setRotate(FFF)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 2343
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2344
    return-void
.end method

.method private setScale(FFFF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 2331
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2333
    invoke-direct {p0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->onScaleChanged(FFFF)V

    .line 2334
    return-void
.end method

.method private trimRotation(F)I
    .locals 3
    .param p1, "degrees"    # F

    .prologue
    const/high16 v2, 0x42340000    # 45.0f

    .line 2347
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    add-float v1, p1, v2

    :goto_0
    float-to-int v0, v1

    .line 2348
    .local v0, "intValue":I
    div-int/lit8 v1, v0, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 2347
    .end local v0    # "intValue":I
    :cond_0
    sub-float v1, p1, v2

    goto :goto_0
.end method

.method private tryAnimEnter()V
    .locals 4

    .prologue
    .line 2064
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    if-eqz v0, :cond_0

    .line 2065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mWantEnterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2066
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTransitionListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    invoke-virtual {p0, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 2068
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    goto :goto_0
.end method

.method private tryGetViewPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 1785
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1787
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 1788
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1791
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2306
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 2307
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    .line 2311
    :goto_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    invoke-interface {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;->onAlphaChanged(F)V

    .line 2314
    :cond_0
    return-void

    .line 2309
    :cond_1
    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    goto :goto_0
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rotation"    # I

    .prologue
    .line 1320
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateBaseRect(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/RectF;

    move-result-object v0

    .line 1321
    .local v0, "baseRect":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 1331
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1325
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    rsub-int/lit8 v3, p2, 0x0

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1326
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    .line 1327
    .local v1, "rotatedRect":Landroid/graphics/RectF;
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1328
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1330
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->onBaseMatrixChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 959
    if-eqz p1, :cond_0

    .line 960
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_0
    return-void
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1796
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->needDrawTile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->tryGetViewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/util/photoview/TileView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1804
    :cond_0
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->drawStroke(Landroid/graphics/Canvas;)V

    .line 1805
    return-void
.end method

.method public animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V
    .locals 22
    .param p1, "enterInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .prologue
    .line 2075
    if-eqz p1, :cond_6

    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 2076
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->stop()V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v12

    .line 2078
    .local v12, "rect":Landroid/graphics/RectF;
    if-eqz v12, :cond_5

    .line 2079
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v14

    .line 2081
    .local v14, "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v19

    div-float v17, v18, v19

    .line 2082
    .local v17, "widthScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v9, v18, v19

    .line 2083
    .local v9, "heightScale":F
    cmpl-float v18, v17, v9

    if-lez v18, :cond_4

    move/from16 v13, v17

    .line 2084
    .local v13, "scale":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    .line 2086
    .local v6, "curScale":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v18

    mul-float v11, v18, v13

    .line 2087
    .local v11, "ratioWidth":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v18

    mul-float v10, v18, v13

    .line 2089
    .local v10, "ratioHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 2090
    .local v15, "startX":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v10

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2091
    .local v16, "startY":I
    invoke-virtual {v14}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 2092
    .local v7, "dx":I
    invoke-virtual {v14}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    .line 2094
    .local v8, "dy":I
    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v13, v13, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    .line 2095
    neg-int v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    neg-int v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 2097
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v6}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->scale(FF)V

    .line 2098
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v7, v8}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->translate(IIII)V

    .line 2100
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v11

    if-ltz v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v10

    if-gez v18, :cond_1

    .line 2101
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v18, v11

    .line 2102
    .local v4, "clipX":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v18, v10

    .line 2103
    .local v5, "clipY":F
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v4

    .line 2104
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v5

    .line 2105
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v4

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v4, v5, v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->clip(FFFF)V

    .line 2107
    .end local v4    # "clipX":F
    .end local v5    # "clipY":F
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 2113
    .end local v6    # "curScale":F
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v9    # "heightScale":F
    .end local v10    # "ratioHeight":F
    .end local v11    # "ratioWidth":F
    .end local v13    # "scale":F
    .end local v14    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v15    # "startX":I
    .end local v16    # "startY":I
    .end local v17    # "widthScale":F
    :goto_1
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 2114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mWantEnterTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x96

    cmp-long v18, v18, v20

    if-gez v18, :cond_2

    .line 2116
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->ensureAlpha(Z)V

    .line 2118
    :cond_2
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v20}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->alpha(FF)V

    .line 2119
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->start(Z)V

    .line 2123
    .end local v12    # "rect":Landroid/graphics/RectF;
    :cond_3
    :goto_2
    return-void

    .restart local v9    # "heightScale":F
    .restart local v12    # "rect":Landroid/graphics/RectF;
    .restart local v14    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .restart local v17    # "widthScale":F
    :cond_4
    move v13, v9

    .line 2083
    goto/16 :goto_0

    .line 2109
    .end local v9    # "heightScale":F
    .end local v14    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v17    # "widthScale":F
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/PhotoViewAttacher;->mEnterInfo:Lcom/miui/gallery/util/photoview/ItemViewInfo;

    .line 2110
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/senab/photoview/PhotoViewAttacher;->mTransitionListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .line 2111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Luk/co/senab/photoview/PhotoViewAttacher;->mWantEnterTime:J

    goto :goto_1

    .line 2120
    .end local v12    # "rect":Landroid/graphics/RectF;
    :cond_6
    if-eqz p2, :cond_3

    .line 2121
    invoke-interface/range {p2 .. p2}, Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;->onTransitEnd()V

    goto :goto_2
.end method

.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V
    .locals 23
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .prologue
    .line 2127
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->isLocationValid()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 2128
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->stop()V

    .line 2129
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v14

    .line 2130
    .local v14, "rect":Landroid/graphics/RectF;
    if-eqz v14, :cond_2

    .line 2131
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2132
    .local v5, "curDisplayRect":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v16

    .line 2134
    .local v16, "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 2135
    .local v2, "baseDisplayRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v19

    div-float v17, v18, v19

    .line 2136
    .local v17, "widthScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v11, v18, v19

    .line 2137
    .local v11, "heightScale":F
    cmpl-float v18, v17, v11

    if-lez v18, :cond_4

    move/from16 v15, v17

    .line 2138
    .local v15, "scale":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    .line 2139
    .local v6, "curScale":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v18

    mul-float v13, v18, v15

    .line 2140
    .local v13, "ratioWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v18

    mul-float v12, v18, v15

    .line 2142
    .local v12, "ratioHeight":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v13

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    .line 2143
    .local v9, "endX":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v10, v0

    .line 2144
    .local v10, "endY":I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v9

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 2145
    .local v7, "dx":I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getY()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    .line 2147
    .local v8, "dy":I
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v13

    if-ltz v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v12

    if-gez v18, :cond_1

    .line 2148
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v3, v18, v13

    .line 2149
    .local v3, "clipX":F
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v18, v12

    .line 2150
    .local v4, "clipY":F
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/util/MiscUtil;->clamp(FFF)F

    move-result v4

    .line 2151
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v3, v21

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v4, v22

    invoke-virtual/range {v18 .. v22}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->clip(FFFF)V

    .line 2153
    .end local v3    # "clipX":F
    .end local v4    # "clipY":F
    :cond_1
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v15}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->scale(FF)V

    .line 2154
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    neg-int v0, v7

    move/from16 v21, v0

    neg-int v0, v8

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->translate(IIII)V

    .line 2156
    .end local v2    # "baseDisplayRect":Landroid/graphics/RectF;
    .end local v5    # "curDisplayRect":Landroid/graphics/RectF;
    .end local v6    # "curScale":F
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v9    # "endX":I
    .end local v10    # "endY":I
    .end local v11    # "heightScale":F
    .end local v12    # "ratioHeight":F
    .end local v13    # "ratioWidth":F
    .end local v15    # "scale":F
    .end local v16    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v17    # "widthScale":F
    :cond_2
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 2157
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->ensureAlpha(Z)V

    .line 2158
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlpha:F

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->alpha(FF)V

    .line 2159
    invoke-direct/range {p0 .. p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->start(Z)V

    .line 2163
    .end local v14    # "rect":Landroid/graphics/RectF;
    :cond_3
    :goto_1
    return-void

    .restart local v2    # "baseDisplayRect":Landroid/graphics/RectF;
    .restart local v5    # "curDisplayRect":Landroid/graphics/RectF;
    .restart local v11    # "heightScale":F
    .restart local v14    # "rect":Landroid/graphics/RectF;
    .restart local v16    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .restart local v17    # "widthScale":F
    :cond_4
    move v15, v11

    .line 2137
    goto/16 :goto_0

    .line 2160
    .end local v2    # "baseDisplayRect":Landroid/graphics/RectF;
    .end local v5    # "curDisplayRect":Landroid/graphics/RectF;
    .end local v11    # "heightScale":F
    .end local v14    # "rect":Landroid/graphics/RectF;
    .end local v16    # "selfInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .end local v17    # "widthScale":F
    :cond_5
    if-eqz p2, :cond_3

    .line 2161
    invoke-interface/range {p2 .. p2}, Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;->onTransitEnd()V

    goto :goto_1
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    .line 1764
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1765
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1766
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->getClipRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1767
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->getClipRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 1771
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isExited()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRotatable()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    return v0
.end method

.method public canZoom()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 388
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 346
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 349
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 354
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->cancelFling()V

    .line 360
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 361
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 365
    :cond_3
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 366
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 367
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 370
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 371
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 372
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .line 373
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->stop()V

    .line 375
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getTransition()Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    move-result-object v2

    invoke-virtual {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->setTransitionListener(Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;)V

    .line 378
    :cond_4
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v2, :cond_5

    .line 379
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->stop()V

    .line 384
    :cond_5
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->releaseTile()V

    .line 387
    iput-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getAbsoluteRect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 404
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public getBaseDisplayRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 399
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 400
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBaseMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1111
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 393
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 394
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1116
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1117
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDrawableSize()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 408
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 414
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 415
    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 416
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 417
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 418
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 419
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 422
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 468
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 473
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 475
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    const-string v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v1, v2, v3}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    return-object v0
.end method

.method public getMaximumScale()F
    .locals 2

    .prologue
    .line 512
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    goto :goto_0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getRotate()F
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/miui/gallery/util/MatrixUtil;->getRotate(Landroid/graphics/Matrix;)F

    move-result v0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/miui/gallery/util/MatrixUtil;->getRotate(Landroid/graphics/Matrix;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/miui/gallery/util/MatrixUtil;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1107
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x0

    return-object v0
.end method

.method public isGestureOperating()Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    .line 885
    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const v2, 0x3a83126f    # 0.001f

    const/4 v3, 0x1

    .line 2284
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2287
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 2288
    .local v0, "scale":F
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 2289
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    invoke-virtual {p0, v1, p1, p2, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 2290
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2292
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMidScaleStage(Z)V

    goto :goto_0

    .line 2294
    :cond_2
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 2295
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v1

    invoke-virtual {p0, v1, p1, p2, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 2296
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v1, :cond_0

    .line 2298
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v1, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    goto :goto_0

    .line 2301
    :cond_3
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v1

    invoke-virtual {p0, v1, p1, p2, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 9
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 540
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptDrag()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v6

    iget v7, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-eqz v6, :cond_0

    .line 554
    :cond_2
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHasScale:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-nez v6, :cond_3

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 555
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTouchDownY:F

    .line 556
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 557
    :cond_3
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    add-float/2addr v6, p2

    iput v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    .line 558
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-nez v6, :cond_4

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    iget v7, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutThreshold:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 559
    const/4 v6, 0x1

    iput-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    .line 560
    const/4 v6, 0x1

    iput-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    .line 564
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 565
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-eqz v6, :cond_8

    .line 566
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v5

    .line 567
    .local v5, "width":I
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    .line 568
    .local v0, "height":I
    iget-object v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v4

    .line 570
    .local v4, "transY":F
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, v0

    div-float v8, p2, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float v3, v6, v7

    .line 571
    .local v3, "scale":F
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    int-to-float v7, v0

    add-float/2addr v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-direct {p0, v3, v3, v6, v7}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    .line 572
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    invoke-direct {p0, v6, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    .line 573
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v0

    div-float v7, v4, v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 579
    .end local v0    # "height":I
    .end local v3    # "scale":F
    .end local v4    # "transY":F
    .end local v5    # "width":I
    :cond_5
    :goto_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 590
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 591
    .local v2, "parent":Landroid/view/ViewParent;
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v6, :cond_c

    .line 592
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 593
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    if-nez v6, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-gez v6, :cond_7

    :cond_6
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHScrollEdge:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_d

    .line 596
    :cond_7
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    if-nez v6, :cond_0

    .line 597
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 574
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_8
    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v6, :cond_5

    .line 575
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->postTranslate(FF)V

    goto :goto_1

    .line 601
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_9
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_b

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p2, v6

    if-gez v6, :cond_b

    :cond_a
    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mVScrollEdge:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_d

    .line 603
    :cond_b
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    if-nez v6, :cond_0

    .line 604
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 609
    :cond_c
    if-eqz v2, :cond_d

    .line 610
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 613
    :cond_d
    const/4 v6, 0x1

    iput-boolean v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    goto/16 :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 620
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-nez v1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 636
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 637
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 638
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    .line 639
    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    .line 638
    invoke-virtual {v1, v2, v3, v4, v5}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 640
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 645
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 647
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 648
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 649
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 650
    .local v3, "right":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 651
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 660
    .local v2, "left":I
    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 663
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v6

    invoke-direct {p0, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->trimRotation(F)I

    move-result v6

    invoke-direct {p0, v5, v6}, Luk/co/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V

    .line 664
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    .line 666
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvTop:I

    .line 667
    iput v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvRight:I

    .line 668
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 669
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 672
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    return-void
.end method

.method public onScale(FFF)V
    .locals 6
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 847
    iget-boolean v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-nez v2, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iput-boolean v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHasScale:Z

    .line 858
    iput-boolean v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    .line 860
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 861
    .local v1, "preScale":F
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScalingScale()F

    move-result v2

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    cmpg-float v2, p1, v4

    if-gez v2, :cond_0

    .line 862
    :cond_2
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    .line 863
    iput p3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    .line 864
    invoke-direct {p0, p1, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->postScale(FFFF)V

    .line 865
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 867
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 868
    .local v0, "curScale":F
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    if-eqz v2, :cond_0

    .line 869
    cmpg-float v2, p1, v4

    if-gez v2, :cond_4

    .line 870
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    .line 871
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    goto :goto_0

    .line 872
    :cond_3
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 873
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v2, v3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMidScaleStage(Z)V

    goto :goto_0

    .line 875
    :cond_4
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxDoubleTapScale:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 876
    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    invoke-interface {v2, v5}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;->onMaxScaleStage(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 748
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIntercepted:Z

    if-eqz v0, :cond_1

    move v6, v9

    .line 841
    :cond_0
    :goto_0
    return v6

    .line 752
    :cond_1
    const/4 v6, 0x0

    .line 755
    .local v6, "handled":Z
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptTouch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 760
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 763
    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 765
    .local v7, "parent":Landroid/view/ViewParent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 824
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->canRotatable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 825
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureRotateDetector()V

    .line 826
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateDetector:Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;

    invoke-virtual {v0, p2}, Luk/co/senab/photoview/PhotoViewAttacher$RotateManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 830
    :cond_4
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureScaleDragDetector()V

    .line 831
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0, p2}, Luk/co/senab/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 832
    const/4 v6, 0x1

    .line 836
    .end local v7    # "parent":Landroid/view/ViewParent;
    :cond_5
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureTapDetector()V

    .line 837
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v6, 0x1

    goto :goto_0

    .line 767
    .restart local v7    # "parent":Landroid/view/ViewParent;
    :pswitch_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDownScale:F

    .line 770
    if-eqz v7, :cond_6

    .line 771
    invoke-interface {v7, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 775
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTouchDownY:F

    .line 776
    iput-boolean v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    .line 777
    iput-boolean v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mHasScale:Z

    .line 780
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_1

    .line 773
    :cond_6
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v3, "onTouch getParent() returned null"

    invoke-interface {v0, v1, v3}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 784
    :pswitch_2
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->interceptMotionEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    move v6, v1

    .line 785
    goto :goto_0

    .line 787
    :cond_7
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    .line 789
    .local v2, "curScale":F
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    if-eqz v0, :cond_b

    .line 790
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutThreshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    .line 791
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    if-eqz v0, :cond_8

    .line 792
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    invoke-interface {v0}, Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;->onExit()V

    .line 798
    :cond_8
    :goto_3
    iput-boolean v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsDragDownOut:Z

    .line 799
    iput v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragDownOutY:F

    .line 820
    :cond_9
    :goto_4
    iput-boolean v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDragHandled:Z

    goto :goto_1

    .line 795
    :cond_a
    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 796
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_3

    .line 800
    :cond_b
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_9

    .line 801
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitScale:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_c

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    if-eqz v0, :cond_c

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mDownScale:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_c

    .line 802
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    invoke-interface {v0}, Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;->onExit()V

    goto :goto_4

    .line 803
    :cond_c
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_d

    .line 806
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 807
    .local v8, "rect":Landroid/graphics/RectF;
    if-eqz v8, :cond_9

    .line 808
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    iget v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 809
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 808
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 810
    const/4 v6, 0x1

    goto :goto_4

    .line 814
    .end local v8    # "rect":Landroid/graphics/RectF;
    :cond_d
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScale()F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_9

    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_9

    .line 815
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaxPointsScale()F

    move-result v3

    iget v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 816
    iput v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusX:F

    .line 817
    iput v10, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLastScaleFocusY:F

    goto :goto_4

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public releaseTile()V
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileView;->cleanup()V

    .line 2238
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    .line 2239
    return-void
.end method

.method public removeOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 966
    if-eqz p1, :cond_0

    .line 967
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMatrixChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 969
    :cond_0
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 902
    return-void
.end method

.method public setAlphaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2268
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2269
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2270
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2271
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2273
    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 2259
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->updateAlpha(F)V

    .line 2260
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 2261
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2262
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2264
    :cond_0
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 3
    .param p1, "finalMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Matrix cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 431
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 441
    :cond_1
    :goto_0
    return v1

    .line 434
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 437
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 438
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 439
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 441
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setHDState(IIZ)V
    .locals 0
    .param p1, "originWidth"    # I
    .param p2, "originHeight"    # I
    .param p3, "isHd"    # Z

    .prologue
    .line 2277
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginWidth:I

    .line 2278
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mOriginHeight:I

    .line 2279
    iput-boolean p3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mSupportHd:Z

    .line 2280
    return-void
.end method

.method public setInterceptTouch(Z)V
    .locals 0
    .param p1, "intercept"    # Z

    .prologue
    .line 890
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIntercepted:Z

    .line 891
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .param p1, "maximumScale"    # F

    .prologue
    .line 938
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 939
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 940
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .param p1, "mediumScale"    # F

    .prologue
    .line 926
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 927
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 928
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .param p1, "minimumScale"    # F

    .prologue
    .line 912
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 913
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 915
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitScale:F

    .line 916
    return-void
.end method

.method public setOnBackgroundAlphaChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;)V
    .locals 0
    .param p1, "alphaChangedListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .prologue
    .line 998
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mAlphaChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnBackgroundAlphaChangedListener;

    .line 999
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 309
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureTapDetector()V

    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Luk/co/senab/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnExitListener(Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .prologue
    .line 993
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mExitListener:Luk/co/senab/photoview/PhotoViewAttacher$OnExitListener;

    .line 994
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 954
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 955
    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 973
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 974
    return-void
.end method

.method public setOnRotateListener(Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    .prologue
    .line 1003
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateListener:Luk/co/senab/photoview/PhotoViewAttacher$OnRotateListener;

    .line 1004
    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 0
    .param p1, "onScaleChangeListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 319
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleChangeListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 320
    return-void
.end method

.method public setOnScaleStageChangedListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;)V
    .locals 0
    .param p1, "onScaleStageChangedListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    .prologue
    .line 324
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleStageChangedListener:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleStageChangedListener;

    .line 325
    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 983
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mViewTapListener:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 984
    return-void
.end method

.method public setRegionDecodeEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2243
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    if-eq v0, p1, :cond_0

    .line 2244
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mIsRegionDecodeEnable:Z

    .line 2245
    if-eqz p1, :cond_1

    .line 2246
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->notifyTileViewInvalidate()V

    .line 2251
    :cond_0
    :goto_0
    return-void

    .line 2247
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public setRotatable(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 1069
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    .line 1070
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mRotateEnabled:Z

    if-nez v0, :cond_0

    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update(Z)V

    .line 1073
    :cond_0
    return-void
.end method

.method public setRotationBy(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 461
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->postRotate(FFF)V

    .line 462
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 463
    return-void
.end method

.method public setRotationTo(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    const/4 v1, 0x0

    .line 455
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    invoke-direct {p0, v0, v1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setRotate(FFF)V

    .line 456
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 457
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 1009
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 1026
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 1028
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 1030
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1032
    :cond_0
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->getLogger()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Scale must be within the range of minScale and maxScale"

    .line 1033
    invoke-interface {v0, v1, v2}, Luk/co/senab/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_1
    :goto_0
    return-void

    .line 1038
    :cond_2
    if-eqz p4, :cond_3

    .line 1039
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1042
    :cond_3
    invoke-direct {p0, p1, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFF)V

    .line 1043
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 1013
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1015
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1018
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1016
    invoke-virtual {p0, p1, v1, v2, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 1021
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 1050
    invoke-static {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 1051
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update(Z)V

    .line 1056
    :cond_0
    return-void
.end method

.method public setStroke(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "width"    # I

    .prologue
    .line 252
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeColor:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    if-eq v1, p2, :cond_2

    .line 253
    :cond_0
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeColor:I

    .line 254
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    .line 255
    if-lez p2, :cond_1

    .line 256
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->ensureStrokePaint()V

    .line 257
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 261
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 265
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 1252
    if-gez p1, :cond_0

    .line 1253
    const/16 p1, 0xc8

    .line 1254
    :cond_0
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 1255
    return-void
.end method

.method public setZoomable(Z)V
    .locals 2
    .param p1, "zoomable"    # Z

    .prologue
    .line 1060
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 1061
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1062
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1063
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->update(Z)V

    .line 1065
    :cond_0
    return-void
.end method

.method public setupTile(Lcom/miui/gallery/util/photoview/TileBitProvider;Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V
    .locals 5
    .param p1, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;
    .param p2, "callback"    # Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;
    .param p3, "trimMemoryCallback"    # Lcom/miui/gallery/util/photoview/TrimMemoryCallback;

    .prologue
    const/4 v4, 0x0

    .line 2225
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    if-nez v0, :cond_0

    .line 2226
    new-instance v0, Lcom/miui/gallery/util/photoview/TileView;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/miui/gallery/util/photoview/TileView;-><init>(Lcom/miui/gallery/util/photoview/TileBitProvider;Landroid/view/View;Lcom/miui/gallery/util/photoview/BitmapRecycleCallback;Lcom/miui/gallery/util/photoview/TrimMemoryCallback;)V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    .line 2228
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mTileView:Lcom/miui/gallery/util/photoview/TileView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/TileView;->setViewPort(Landroid/graphics/Rect;)V

    .line 2229
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->calculateScales()V

    .line 2230
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->notifyTileViewInvalidate()V

    .line 2231
    return-void
.end method

.method public update(Z)V
    .locals 3
    .param p1, "keepDisplayRect"    # Z

    .prologue
    .line 1081
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1083
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 1084
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_0

    .line 1086
    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 1089
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getRotate()F

    move-result v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->trimRotation(F)I

    move-result v1

    :goto_0
    invoke-direct {p0, v2, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;I)V

    .line 1090
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_4

    .line 1091
    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    .line 1096
    :cond_2
    :goto_1
    return-void

    .line 1089
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1093
    :cond_4
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method
