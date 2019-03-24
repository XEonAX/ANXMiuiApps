.class public Lmiui/imagefilters/ColorMatrixFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ColorMatrixFilter.java"


# instance fields
.field private mColorMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 38
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    move-object/from16 v0, p0

    .line 18
    move-object/from16 v1, p1

    iget-object v2, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    if-eqz v2, :cond_3

    iget-object v2, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    array-length v2, v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 20
    :cond_0
    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 21
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 22
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 24
    .local v4, "pixels":[I
    iget-object v5, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 25
    .local v5, "a":F
    iget-object v7, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 26
    .local v7, "b":F
    iget-object v8, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    .line 27
    .local v8, "c":F
    iget-object v9, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    .line 28
    .local v9, "d":F
    iget-object v10, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    .line 29
    .local v10, "e":F
    iget-object v11, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    .line 30
    .local v11, "f":F
    iget-object v12, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v13, 0x6

    aget v12, v12, v13

    .line 31
    .local v12, "g":F
    iget-object v13, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v14, 0x7

    aget v13, v13, v14

    .line 32
    .local v13, "h":F
    iget-object v14, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/16 v15, 0x8

    aget v14, v14, v15

    .line 33
    .local v14, "i":F
    iget-object v15, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/16 v16, 0x9

    aget v15, v15, v16

    .line 34
    .local v15, "j":F
    iget-object v6, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/16 v16, 0xa

    aget v6, v6, v16

    .line 35
    .local v6, "k":F
    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/16 v16, 0xb

    aget v1, v1, v16

    .line 36
    .local v1, "l":F
    move/from16 v17, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "l":F
    .local v17, "l":F
    const/16 v16, 0xc

    aget v1, v1, v16

    .line 37
    .local v1, "m":F
    move/from16 v18, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "m":F
    .local v18, "m":F
    const/16 v16, 0xd

    aget v1, v1, v16

    .line 38
    .local v1, "n":F
    move/from16 v19, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "n":F
    .local v19, "n":F
    const/16 v16, 0xe

    aget v1, v1, v16

    .line 39
    .local v1, "o":F
    move/from16 v20, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "o":F
    .local v20, "o":F
    const/16 v16, 0xf

    aget v1, v1, v16

    .line 40
    .local v1, "p":F
    move/from16 v21, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "p":F
    .local v21, "p":F
    const/16 v16, 0x10

    aget v1, v1, v16

    .line 41
    .local v1, "q":F
    move/from16 v22, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "q":F
    .local v22, "q":F
    const/16 v16, 0x11

    aget v1, v1, v16

    .line 42
    .local v1, "r":F
    move/from16 v23, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "r":F
    .local v23, "r":F
    const/16 v16, 0x12

    aget v1, v1, v16

    .line 43
    .local v1, "s":F
    move/from16 v24, v1

    iget-object v1, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .end local v1    # "s":F
    .local v24, "s":F
    const/16 v16, 0x13

    aget v1, v1, v16

    .line 45
    .local v1, "t":F
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_0
    move/from16 v25, v16

    .end local v16    # "y":I
    .local v25, "y":I
    add-int/lit8 v0, v3, -0x1

    move/from16 v26, v3

    move/from16 v3, v25

    if-gt v3, v0, :cond_2

    .line 46
    .end local v25    # "y":I
    .local v3, "y":I
    .local v26, "height":I
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    move/from16 v27, v1

    add-int/lit8 v1, v2, -0x1

    .end local v1    # "t":F
    .local v27, "t":F
    if-gt v0, v1, :cond_1

    .line 47
    mul-int v25, v3, v2

    add-int v25, v25, v0

    .line 48
    .local v25, "colorIndex":I
    aget v1, v4, v25

    .line 49
    .local v1, "color":I
    move/from16 v28, v2

    ushr-int/lit8 v2, v1, 0x10

    .end local v2    # "width":I
    .local v28, "width":I
    move/from16 v29, v3

    const/16 v3, 0xff

    .end local v3    # "y":I
    .local v29, "y":I
    and-int/2addr v2, v3

    .line 50
    .local v2, "R":I
    move/from16 v30, v0

    ushr-int/lit8 v0, v1, 0x8

    .end local v0    # "x":I
    .local v30, "x":I
    and-int/2addr v0, v3

    .line 51
    .local v0, "G":I
    and-int/lit16 v3, v1, 0xff

    .line 52
    .local v3, "B":I
    move-object/from16 v31, v4

    ushr-int/lit8 v4, v1, 0x18

    .end local v4    # "pixels":[I
    .local v31, "pixels":[I
    move/from16 v32, v1

    const/16 v1, 0xff

    and-int/2addr v4, v1

    .line 54
    .end local v1    # "color":I
    .local v4, "A":I
    .local v32, "color":I
    int-to-float v1, v2

    mul-float/2addr v1, v5

    move/from16 v33, v5

    int-to-float v5, v0

    .end local v5    # "a":F
    .local v33, "a":F
    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    int-to-float v5, v3

    mul-float/2addr v5, v8

    add-float/2addr v1, v5

    int-to-float v5, v4

    mul-float/2addr v5, v9

    add-float/2addr v1, v5

    add-float/2addr v1, v10

    float-to-int v1, v1

    move/from16 v34, v7

    const/16 v5, 0xff

    const/4 v7, 0x0

    invoke-static {v7, v1, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v1

    .line 55
    .end local v7    # "b":F
    .local v1, "newR":I
    .local v34, "b":F
    int-to-float v5, v2

    mul-float/2addr v5, v11

    int-to-float v7, v0

    mul-float/2addr v7, v12

    add-float/2addr v5, v7

    int-to-float v7, v3

    mul-float/2addr v7, v13

    add-float/2addr v5, v7

    int-to-float v7, v4

    mul-float/2addr v7, v14

    add-float/2addr v5, v7

    add-float/2addr v5, v15

    float-to-int v5, v5

    move/from16 v35, v8

    const/16 v7, 0xff

    const/4 v8, 0x0

    invoke-static {v8, v5, v7}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v5

    .line 56
    .end local v8    # "c":F
    .local v5, "newG":I
    .local v35, "c":F
    int-to-float v7, v2

    mul-float/2addr v7, v6

    int-to-float v8, v0

    mul-float v8, v8, v17

    add-float/2addr v7, v8

    int-to-float v8, v3

    mul-float v8, v8, v18

    add-float/2addr v7, v8

    int-to-float v8, v4

    mul-float v8, v8, v19

    add-float/2addr v7, v8

    add-float v7, v7, v20

    float-to-int v7, v7

    move/from16 v36, v6

    const/4 v6, 0x0

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v7

    .line 57
    .end local v6    # "k":F
    .local v7, "newB":I
    .local v36, "k":F
    int-to-float v6, v2

    mul-float v6, v6, v21

    int-to-float v8, v0

    mul-float v8, v8, v22

    add-float/2addr v6, v8

    int-to-float v8, v3

    mul-float v8, v8, v23

    add-float/2addr v6, v8

    int-to-float v8, v4

    mul-float v8, v8, v24

    add-float/2addr v6, v8

    add-float v6, v6, v27

    float-to-int v6, v6

    move/from16 v37, v0

    const/4 v0, 0x0

    const/16 v8, 0xff

    invoke-static {v0, v6, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v6

    .line 59
    .end local v0    # "G":I
    .local v6, "newA":I
    .local v37, "G":I
    shl-int/lit8 v8, v6, 0x18

    shl-int/lit8 v16, v1, 0x10

    or-int v8, v8, v16

    shl-int/lit8 v16, v5, 0x8

    or-int v8, v8, v16

    or-int/2addr v8, v7

    aput v8, v31, v25

    .line 46
    .end local v1    # "newR":I
    .end local v2    # "R":I
    .end local v3    # "B":I
    .end local v4    # "A":I
    .end local v5    # "newG":I
    .end local v6    # "newA":I
    .end local v7    # "newB":I
    .end local v25    # "colorIndex":I
    .end local v32    # "color":I
    .end local v37    # "G":I
    add-int/lit8 v1, v30, 0x1

    .end local v30    # "x":I
    .local v1, "x":I
    move v0, v1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v31

    move/from16 v5, v33

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v6, v36

    goto/16 :goto_1

    .line 45
    .end local v1    # "x":I
    .end local v28    # "width":I
    .end local v29    # "y":I
    .end local v31    # "pixels":[I
    .end local v33    # "a":F
    .end local v34    # "b":F
    .end local v35    # "c":F
    .end local v36    # "k":F
    .local v2, "width":I
    .local v3, "y":I
    .local v4, "pixels":[I
    .local v5, "a":F
    .local v6, "k":F
    .local v7, "b":F
    .restart local v8    # "c":F
    :cond_1
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v33, v5

    move/from16 v36, v6

    move/from16 v34, v7

    move/from16 v35, v8

    const/4 v0, 0x0

    .end local v2    # "width":I
    .end local v3    # "y":I
    .end local v4    # "pixels":[I
    .end local v5    # "a":F
    .end local v6    # "k":F
    .end local v7    # "b":F
    .end local v8    # "c":F
    .restart local v28    # "width":I
    .restart local v29    # "y":I
    .restart local v31    # "pixels":[I
    .restart local v33    # "a":F
    .restart local v34    # "b":F
    .restart local v35    # "c":F
    .restart local v36    # "k":F
    add-int/lit8 v16, v29, 0x1

    .end local v29    # "y":I
    .restart local v16    # "y":I
    move/from16 v3, v26

    move/from16 v1, v27

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 62
    .end local v16    # "y":I
    .end local v27    # "t":F
    .end local v28    # "width":I
    .end local v31    # "pixels":[I
    .end local v33    # "a":F
    .end local v34    # "b":F
    .end local v35    # "c":F
    .end local v36    # "k":F
    .local v1, "t":F
    .restart local v2    # "width":I
    .restart local v4    # "pixels":[I
    .restart local v5    # "a":F
    .restart local v6    # "k":F
    .restart local v7    # "b":F
    .restart local v8    # "c":F
    :cond_2
    move/from16 v27, v1

    move/from16 v28, v2

    move-object/from16 v31, v4

    move/from16 v33, v5

    move/from16 v36, v6

    move/from16 v34, v7

    move/from16 v35, v8

    .end local v1    # "t":F
    .end local v2    # "width":I
    .end local v4    # "pixels":[I
    .end local v5    # "a":F
    .end local v6    # "k":F
    .end local v7    # "b":F
    .end local v8    # "c":F
    .restart local v27    # "t":F
    .restart local v28    # "width":I
    .restart local v31    # "pixels":[I
    .restart local v33    # "a":F
    .restart local v34    # "b":F
    .restart local v35    # "c":F
    .restart local v36    # "k":F
    return-void

    .line 18
    .end local v9    # "d":F
    .end local v10    # "e":F
    .end local v11    # "f":F
    .end local v12    # "g":F
    .end local v13    # "h":F
    .end local v14    # "i":F
    .end local v15    # "j":F
    .end local v17    # "l":F
    .end local v18    # "m":F
    .end local v19    # "n":F
    .end local v20    # "o":F
    .end local v21    # "p":F
    .end local v22    # "q":F
    .end local v23    # "r":F
    .end local v24    # "s":F
    .end local v26    # "height":I
    .end local v27    # "t":F
    .end local v28    # "width":I
    .end local v31    # "pixels":[I
    .end local v33    # "a":F
    .end local v34    # "b":F
    .end local v35    # "c":F
    .end local v36    # "k":F
    :cond_3
    :goto_2
    return-void
.end method

.method public setColorMatrix([F)V
    .locals 0
    .param p1, "colorMatrix"    # [F

    .line 13
    iput-object p1, p0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .line 14
    return-void
.end method
