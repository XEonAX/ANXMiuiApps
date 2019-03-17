.class public Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.super Landroid/view/View;
.source "BitmapGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;,
        Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;,
        Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;,
        Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;
    }
.end annotation


# instance fields
.field protected mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

.field private mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

.field protected mDisplayBitmap:Landroid/graphics/Bitmap;

.field protected mDisplayCanvas:Landroid/graphics/Canvas;

.field private mDrawOrigin:Z

.field private mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

.field private mForceHandleEventByChild:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mOriginBitmap:Landroid/graphics/Bitmap;

.field private mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

.field private mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

.field private mTouchMinSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    .line 25
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 34
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 43
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDrawOrigin:Z

    .line 54
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mForceHandleEventByChild:Z

    .line 361
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    .line 58
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    .line 25
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 34
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 43
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDrawOrigin:Z

    .line 54
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mForceHandleEventByChild:Z

    .line 361
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    .line 25
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 34
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 43
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDrawOrigin:Z

    .line 54
    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mForceHandleEventByChild:Z

    .line 361
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;

    .prologue
    .line 17
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mTouchMinSize:F

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mParamsChangeListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;-><init>(Landroid/view/View;Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder$ParamsChangeListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    .line 73
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomGesListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomGesListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 74
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mCustomScaleListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$CustomScaleListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mTouchMinSize:F

    .line 81
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    .line 82
    return-void
.end method

.method private onActionUp(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->resetMatrixWithAnim()V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;->onActionUp(FF)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->invalidate()V

    .line 161
    return-void
.end method


# virtual methods
.method protected convertDistanceX(F)F
    .locals 1
    .param p1, "distanceX"    # F

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->convertDistanceX(F)F

    move-result v0

    return v0
.end method

.method protected convertDistanceY(F)F
    .locals 1
    .param p1, "distanceY"    # F

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->convertDistanceY(F)F

    move-result v0

    return v0
.end method

.method protected convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "points"    # [F

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, p2, v0

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, p2, v0

    .line 239
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->convertPointToViewPortCoordinate([F)V

    .line 240
    return-void
.end method

.method protected convertPointToViewPortCoordinate([F)V
    .locals 1
    .param p1, "points"    # [F

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->convertPointToViewPortCoordinate([F)V

    .line 249
    return-void
.end method

.method protected disableChildHandleMode()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mForceHandleEventByChild:Z

    .line 345
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    return-void
.end method

.method public drawOrigin(Z)V
    .locals 0
    .param p1, "drawOrigin"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDrawOrigin:Z

    .line 383
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->invalidate()V

    .line 384
    return-void
.end method

.method protected enableChildHandleMode()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mForceHandleEventByChild:Z

    .line 341
    return-void
.end method

.method protected getRectOverScrollStatus(Landroid/graphics/RectF;)I
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 270
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->getRectOverScrollStatus(Landroid/graphics/RectF;F)I

    move-result v0

    return v0
.end method

.method protected getRectOverScrollStatus(Landroid/graphics/RectF;F)I
    .locals 11
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "overScrollRate"    # F

    .prologue
    .line 274
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v9, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    .line 275
    .local v0, "bitmapDisplayRect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v9, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    .line 276
    .local v2, "displayRect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float v8, v9, p2

    .line 277
    .local v8, "widthHalf":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v4, v9, p2

    .line 278
    .local v4, "heightHalf":F
    iget v9, v0, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 279
    .local v5, "left":F
    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 280
    .local v7, "top":F
    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 281
    .local v6, "right":F
    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 282
    .local v1, "bottom":F
    const/4 v3, 0x0

    .line 283
    .local v3, "flag":I
    iget v9, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v5

    neg-float v10, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 284
    or-int/lit8 v3, v3, 0x8

    .line 288
    :cond_0
    :goto_0
    iget v9, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v7

    neg-float v10, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 289
    or-int/lit8 v3, v3, 0x2

    .line 293
    :cond_1
    :goto_1
    return v3

    .line 285
    :cond_2
    iget v9, p1, Landroid/graphics/RectF;->right:F

    add-float v10, v6, v8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 286
    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 290
    :cond_3
    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, v4

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 291
    or-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected onBitmapMatrixChanged()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public onClear()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 111
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDrawOrigin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mOriginBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->drawChild(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 119
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->onSizeChanged(IIII)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 130
    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 133
    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 135
    :cond_2
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mForceHandleEventByChild:Z

    if-eqz v1, :cond_3

    .line 136
    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mState:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$State;

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onActionUp(FF)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected refreshDisplayCanvas()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 86
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 87
    .local v0, "height":I
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 89
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    .line 90
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mDisplayCanvas:Landroid/graphics/Canvas;

    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->refreshDisplayCanvas()V

    .line 93
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method public setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;)V
    .locals 0
    .param p1, "featureGestureListener"    # Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->mFeatureGestureListener:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;

    .line 349
    return-void
.end method
