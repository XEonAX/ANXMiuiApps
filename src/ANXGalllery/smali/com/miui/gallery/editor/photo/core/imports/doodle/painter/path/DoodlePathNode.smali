.class public Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;
.super Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
.source "DoodlePathNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field private static final DOODLE_TYPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

.field private mPath:Landroid/graphics/Path;

.field private mPointFList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;->PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->DOODLE_TYPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    .line 24
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 155
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;-><init>(Landroid/content/res/Resources;)V

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;-><init>(Landroid/os/Parcel;)V

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 151
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    .line 152
    const-class v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    .line 153
    return-void
.end method


# virtual methods
.method public append(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 80
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 84
    .local v2, "prePoint":Landroid/graphics/PointF;
    iget v3, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p1

    div-float v0, v3, v5

    .line 85
    .local v0, "currentX":F
    iget v3, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p2

    div-float v1, v3, v5

    .line 86
    .local v1, "currentY":F
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0
.end method

.method public appendScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mScale:F

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mScale:F

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->countDecoration()V

    goto :goto_0
.end method

.method public count()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 77
    return-void
.end method

.method public countRotateX()F
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    return v0
.end method

.method public countRotateY()F
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->configCanvas(Landroid/graphics/Canvas;Z)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 57
    return-void
.end method

.method public getDoodleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoodleType()Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->DOODLE_TYPE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode$DoodleDrawableType;

    return-object v0
.end method

.method protected init(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    return-void
.end method

.method public initForParcelable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->initForParcelable(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelablePathUtils;->getPathFromPointList(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 49
    return-void
.end method

.method protected onReceivePosition(FFZ)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isFirst"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->append(FF)V

    .line 72
    return-void
.end method

.method public processOnDownEvent(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 110
    return-void
.end method

.method public processScaleEvent(FFFFFFFF)V
    .locals 14
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "distanceX"    # F
    .param p6, "distanceY"    # F
    .param p7, "scaleIconX"    # F
    .param p8, "scaleIconY"    # F

    .prologue
    .line 114
    move/from16 v4, p3

    .line 115
    .local v4, "currentX":F
    move/from16 v5, p4

    .line 116
    .local v5, "currentY":F
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {p0, v9}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->getRectF(Landroid/graphics/RectF;)V

    .line 117
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectFTemp:Landroid/graphics/RectF;

    iget v10, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mUserLocationX:F

    iget v11, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mUserLocationY:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 118
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 119
    .local v2, "centerX":F
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 121
    .local v3, "centerY":F
    sub-float v9, p7, v2

    float-to-double v10, v9

    sub-float v9, p8, v3

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 122
    .local v0, "baseDistance":D
    sub-float v9, v4, v2

    float-to-double v10, v9

    sub-float v9, v5, v3

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 123
    .local v6, "distance":D
    div-double v10, v6, v0

    double-to-float v8, v10

    .line 124
    .local v8, "scale":F
    invoke-virtual {p0, v8}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->appendScale(F)V

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mPointFList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;->mParcelableMatrix:Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    return-void
.end method
