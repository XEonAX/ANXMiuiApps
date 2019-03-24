.class public Lmiui/imagefilters/HslFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslFilter.java"


# instance fields
.field private mHueAdjust:F

.field private mHueModify:F

.field private mLightnessAdjust:F

.field private mLightnessModify:F

.field private mSaturationAdjust:F

.field private mSaturationModify:F

.field public useHsv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 4
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 5
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 6
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 8
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    .line 9
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    .line 10
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 19
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    move-object/from16 v0, p0

    .line 63
    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 64
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 65
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 66
    .local v4, "pixels":[I
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 68
    .local v5, "triple":[F
    const/4 v6, 0x0

    move v7, v6

    .local v7, "x":I
    :goto_0
    if-ge v7, v2, :cond_d

    .line 69
    move v8, v6

    .local v8, "y":I
    :goto_1
    if-ge v8, v3, :cond_c

    .line 71
    mul-int v9, v8, v2

    add-int/2addr v9, v7

    .line 72
    .local v9, "colorIndex":I
    aget v10, v4, v9

    .line 75
    .local v10, "rgb":I
    iget-boolean v11, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v11, :cond_0

    .line 76
    invoke-static {v10, v5}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(I[F)V

    goto :goto_2

    .line 78
    :cond_0
    invoke-static {v10, v5}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 80
    :goto_2
    aget v11, v5, v6

    .line 81
    .local v11, "h":F
    const/4 v12, 0x1

    aget v12, v5, v12

    .line 82
    .local v12, "s":F
    const/4 v13, 0x2

    aget v13, v5, v13

    .line 85
    .local v13, "l":F
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_1

    .line 86
    iget v11, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    goto :goto_3

    .line 87
    :cond_1
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_3

    .line 88
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    add-float/2addr v11, v14

    .line 89
    const/high16 v14, 0x43b40000    # 360.0f

    cmpl-float v16, v11, v14

    if-ltz v16, :cond_2

    .line 90
    sub-float/2addr v11, v14

    goto :goto_3

    .line 91
    :cond_2
    cmpg-float v16, v11, v15

    if-gez v16, :cond_3

    .line 92
    add-float/2addr v11, v14

    .line 97
    :cond_3
    :goto_3
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v14, :cond_4

    .line 98
    iget v12, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    goto :goto_5

    .line 99
    :cond_4
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_7

    .line 100
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_5

    .line 101
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    add-float/2addr v14, v6

    mul-float/2addr v12, v14

    .line 110
    move v6, v15

    goto :goto_4

    .line 103
    :cond_5
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v14, v14, v16

    invoke-static {v6, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 104
    .local v14, "multipleFactor":F
    iget v15, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v15, v15, v17

    mul-float v15, v15, v16

    .line 105
    .local v15, "additionFactor":F
    add-float v16, v6, v14

    mul-float v12, v12, v16

    .line 106
    const/4 v6, 0x0

    cmpl-float v16, v15, v6

    if-lez v16, :cond_6

    .line 107
    add-float/2addr v12, v15

    .line 110
    .end local v14    # "multipleFactor":F
    .end local v15    # "additionFactor":F
    :cond_6
    :goto_4
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v6, v12, v14}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    .line 114
    :cond_7
    :goto_5
    iget v6, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_8

    .line 115
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    goto :goto_6

    .line 116
    :cond_8
    iget v6, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_a

    .line 117
    iget v6, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    const/4 v14, 0x0

    cmpg-float v6, v6, v14

    if-gtz v6, :cond_9

    .line 118
    iget v6, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v6, v14

    mul-float/2addr v13, v6

    goto :goto_6

    .line 120
    :cond_9
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v6, v14, v13

    iget v15, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    sub-float v15, v14, v15

    mul-float/2addr v6, v15

    sub-float v13, v14, v6

    .line 126
    :cond_a
    :goto_6
    iget-boolean v6, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v6, :cond_b

    .line 127
    invoke-static {v11, v12, v13}, Lmiui/imagefilters/ImageFilterUtils;->HsvToRgb(FFF)I

    move-result v6

    .local v6, "newRgb":I
    goto :goto_7

    .line 129
    .end local v6    # "newRgb":I
    :cond_b
    invoke-static {v11, v12, v13}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v6

    .line 133
    .restart local v6    # "newRgb":I
    :goto_7
    const v14, 0xffffff

    and-int/2addr v14, v6

    aget v15, v4, v9

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v4, v9

    .line 69
    .end local v6    # "newRgb":I
    .end local v9    # "colorIndex":I
    .end local v10    # "rgb":I
    .end local v11    # "h":F
    .end local v12    # "s":F
    .end local v13    # "l":F
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 68
    .end local v8    # "y":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 136
    .end local v7    # "x":I
    :cond_d
    return-void
.end method

.method public setHueAdjust(F)V
    .locals 2
    .param p1, "hue"    # F

    .line 41
    const/high16 v0, -0x3ccc0000    # -180.0f

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    .line 42
    return-void
.end method

.method public setHueModify(F)V
    .locals 2
    .param p1, "hue"    # F

    .line 18
    const/4 v0, 0x0

    const v1, 0x43b3fffd    # 359.9999f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 19
    return-void
.end method

.method public setLightnessAdjust(F)V
    .locals 2
    .param p1, "lightness"    # F

    .line 56
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    .line 58
    return-void
.end method

.method public setLightnessModify(F)V
    .locals 2
    .param p1, "lightness"    # F

    .line 33
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 34
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 35
    return-void
.end method

.method public setSaturationAdjust(F)V
    .locals 2
    .param p1, "saturation"    # F

    .line 48
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    .line 50
    return-void
.end method

.method public setSaturationModify(F)V
    .locals 2
    .param p1, "saturation"    # F

    .line 25
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 26
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 27
    return-void
.end method
