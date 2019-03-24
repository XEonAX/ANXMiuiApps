.class public Lmiui/imagefilters/TransformFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "TransformFilter.java"


# instance fields
.field private mBasedOnContent:Z

.field private mKeepAspectRatio:Z

.field private mMinVisibleAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointsMapping:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/imagefilters/TransformFilter;->mPaint:Landroid/graphics/Paint;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    return-void
.end method

.method private scanEdge(II[IZZ)I
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # [I
    .param p4, "scanX"    # Z
    .param p5, "scanLeftTop"    # Z

    .line 97
    if-eqz p4, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 98
    .local v0, "d1Count":I
    :goto_0
    if-eqz p4, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    move v1, p1

    .line 99
    .local v1, "d2Count":I
    :goto_1
    const/4 v2, 0x0

    if-eqz p5, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v0, -0x1

    .line 100
    .local v3, "borderStart":I
    :goto_2
    if-eqz p5, :cond_3

    add-int/lit8 v4, v0, -0x1

    goto :goto_3

    :cond_3
    move v4, v2

    .line 102
    .local v4, "borderEnd":I
    :goto_3
    move v5, v3

    .local v5, "d1":I
    :goto_4
    if-eq v5, v4, :cond_8

    .line 103
    move v6, v2

    .local v6, "d2":I
    :goto_5
    if-ge v6, v1, :cond_6

    .line 104
    if-eqz p4, :cond_4

    mul-int v7, v6, p1

    add-int/2addr v7, v5

    goto :goto_6

    :cond_4
    mul-int v7, v5, p1

    add-int/2addr v7, v6

    .line 105
    .local v7, "index":I
    :goto_6
    aget v8, p3, v7

    ushr-int/lit8 v8, v8, 0x18

    iget v9, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    if-le v8, v9, :cond_5

    .line 106
    return v5

    .line 103
    .end local v7    # "index":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 110
    .end local v6    # "d2":I
    :cond_6
    if-eqz p5, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 111
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 114
    .end local v5    # "d1":I
    :cond_8
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 31
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    move-object/from16 v6, p0

    .line 43
    move-object/from16 v7, p1

    iget v8, v7, Lmiui/imagefilters/ImageData;->width:I

    .line 44
    .local v8, "width":I
    iget v9, v7, Lmiui/imagefilters/ImageData;->height:I

    .line 45
    .local v9, "height":I
    iget-object v10, v7, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 47
    .local v10, "pixels":[I
    const/4 v11, 0x0

    .line 48
    .local v11, "left":F
    const/4 v12, 0x0

    .line 49
    .local v12, "top":F
    int-to-float v13, v8

    .line 50
    .local v13, "right":F
    int-to-float v14, v9

    .line 52
    .local v14, "bottom":F
    iget-object v0, v6, Lmiui/imagefilters/TransformFilter;->mPointsMapping:[F

    .line 53
    .local v0, "pointsMapping":[F
    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v5, 0x8

    if-nez v0, :cond_0

    .line 54
    new-array v1, v5, [F

    aput v11, v1, v22

    aput v12, v1, v21

    aput v13, v1, v20

    aput v12, v1, v19

    aput v13, v1, v18

    aput v14, v1, v17

    aput v11, v1, v16

    aput v14, v1, v15

    move-object v0, v1

    .line 57
    .end local v0    # "pointsMapping":[F
    .local v29, "pointsMapping":[F
    :cond_0
    move-object/from16 v29, v0

    iget-boolean v0, v6, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    if-eqz v0, :cond_4

    .line 58
    const/4 v4, 0x1

    const/16 v23, 0x1

    move-object v0, v6

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v15, v5

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v11, v0

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v12, v0

    .line 60
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v13, v0

    .line 61
    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/TransformFilter;->scanEdge(II[IZZ)I

    move-result v0

    int-to-float v14, v0

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v11, v0

    if-eqz v0, :cond_3

    cmpl-float v0, v11, v13

    if-eqz v0, :cond_3

    cmpl-float v0, v12, v14

    if-nez v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-boolean v0, v6, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    if-eqz v0, :cond_5

    .line 69
    sub-float v0, v13, v11

    .line 70
    .local v0, "scanedWidth":F
    sub-float v1, v14, v12

    .line 71
    .local v1, "scanedHeight":F
    int-to-float v2, v8

    div-float v2, v0, v2

    int-to-float v3, v9

    div-float v3, v1, v3

    cmpl-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_2

    .line 72
    int-to-float v2, v8

    div-float v2, v0, v2

    int-to-float v4, v9

    mul-float/2addr v2, v4

    .line 73
    .local v2, "newHeight":F
    sub-float v4, v2, v1

    div-float/2addr v4, v3

    sub-float/2addr v12, v4

    .line 74
    sub-float v4, v2, v1

    div-float/2addr v4, v3

    add-float/2addr v14, v4

    .line 75
    .end local v2    # "newHeight":F
    goto :goto_1

    .line 76
    :cond_2
    int-to-float v2, v9

    div-float v2, v1, v2

    int-to-float v4, v8

    mul-float/2addr v2, v4

    .line 77
    .local v2, "newWidth":F
    sub-float v4, v2, v0

    div-float/2addr v4, v3

    sub-float/2addr v11, v4

    .line 78
    sub-float v4, v2, v0

    div-float/2addr v4, v3

    add-float/2addr v13, v4

    .end local v0    # "scanedWidth":F
    .end local v1    # "scanedHeight":F
    .end local v2    # "newWidth":F
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    return-void

    .line 83
    :cond_4
    move v15, v5

    :cond_5
    :goto_1
    new-array v0, v15, [F

    aput v11, v0, v22

    aput v12, v0, v21

    aput v13, v0, v20

    aput v12, v0, v19

    aput v13, v0, v18

    aput v14, v0, v17

    aput v11, v0, v16

    const/4 v1, 0x7

    aput v14, v0, v1

    move-object/from16 v24, v0

    .line 85
    .local v24, "mappingSrc":[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x4

    move-object/from16 v23, v0

    move-object/from16 v26, v29

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    invoke-static/range {p1 .. p1}, Lmiui/imagefilters/ImageData;->imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    .local v1, "currentBitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v3, "canvas":Landroid/graphics/Canvas;
    iget-object v4, v6, Lmiui/imagefilters/TransformFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 92
    invoke-static {v2}, Lmiui/imagefilters/ImageData;->bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;

    move-result-object v4

    iget-object v4, v4, Lmiui/imagefilters/ImageData;->pixels:[I

    iput-object v4, v7, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 94
    .end local v1    # "currentBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_6
    return-void
.end method

.method public setBasedOnContent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 30
    iput-boolean p1, p0, Lmiui/imagefilters/TransformFilter;->mBasedOnContent:Z

    .line 31
    return-void
.end method

.method public setContentKeepAspectRatio(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 34
    iput-boolean p1, p0, Lmiui/imagefilters/TransformFilter;->mKeepAspectRatio:Z

    .line 35
    return-void
.end method

.method public setMinVisibleAlpha(I)V
    .locals 2
    .param p1, "value"    # I

    .line 38
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/TransformFilter;->mMinVisibleAlpha:I

    .line 39
    return-void
.end method

.method public setPointsMapping([F)V
    .locals 2
    .param p1, "value"    # [F
    .annotation runtime Lmiui/imagefilters/FilterParamType;
        value = .enum Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;
    .end annotation

    .line 24
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 25
    :cond_0
    iput-object p1, p0, Lmiui/imagefilters/TransformFilter;->mPointsMapping:[F

    .line 27
    :cond_1
    return-void
.end method
