.class public Lcom/miui/gallery/util/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final mMatrixValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/miui/gallery/util/MatrixUtil;->mMatrixValues:[F

    return-void
.end method

.method public static getRotate(Landroid/graphics/Matrix;)F
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/util/MatrixUtil;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/miui/gallery/util/MatrixUtil;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 6
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/MatrixUtil;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/miui/gallery/util/MatrixUtil;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private static getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "whichValue"    # I

    .prologue
    .line 9
    sget-object v0, Lcom/miui/gallery/util/MatrixUtil;->mMatrixValues:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 10
    sget-object v0, Lcom/miui/gallery/util/MatrixUtil;->mMatrixValues:[F

    aget v0, v0, p1

    return v0
.end method
