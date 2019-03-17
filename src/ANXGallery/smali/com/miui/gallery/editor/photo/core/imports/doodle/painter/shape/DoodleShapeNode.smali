.class public abstract Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;
.super Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
.source "DoodleShapeNode.java"


# static fields
.field private static final DOODLE_TYPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;


# instance fields
.field private mCurrentPoint:[F

.field private mEndPointValue:[F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPrePoint:[F

.field private mRealEndPoint:Landroid/graphics/PointF;

.field private mStartPointValue:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;->SHAPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->DOODLE_TYPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x2

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;-><init>(Landroid/content/res/Resources;)V

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    .line 20
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    .line 21
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x2

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;-><init>(Landroid/os/Parcel;)V

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    .line 20
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    .line 21
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    .line 154
    return-void
.end method

.method private fixEnd(Landroid/graphics/PointF;)V
    .locals 14
    .param p1, "end"    # Landroid/graphics/PointF;

    .prologue
    const-wide v12, 0x4076800000000000L    # 360.0

    const-wide v10, 0x4046800000000000L    # 45.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v8

    .line 120
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    aput v4, v3, v9

    .line 121
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v3, v8

    .line 122
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v3, v9

    .line 124
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    float-to-double v4, v3

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    aget v3, v3, v8

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    aget v6, v6, v8

    sub-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 125
    .local v0, "currentDegrees":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 126
    const-wide/16 v4, 0x0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    add-double/2addr v0, v12

    .line 127
    :cond_0
    rem-double/2addr v0, v12

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "degreeOffset":F
    cmpl-double v3, v0, v10

    if-eqz v3, :cond_1

    const-wide v4, 0x4043800000000000L    # 39.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_1

    const-wide v4, 0x4049800000000000L    # 51.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    .line 131
    sub-double v4, v10, v0

    double-to-float v2, v4

    .line 133
    :cond_1
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPointValue:[F

    aget v5, v5, v9

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    aget v3, v3, v8

    iput v3, p1, Landroid/graphics/PointF;->x:F

    .line 139
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPointValue:[F

    aget v3, v3, v9

    iput v3, p1, Landroid/graphics/PointF;->y:F

    .line 140
    return-void
.end method


# virtual methods
.method public appendScale(F)V
    .locals 6
    .param p1, "scale"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 77
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 78
    .local v2, "width":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 79
    .local v0, "height":F
    mul-float v4, v2, p1

    sub-float/2addr v4, v2

    div-float v3, v4, v5

    .line 80
    .local v3, "widthOffset":F
    mul-float v4, v0, p1

    sub-float/2addr v4, v0

    div-float v1, v4, v5

    .line 81
    .local v1, "heightOffset":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 82
    neg-float v3, v3

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 85
    neg-float v1, v1

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 88
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 89
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 90
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 91
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->refreshRectByPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->countDecoration()V

    .line 93
    return-void
.end method

.method protected count()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 109
    return-void
.end method

.method public countRotateX()F
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    return v0
.end method

.method public countRotateY()F
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getDoodleType()Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->DOODLE_TYPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    return-object v0
.end method

.method protected onReceivePosition(FFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isFirst"    # Z

    .prologue
    .line 36
    if-nez p3, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->fixEnd(Landroid/graphics/PointF;)V

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->refreshRectByPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 41
    :cond_0
    return-void
.end method

.method public processOnDownEvent(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->refreshPointByRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 46
    return-void
.end method

.method public processOnUp()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->processOnUp()V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 116
    return-void
.end method

.method public processScaleEvent(FFFFFFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "distanceX"    # F
    .param p6, "distanceY"    # F
    .param p7, "scaleIconX"    # F
    .param p8, "scaleIconY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    aput p3, v0, v5

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    aput p4, v0, v6

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    aget v1, v1, v5

    sub-float/2addr v1, p5

    aput v1, v0, v5

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    aget v1, v1, v6

    sub-float/2addr v1, p6

    aput v1, v0, v6

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mDegrees:F

    neg-float v1, v1

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRotateX:F

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mUserLocationX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRotateY:F

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mUserLocationY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    aget v1, v1, v5

    sub-float p5, v0, v1

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mCurrentPoint:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mPrePoint:[F

    aget v1, v1, v6

    sub-float p6, v0, v1

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p5

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->fixEnd(Landroid/graphics/PointF;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->mRealEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->refreshRectByPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleShapeNode;->countDecoration()V

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    return-void
.end method
