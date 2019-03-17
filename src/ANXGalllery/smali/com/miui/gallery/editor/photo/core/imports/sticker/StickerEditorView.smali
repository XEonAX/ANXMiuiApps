.class public Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
.super Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.source "StickerEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;,
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;,
        Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;
    }
.end annotation


# instance fields
.field private mBitmapToCanvas:Landroid/graphics/Matrix;

.field private mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

.field private mCanvasToBitmap:Landroid/graphics/Matrix;

.field private mInitialSize:F

.field private mMatrixValue:[F

.field private mMaxRadius:F

.field private mMinRadius:F

.field private mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

.field private mPrePoint:Landroid/graphics/PointF;

.field private mRectTemp:Landroid/graphics/RectF;

.field private mReusePoint:Landroid/graphics/PointF;

.field private mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mPrePoint:Landroid/graphics/PointF;

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mReusePoint:Landroid/graphics/PointF;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCanvasToBitmap:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mRectTemp:Landroid/graphics/RectF;

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMatrixValue:[F

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMinRadius:F

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMaxRadius:F

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mRectTemp:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Landroid/graphics/RectF;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getRectOverScrollStatus(Landroid/graphics/RectF;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->resetTransByBounds(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->enableChildHandleMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mPrePoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->disableChildHandleMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->disableChildHandleMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mReusePoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getCurrentCanvasScale()F

    move-result v0

    return v0
.end method

.method private getCurrentCanvasScale()F
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMatrixValue:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMatrixValue:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$CustomGestureListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$1;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;)V

    .line 83
    return-void
.end method

.method private refreshMatrix()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 400
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapToDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 401
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 402
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCanvasToBitmap:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 403
    return-void
.end method

.method private resetTransByBounds(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "trans"    # Landroid/graphics/PointF;

    .prologue
    const/4 v4, 0x0

    .line 318
    const v1, 0x3f4ccccd    # 0.8f

    .line 319
    .local v1, "outRatio":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    .line 320
    .local v0, "displayRect":Landroid/graphics/RectF;
    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 321
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 323
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 324
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 326
    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 327
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 329
    :cond_2
    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 330
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 332
    :cond_3
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 13
    .param p1, "sticker"    # Landroid/graphics/Bitmap;
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "stickerId"    # J
    .param p5, "stickerCateName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    if-nez v2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V

    .line 339
    .local v1, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->append(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrixInvert:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->init(Landroid/graphics/Matrix;)V

    .line 344
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->bind(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 345
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMinRadius:F

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getCurrentCanvasScale()F

    move-result v3

    mul-float v8, v2, v3

    .line 346
    .local v8, "minRadius":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getRadius()F

    move-result v11

    .line 347
    .local v11, "radius":F
    div-float v12, v8, v11

    .line 348
    .local v12, "scale":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    .line 349
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getBorderBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    .line 350
    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->getBorderBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 348
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->translate(FF)V

    .line 351
    cmpg-float v2, v11, v8

    if-gez v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v2, v12}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->scale(F)V

    .line 355
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    .line 357
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    .line 358
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    .line 356
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->translate(FF)V

    .line 370
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->enableChildHandleMode()V

    .line 371
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->invalidate()V

    goto/16 :goto_0

    .line 360
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v9, v2, v3

    .line 361
    .local v9, "offsetX":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v10, v2, v3

    .line 362
    .local v10, "offsetY":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 363
    .local v0, "maxX":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 365
    .local v7, "maxY":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 366
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v7

    mul-double/2addr v2, v4

    double-to-float v7, v2

    .line 368
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    add-float v3, v9, v0

    add-float v4, v10, v7

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->translate(FF)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 412
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->draw(Landroid/graphics/Canvas;)V

    .line 413
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->draw(Landroid/graphics/Canvas;Z)V

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 413
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public export()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getCacheNode()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$StickerEntry;-><init>(Landroid/graphics/RectF;Ljava/util/List;)V

    return-object v0
.end method

.method public getCacheNode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->append(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->getNodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onBitmapMatrixChanged()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->refreshMatrix()V

    .line 387
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->onStart()V

    .line 388
    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->updateDisplayInfo()V

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->refreshMatrix()V

    .line 396
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->append(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 421
    :cond_0
    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    .line 422
    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    .line 423
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mState:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    .line 424
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mInitialSize:F

    .line 378
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMinRadius:F

    .line 379
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMaxRadius:F

    .line 380
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCanvasToBitmap:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;-><init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mMutator:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    .line 381
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mDisplayBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCanvasToBitmap:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mBitmapToCanvas:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->mCache:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;

    .line 382
    return-void
.end method
