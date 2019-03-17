.class public Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;
.super Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleVectorNode;
.source "DoodleArrowNode.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field private static sBackground:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArrowWidth:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mPoint_1:[F

.field private mPoint_2:[F

.field private mRotateMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->ARROW:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 111
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x2

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleVectorNode;-><init>(Landroid/content/res/Resources;Z)V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_2:[F

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x2

    .line 108
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleVectorNode;-><init>(Landroid/os/Parcel;)V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_2:[F

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected drawSafely(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    invoke-virtual {p0, p1, v10}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->configCanvas(Landroid/graphics/Canvas;Z)V

    .line 55
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mEndPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v4, v5, v6

    .line 56
    .local v4, "y":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mEndPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v3, v5, v6

    .line 58
    .local v3, "x":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v5, v10

    .line 59
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aput v6, v5, v11

    .line 61
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_2:[F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mEndPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v5, v10

    .line 62
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_2:[F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mEndPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aput v6, v5, v11

    .line 64
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 65
    .local v0, "toHorizontal":D
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mRotateMatrix:Landroid/graphics/Matrix;

    neg-double v6, v0

    double-to-float v6, v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    aget v7, v7, v10

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    aget v8, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 66
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_2:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 67
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_2:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPoint_1:[F

    aget v6, v6, v10

    sub-float v2, v5, v6

    .line 68
    .local v2, "width":F
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mArrowWidth:F

    .line 69
    float-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v2, v6

    .line 70
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    const/high16 v5, 0x42340000    # 45.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 72
    double-to-float v5, v0

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 73
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mBackground:Landroid/graphics/drawable/Drawable;

    float-to-int v6, v2

    neg-int v6, v6

    float-to-int v7, v2

    invoke-virtual {v5, v10, v6, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    return-void
.end method

.method public getDoodleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->DOODLE_ITEM:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->sBackground:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->sBackground:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f0200ed

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->sBackground:Ljava/lang/ref/Reference;

    .line 44
    :cond_1
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->sBackground:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 49
    return-void
.end method

.method protected refreshRectByPoint()V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleVectorNode;->refreshRectByPoint()V

    .line 82
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mArrowWidth:F

    const v2, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 83
    .local v0, "in":F
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 84
    return-void
.end method

.method public setPaintColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleVectorNode;->setPaintColor(I)V

    .line 89
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleVectorNode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    return-void
.end method
