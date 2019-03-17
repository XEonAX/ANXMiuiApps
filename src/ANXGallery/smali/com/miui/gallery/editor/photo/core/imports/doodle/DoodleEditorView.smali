.class public Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
.super Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.source "DoodleEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;,
        Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;,
        Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$TouchAction;,
        Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;
    }
.end annotation


# instance fields
.field private mActivationIndex:I

.field private mColor:I

.field private mCurrentDoodleItem:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field private mDoodleCallback:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

.field private mDoodleNodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;",
            ">;"
        }
    .end annotation
.end field

.field private mGesListener:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;

.field private mIsAddNew:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixValues:[F

.field private mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

.field private mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

.field private mPaintSize:F

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mRevokedDoodleNodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRectFTemp:Landroid/graphics/RectF;

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mMatrixValues:[F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mIsAddNew:Z

    .line 36
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mGesListener:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRevokedDoodleNodeList:Ljava/util/LinkedList;

    .line 40
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mCurrentDoodleItem:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 42
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mColor:I

    .line 46
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mPaintSize:F

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRectFTemp:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate([F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate([F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRevokedDoodleNodeList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->notifyOperationUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mIsAddNew:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mCurrentDoodleItem:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mIsAddNew:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->addNewItem(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleCallback:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/graphics/RectF;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->getRectOverScrollStatus(Landroid/graphics/RectF;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->deleteItem(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setActivation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertDistanceX(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertDistanceY(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method private addNewItem(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 3
    .param p1, "doodleNode"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 404
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mMatrixValues:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 405
    .local v0, "scale":F
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mPaintSize:F

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->setPaintSize(F)V

    .line 406
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mColor:I

    invoke-virtual {p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->setPaintColor(I)V

    .line 407
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method private configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 8
    .param p1, "doodleNode"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getDoodleType()Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;->VECTOR:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    if-ne v0, v2, :cond_1

    .line 392
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getDoodleName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->ARROW:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v5, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v4, v1

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v5, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 8
    .param p1, "doodleNode"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getUserLocationX()F

    move-result v6

    .line 98
    .local v6, "offsetX":F
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getUserLocationY()F

    move-result v7

    .line 99
    .local v7, "offsetY":F
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getStrokeRectF(Landroid/graphics/RectF;)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRectFTemp:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateDegrees()F

    move-result v3

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateX()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->getRotateY()F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configDecorationPositon(Landroid/graphics/RectF;Landroid/graphics/Matrix;FFF)V

    .line 102
    return-void
.end method

.method private deleteItem(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V
    .locals 1
    .param p1, "doodleNode"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .prologue
    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    .line 416
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 418
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->disableChildHandleMode()V

    .line 419
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mGesListener:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$GesListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;)V

    .line 74
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    .line 75
    return-void
.end method

.method private notifyOperationUpdate()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;->onOperationUpdate()V

    .line 544
    :cond_0
    return-void
.end method

.method private setActivation(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    .line 381
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 383
    .local v0, "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    .line 384
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    .line 386
    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 387
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->enableChildHandleMode()V

    .line 388
    return-void
.end method


# virtual methods
.method public canRevert()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRevokedDoodleNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRevoke()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearActivation()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    .line 375
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 376
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->disableChildHandleMode()V

    .line 377
    return-void
.end method

.method public doRevert()V
    .locals 2

    .prologue
    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    .line 439
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRevokedDoodleNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 441
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->notifyOperationUpdate()V

    .line 442
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->disableChildHandleMode()V

    .line 443
    return-void
.end method

.method public doRevoke()V
    .locals 3

    .prologue
    .line 430
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    .line 431
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mRevokedDoodleNodeList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 433
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->notifyOperationUpdate()V

    .line 434
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->disableChildHandleMode()V

    .line 435
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 81
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    .line 84
    .local v0, "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->draw(Landroid/graphics/Canvas;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 90
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 91
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void
.end method

.method public export()Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;
    .locals 3

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->clearActivation()V

    .line 447
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleEntry;-><init>(Landroid/graphics/RectF;Ljava/util/List;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onCanvasMatrixChange()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleNodeList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mActivationIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->invalidate()V

    .line 110
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 525
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mColor:I

    .line 526
    return-void
.end method

.method public setCurrentDoodleItem(Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;)V
    .locals 0
    .param p1, "currentDoodleItem"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mCurrentDoodleItem:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 371
    return-void
.end method

.method public setDoodleCallback(Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;)V
    .locals 0
    .param p1, "doodleCallback"    # Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mDoodleCallback:Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView$DoodleCallback;

    .line 530
    return-void
.end method

.method public setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V
    .locals 0
    .param p1, "operationUpdateListener"    # Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    .line 538
    return-void
.end method

.method public setPaintSize(F)V
    .locals 0
    .param p1, "paintSize"    # F

    .prologue
    .line 533
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/DoodleEditorView;->mPaintSize:F

    .line 534
    return-void
.end method
