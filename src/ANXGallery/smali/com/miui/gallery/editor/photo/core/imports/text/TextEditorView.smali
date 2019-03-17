.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
.super Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.source "TextEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;
    }
.end annotation


# instance fields
.field private mAuxiliaryPaint:Landroid/graphics/Paint;

.field private mCanvasOffsetY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentTargetOffsetY:F

.field private mITextDialogConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:[I

.field private mOffsetAnimator:Landroid/animation/ObjectAnimator;

.field private mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

.field private mOriginScale:F

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectTemp:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mLocation:[I

    .line 46
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    .line 47
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentTargetOffsetY:F

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    .line 863
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertDistanceX(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertDistanceY(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->findActivationIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->notifyModify()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->findItemByEvent(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/graphics/RectF;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getRectOverScrollStatus(Landroid/graphics/RectF;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->findTouchAction(FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->updateOperationDrawable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->notifyItemEdit()V

    return-void
.end method

.method private configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V
    .locals 6
    .param p1, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-interface {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-interface {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isReverseColor()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    .line 114
    :goto_1
    return-void

    .line 108
    :cond_0
    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isDialogEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    goto :goto_1
.end method

.method private configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V
    .locals 6
    .param p1, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getRotateDegrees()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configDecorationPositon(Landroid/graphics/RectF;Landroid/graphics/Matrix;FFF)V

    .line 104
    return-void
.end method

.method private countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V
    .locals 2
    .param p1, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    .param p2, "isSection"    # Z
    .param p3, "isTextChange"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-interface {p1, p3, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->countLocation(ZF)V

    .line 376
    if-eqz p2, :cond_0

    .line 377
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate(Landroid/graphics/Rect;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    goto :goto_0
.end method

.method private findActivationIndex()I
    .locals 2

    .prologue
    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isActivation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 740
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findItemByEvent(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 426
    const/4 v1, -0x1

    .line 427
    .local v1, "currentIndex":I
    const/high16 v0, -0x40800000    # -1.0f

    .line 428
    .local v0, "currentDistance":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 429
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 430
    .local v4, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v4, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 428
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-interface {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 434
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-direct {p0, v5, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getDistance(Landroid/graphics/RectF;FF)F

    move-result v2

    .line 435
    .local v2, "distance":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v0, v5

    if-nez v5, :cond_2

    .line 436
    move v0, v2

    .line 437
    move v1, v3

    goto :goto_1

    .line 439
    :cond_2
    cmpg-float v5, v2, v0

    if-gtz v5, :cond_0

    .line 440
    move v1, v3

    goto :goto_1

    .line 444
    .end local v2    # "distance":F
    .end local v4    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    :cond_3
    return v1
.end method

.method private findTouchAction(FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 387
    .local v0, "xI":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 388
    .local v1, "yI":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 389
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 412
    :goto_0
    return-object v2

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 393
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 397
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 400
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 401
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 405
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 408
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 409
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 410
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 412
    :cond_5
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0
.end method

.method private getDistance(Landroid/graphics/RectF;FF)F
    .locals 6
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 449
    .local v0, "rX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 450
    .local v1, "rY":F
    sub-float v2, v0, p2

    float-to-double v2, v2

    sub-float v4, v1, p3

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;)V

    .line 69
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    .line 70
    return-void
.end method

.method private notifyClear()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;->onClear()V

    .line 140
    :cond_0
    return-void
.end method

.method private notifyItemEdit()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;->onItemEdit()V

    .line 146
    :cond_0
    return-void
.end method

.method private notifyModify()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;->onModify()V

    .line 134
    :cond_0
    return-void
.end method

.method private setCanvasOffsetY(F)V
    .locals 0
    .param p1, "canvasOffsetY"    # F

    .prologue
    .line 841
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    .line 842
    return-void
.end method

.method private updateOperationDrawable(Z)V
    .locals 6
    .param p1, "isWhiteReverse"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_0

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 119
    .local v4, "action":Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    .line 120
    return-void

    .line 117
    .end local v4    # "action":Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    :cond_0
    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    goto :goto_0
.end method


# virtual methods
.method public addNewItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;)V
    .locals 5
    .param p1, "textConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;

    .prologue
    .line 788
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->isWatermark()Z

    move-result v3

    if-nez v3, :cond_1

    .line 789
    :cond_0
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;-><init>(Landroid/content/Context;)V

    .line 790
    .local v1, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    invoke-interface {v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setScaleMultipleOrigin(F)V

    .line 805
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v1, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setDisplaySize(FF)V

    .line 807
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    .line 808
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setLastItemActivation()V

    .line 809
    return-void

    .line 792
    .end local v1    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    const v4, 0x3f733333    # 0.95f

    div-float v0, v3, v4

    .line 793
    .local v0, "originScale":F
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->getWatermarkInfo()Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;-><init>(Landroid/content/res/Resources;Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;F)V

    .line 794
    .local v2, "watermarkDialog":Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->init()V

    .line 795
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setBitmapSize(FF)V

    .line 796
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setBitmapLoadingListener(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog$BitmapLoadingListener;)V

    .line 802
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkDialog;->setPaddingTop(I)V

    .line 803
    move-object v1, v2

    .restart local v1    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    goto :goto_0
.end method

.method public clearActivation(Z)V
    .locals 5
    .param p1, "needInvalidate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 750
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 752
    .local v2, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 753
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 754
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->notifyClear()V

    move v0, v1

    .line 749
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_0
    invoke-interface {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setDrawOutline(Z)V

    .line 758
    invoke-interface {v2, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    goto :goto_1

    .line 760
    .end local v2    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    .line 761
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->disableChildHandleMode()V

    .line 762
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    .line 763
    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 77
    const-string v1, "TextEditorView"

    const-string v2, "drawChild size : %d"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 79
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isActivation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 83
    .end local v0    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    :cond_2
    return-void
.end method

.method public enableStatusForCurrentItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;Z)V
    .locals 8
    .param p1, "textStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    .param p2, "isNew"    # Z

    .prologue
    const/4 v7, 0x0

    .line 590
    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 594
    .local v4, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v4, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setDialogWithStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    .line 596
    if-eqz p2, :cond_1

    .line 597
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 598
    .local v0, "centerOriginX":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 600
    .local v1, "centerOriginY":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 601
    .local v2, "centerX":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 603
    .local v3, "centerY":F
    sub-float v5, v2, v0

    invoke-interface {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->appendUserLocationX(F)V

    .line 604
    sub-float v5, v3, v1

    invoke-interface {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->appendUserLocationY(F)V

    .line 607
    .end local v0    # "centerOriginX":F
    .end local v1    # "centerOriginY":F
    .end local v2    # "centerX":F
    .end local v3    # "centerY":F
    :cond_1
    invoke-direct {p0, v4, v7, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    .line 608
    invoke-direct {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    goto :goto_0
.end method

.method public export()Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;
    .locals 4

    .prologue
    .line 454
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;-><init>(Landroid/graphics/RectF;Ljava/util/List;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public getActivationItemBottom()I
    .locals 3

    .prologue
    .line 831
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mLocation:[I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getLocationInWindow([I)V

    .line 832
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mLocation:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 833
    .local v0, "bottom":I
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 834
    int-to-float v1, v0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->findLowerDecorationPosition()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 836
    :cond_0
    return v0
.end method

.method public getCurrentItemStatus(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 3
    .param p1, "textStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 564
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->setEmpty()V

    .line 579
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 569
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getColor()I

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->color:I

    .line 570
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getTextTransparent()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->transparentProgress:F

    .line 571
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 572
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isBoldText()Z

    move-result v1

    iput-boolean v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textBold:Z

    .line 573
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isShadow()Z

    move-result v1

    iput-boolean v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textShadow:Z

    .line 574
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 575
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getUserLocationX()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionX:F

    .line 576
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getUserLocationY()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemPositionY:F

    .line 577
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getUserScaleMultiple()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemScale:F

    .line 578
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getRotateDegrees()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->itemDegree:F

    goto :goto_0
.end method

.method public getDialogStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 2
    .param p1, "textStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 582
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->setEmpty()V

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getDialogStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    goto :goto_0
.end method

.method public getItemAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 560
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemBold()Z
    .locals 2

    .prologue
    .line 626
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const/4 v0, 0x0

    .line 629
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isBoldText()Z

    move-result v0

    goto :goto_0
.end method

.method public getItemColor()I
    .locals 2

    .prologue
    .line 550
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method public getItemDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .locals 2

    .prologue
    .line 612
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 615
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemShadow()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isShadow()Z

    move-result v0

    goto :goto_0
.end method

.method public getItemText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, ""

    .line 539
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemTextDialogConfig()Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    .locals 2

    .prologue
    .line 619
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    goto :goto_0
.end method

.method public getItemTransparent()F
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getTextTransparent()F

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIndexValid(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 528
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemActivation()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetWithAnimator(F)V
    .locals 4
    .param p1, "targetOffset"    # F

    .prologue
    .line 845
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentTargetOffsetY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 855
    :goto_1
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentTargetOffsetY:F

    .line 856
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    const-string v1, "canvasOffsetY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 859
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 860
    const-string v0, "TextEditorView"

    const-string/jumbo v1, "start targetOffset : %f"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 852
    :cond_2
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    .line 853
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1
.end method

.method protected onBitmapMatrixChanged()V
    .locals 3

    .prologue
    const v2, 0x3e99999a    # 0.3f

    .line 150
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onBitmapMatrixChanged()V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    .line 152
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 153
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    .line 155
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->addNewItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;)V

    .line 156
    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onCanvasMatrixChange()V

    .line 125
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    .line 128
    :cond_0
    return-void
.end method

.method public removeLastItem()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 815
    :cond_0
    return-void
.end method

.method public setActivation(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 766
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->clearActivation(Z)V

    .line 767
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isActivation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 772
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 773
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setDrawOutline(Z)V

    .line 774
    invoke-direct {p0, v0, v2, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    .line 775
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    .line 776
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    .line 777
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    .line 778
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->enableChildHandleMode()V

    .line 779
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    goto :goto_0
.end method

.method public setItemBold(Z)V
    .locals 4
    .param p1, "bold"    # Z

    .prologue
    const/4 v3, 0x1

    .line 685
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 689
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setBoldText(Z)V

    .line 690
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 691
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V
    .locals 4
    .param p1, "b"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .prologue
    const/4 v3, 0x1

    .line 653
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 657
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;Landroid/content/res/Resources;)V

    .line 659
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    .line 660
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    .line 661
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    goto :goto_0
.end method

.method public setItemShadow(Z)V
    .locals 4
    .param p1, "shadow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 695
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 699
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setShadow(Z)V

    .line 700
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 701
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 640
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 644
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 646
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setText(Ljava/lang/String;)V

    .line 647
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    .line 648
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;)V

    goto :goto_0
.end method

.method public setItemTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 4
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    const/4 v3, 0x0

    .line 705
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 709
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 710
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 711
    invoke-direct {p0, v0, v3, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemTextColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x1

    .line 665
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 669
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 670
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setColor(I)V

    .line 671
    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemTransparent(F)V
    .locals 4
    .param p1, "transparent"    # F

    .prologue
    const/4 v3, 0x1

    .line 715
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 719
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 720
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setTextTransparent(F)V

    .line 721
    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemTypeface(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 4
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    const/4 v3, 0x1

    .line 675
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    .line 679
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    invoke-interface {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setActivation(Z)V

    .line 680
    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 681
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;ZZ)V

    goto :goto_0
.end method

.method public setLastItemActivation()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mITextDialogConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setActivation(I)V

    .line 784
    return-void
.end method

.method public setTextEditorListener(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;)V
    .locals 0
    .param p1, "textEditorListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    .line 459
    return-void
.end method
