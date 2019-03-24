.class public Lmiui/imagefilters/EdgesFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "EdgesFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 18
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 11
    move-object/from16 v0, p1

    iget v1, v0, Lmiui/imagefilters/ImageData;->width:I

    .line 12
    .local v1, "width":I
    iget v2, v0, Lmiui/imagefilters/ImageData;->height:I

    .line 13
    .local v2, "height":I
    iget-object v3, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 14
    .local v3, "pixels":[I
    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 16
    .local v4, "hsl":[F
    filled-new-array {v1, v2}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 17
    .local v5, "luminance":[[I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "y":I
    :goto_0
    if-ge v7, v2, :cond_1

    .line 18
    move v8, v6

    .local v8, "x":I
    :goto_1
    if-ge v8, v1, :cond_0

    .line 19
    mul-int v9, v7, v1

    add-int/2addr v9, v8

    aget v9, v3, v9

    .line 20
    .local v9, "color":I
    aget-object v10, v5, v8

    invoke-static {v9}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v11

    aput v11, v10, v7

    .line 18
    .end local v9    # "color":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 17
    .end local v8    # "x":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 26
    .end local v7    # "y":I
    :cond_1
    const/4 v7, 0x1

    move v8, v7

    .local v8, "y":I
    :goto_2
    add-int/lit8 v9, v2, -0x1

    if-ge v8, v9, :cond_3

    .line 27
    move v9, v7

    .local v9, "x":I
    :goto_3
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_2

    .line 28
    mul-int v10, v8, v1

    add-int/2addr v10, v9

    .line 30
    .local v10, "colorIndex":I
    add-int/lit8 v11, v9, -0x1

    aget-object v11, v5, v11

    add-int/lit8 v12, v8, -0x1

    aget v11, v11, v12

    neg-int v11, v11

    add-int/lit8 v12, v9, -0x1

    aget-object v12, v5, v12

    add-int/lit8 v13, v8, -0x1

    const/4 v14, 0x2

    add-int/2addr v13, v14

    aget v12, v12, v13

    add-int/2addr v11, v12

    add-int/lit8 v12, v9, -0x1

    add-int/2addr v12, v7

    aget-object v12, v5, v12

    add-int/lit8 v13, v8, -0x1

    aget v12, v12, v13

    mul-int/2addr v12, v14

    sub-int/2addr v11, v12

    add-int/lit8 v12, v9, -0x1

    add-int/2addr v12, v7

    aget-object v12, v5, v12

    add-int/lit8 v13, v8, -0x1

    add-int/2addr v13, v14

    aget v12, v12, v13

    mul-int/2addr v12, v14

    add-int/2addr v11, v12

    add-int/lit8 v12, v9, -0x1

    add-int/2addr v12, v14

    aget-object v12, v5, v12

    add-int/lit8 v13, v8, -0x1

    aget v12, v12, v13

    sub-int/2addr v11, v12

    add-int/lit8 v12, v9, -0x1

    add-int/2addr v12, v14

    aget-object v12, v5, v12

    add-int/lit8 v13, v8, -0x1

    add-int/2addr v13, v14

    aget v12, v12, v13

    add-int/2addr v11, v12

    .line 32
    .local v11, "grayX":I
    add-int/lit8 v12, v9, -0x1

    aget-object v12, v5, v12

    add-int/lit8 v13, v8, -0x1

    aget v12, v12, v13

    add-int/lit8 v13, v9, -0x1

    aget-object v13, v5, v13

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v15, v7

    aget v13, v13, v15

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v9, -0x1

    aget-object v13, v5, v13

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v15, v14

    aget v13, v13, v15

    add-int/2addr v12, v13

    add-int/lit8 v13, v9, -0x1

    add-int/2addr v13, v14

    aget-object v13, v5, v13

    add-int/lit8 v15, v8, -0x1

    aget v13, v13, v15

    sub-int/2addr v12, v13

    add-int/lit8 v13, v9, -0x1

    add-int/2addr v13, v14

    aget-object v13, v5, v13

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v15, v7

    aget v13, v13, v15

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    add-int/lit8 v13, v9, -0x1

    add-int/2addr v13, v14

    aget-object v13, v5, v13

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v15, v14

    aget v13, v13, v15

    sub-int/2addr v12, v13

    .line 35
    .local v12, "grayY":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v13, v15

    const/16 v15, 0xff

    invoke-static {v6, v13, v15}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v13

    sub-int/2addr v15, v13

    .line 37
    .local v15, "magnitude":I
    aget v13, v3, v10

    invoke-static {v13, v4}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 38
    int-to-float v13, v15

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v13, v13, v16

    aput v13, v4, v14

    .line 39
    invoke-static {v4}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb([F)I

    move-result v13

    .line 40
    .local v13, "newRgb":I
    const v14, 0xffffff

    and-int/2addr v14, v13

    aget v16, v3, v10

    const/high16 v17, -0x1000000

    and-int v16, v16, v17

    or-int v14, v14, v16

    aput v14, v3, v10

    .line 27
    .end local v10    # "colorIndex":I
    .end local v13    # "newRgb":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 26
    .end local v9    # "x":I
    .end local v11    # "grayX":I
    .end local v12    # "grayY":I
    .end local v15    # "magnitude":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 43
    .end local v8    # "y":I
    :cond_3
    return-void
.end method
