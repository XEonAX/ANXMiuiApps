.class public Lmiui/imagefilters/LevelsFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "LevelsFilter.java"


# instance fields
.field private mInputMax:F

.field private mInputMiddle:F

.field private mInputMin:F

.field private mIsFilterB:Z

.field private mIsFilterG:Z

.field private mIsFilterR:Z

.field private mOutputMax:F

.field private mOutputMin:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    .line 7
    const/high16 v1, 0x437f0000    # 255.0f

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    .line 9
    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    .line 10
    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    .line 13
    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    .line 14
    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    return-void
.end method

.method private static interpolate(FFFFFI)I
    .locals 8
    .param p0, "start"    # F
    .param p1, "gamma"    # F
    .param p2, "end"    # F
    .param p3, "outStart"    # F
    .param p4, "outEnd"    # F
    .param p5, "inputValue"    # I

    .line 79
    int-to-float v0, p5

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    float-to-int v0, p3

    return v0

    .line 80
    :cond_0
    int-to-float v0, p5

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    float-to-int v0, p4

    return v0

    .line 82
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    .line 83
    int-to-float v0, p5

    sub-float/2addr v0, p0

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    sub-float v1, p2, p0

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    float-to-int v0, v0

    return v0

    .line 85
    :cond_2
    sub-float v1, p2, p0

    .line 86
    .local v1, "inputRange":F
    sub-float v2, p4, p3

    .line 87
    .local v2, "outRange":F
    int-to-float v3, p5

    sub-float/2addr v3, p0

    div-float/2addr v3, v1

    .line 88
    .local v3, "factor":F
    sub-float v4, v0, v3

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v0, v4

    .line 89
    .end local v3    # "factor":F
    .local v0, "factor":F
    mul-float v3, v2, v0

    add-float/2addr v3, p3

    float-to-int v3, v3

    return v3
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 20
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    move-object/from16 v0, p0

    .line 47
    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 48
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 49
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 51
    .local v4, "pixels":[I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 52
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 54
    mul-int v8, v7, v2

    add-int/2addr v8, v6

    .line 55
    .local v8, "colorIndex":I
    aget v9, v4, v8

    .line 56
    .local v9, "argb":I
    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    ushr-int/lit8 v10, v10, 0x10

    .line 57
    .local v10, "r":I
    const v11, 0xff00

    and-int/2addr v11, v9

    ushr-int/lit8 v18, v11, 0x8

    .line 58
    .local v18, "g":I
    and-int/lit16 v15, v9, 0xff

    .line 61
    .local v15, "b":I
    iget-boolean v11, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    if-eqz v11, :cond_0

    .line 62
    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v5, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v19, v15

    move v15, v5

    .end local v15    # "b":I
    .local v19, "b":I
    move/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v10

    goto :goto_2

    .line 64
    .end local v19    # "b":I
    .restart local v15    # "b":I
    :cond_0
    move/from16 v19, v15

    .end local v15    # "b":I
    .restart local v19    # "b":I
    :goto_2
    iget-boolean v5, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    if-eqz v5, :cond_1

    .line 65
    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v15, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v5, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v16, v5

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v18

    .line 67
    :cond_1
    iget-boolean v5, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    if-eqz v5, :cond_2

    .line 68
    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v15, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v16, v19

    invoke-static/range {v11 .. v16}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v15

    .end local v19    # "b":I
    .restart local v15    # "b":I
    goto :goto_3

    .line 72
    .end local v15    # "b":I
    .restart local v19    # "b":I
    :cond_2
    move/from16 v15, v19

    .end local v19    # "b":I
    .restart local v15    # "b":I
    :goto_3
    shl-int/lit8 v5, v10, 0x10

    shl-int/lit8 v11, v18, 0x8

    or-int/2addr v5, v11

    or-int/2addr v5, v15

    const/high16 v11, -0x1000000

    and-int/2addr v11, v9

    or-int/2addr v5, v11

    aput v5, v4, v8

    .line 52
    .end local v8    # "colorIndex":I
    .end local v9    # "argb":I
    .end local v10    # "r":I
    .end local v15    # "b":I
    .end local v18    # "g":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 51
    .end local v7    # "y":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    .end local v6    # "x":I
    :cond_4
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 38
    .local v0, "outRgb":[Z
    invoke-static {p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->checkChannelParam(Ljava/lang/String;[Z)V

    .line 39
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    .line 40
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    .line 41
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    .line 42
    return-void
.end method

.method public setInputMax(F)V
    .locals 2
    .param p1, "value"    # F

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    .line 26
    return-void
.end method

.method public setInputMiddle(F)V
    .locals 2
    .param p1, "value"    # F

    .line 21
    const v0, 0x38d1b717    # 1.0E-4f

    const v1, 0x411fff97    # 9.9999f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    .line 22
    return-void
.end method

.method public setInputMin(F)V
    .locals 2
    .param p1, "value"    # F

    .line 17
    const/4 v0, 0x0

    const/high16 v1, 0x437d0000    # 253.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    .line 18
    return-void
.end method

.method public setOutputMax(F)V
    .locals 2
    .param p1, "value"    # F

    .line 33
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    .line 34
    return-void
.end method

.method public setOutputMin(F)V
    .locals 2
    .param p1, "value"    # F

    .line 29
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    .line 30
    return-void
.end method
