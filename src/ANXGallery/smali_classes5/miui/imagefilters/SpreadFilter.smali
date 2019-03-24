.class public Lmiui/imagefilters/SpreadFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "SpreadFilter.java"


# instance fields
.field private mIsAlphaSpread:Z

.field private mIsSpreadBlack:Z

.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    return-void
.end method

.method private static final getColor([IIIII)I
    .locals 2
    .param p0, "pixels"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 70
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    .line 71
    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    .line 72
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private getLuminance(II)I
    .locals 2
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .line 63
    invoke-static {p1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v0

    .line 64
    .local v0, "lum":I
    iget-boolean v1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    if-eqz v1, :cond_0

    rsub-int v0, v0, 0xff

    .line 65
    :cond_0
    mul-int/2addr v0, p2

    .line 66
    return v0
.end method

.method private processPerPixel([IIIII)I
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    move-object/from16 v0, p0

    .line 38
    iget v1, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    iget v2, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    mul-int/2addr v1, v2

    .line 39
    .local v1, "radiusSquare":I
    iget-boolean v2, v0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    const/16 v3, 0xff

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 40
    .local v2, "resultA":I
    :goto_0
    const/4 v4, 0x0

    .line 41
    .local v4, "resultRgb":I
    const/4 v5, -0x1

    .line 43
    .local v5, "resultLuminance":I
    iget v6, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    neg-int v6, v6

    .local v6, "yCursor":I
    :goto_1
    iget v7, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v6, v7, :cond_5

    .line 44
    iget v7, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    neg-int v7, v7

    .local v7, "xCursor":I
    :goto_2
    iget v8, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v7, v8, :cond_4

    .line 45
    mul-int v8, v6, v6

    mul-int v9, v7, v7

    add-int/2addr v8, v9

    if-le v8, v1, :cond_1

    .line 44
    move-object/from16 v11, p1

    move/from16 v12, p4

    move/from16 v13, p5

    goto :goto_4

    .line 47
    :cond_1
    add-int v9, p2, v7

    add-int v10, p3, v6

    move-object/from16 v11, p1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static {v11, v9, v10, v12, v13}, Lmiui/imagefilters/SpreadFilter;->getColor([IIIII)I

    move-result v9

    .line 48
    .local v9, "color":I
    ushr-int/lit8 v10, v9, 0x18

    and-int/2addr v10, v3

    .line 49
    .local v10, "alpha":I
    invoke-direct {v0, v9, v10}, Lmiui/imagefilters/SpreadFilter;->getLuminance(II)I

    move-result v14

    .line 50
    .local v14, "lum":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 51
    if-ne v5, v14, :cond_2

    .line 52
    move v4, v9

    .line 55
    :cond_2
    iget-boolean v3, v0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3

    :cond_3
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    move v2, v3

    .line 44
    .end local v9    # "color":I
    .end local v10    # "alpha":I
    .end local v14    # "lum":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0xff

    goto :goto_2

    .line 43
    .end local v7    # "xCursor":I
    :cond_4
    move-object/from16 v11, p1

    move/from16 v12, p4

    move/from16 v13, p5

    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0xff

    goto :goto_1

    .line 59
    .end local v6    # "yCursor":I
    :cond_5
    move-object/from16 v11, p1

    move/from16 v12, p4

    move/from16 v13, p5

    shl-int/lit8 v3, v2, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v4

    or-int/2addr v3, v6

    return v3
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 14
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 23
    iget v6, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 24
    .local v6, "width":I
    iget v7, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 25
    .local v7, "height":I
    iget-object v8, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 26
    .local v8, "pixels":[I
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v9

    .line 28
    .local v9, "backPixels":[I
    const/4 v10, 0x0

    move v0, v10

    .local v0, "y":I
    :goto_0
    move v11, v0

    .end local v0    # "y":I
    .local v11, "y":I
    add-int/lit8 v0, v7, -0x1

    if-gt v11, v0, :cond_1

    .line 29
    move v0, v10

    .local v0, "x":I
    :goto_1
    move v12, v0

    .end local v0    # "x":I
    .local v12, "x":I
    add-int/lit8 v0, v6, -0x1

    if-gt v12, v0, :cond_0

    .line 30
    mul-int v0, v11, v6

    add-int v13, v0, v12

    .line 31
    .local v13, "colorIndex":I
    move-object v0, p0

    move-object v1, v8

    move v2, v12

    move v3, v11

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/SpreadFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v9, v13

    .line 29
    .end local v13    # "colorIndex":I
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "x":I
    .restart local v0    # "x":I
    goto :goto_1

    .line 28
    .end local v0    # "x":I
    :cond_0
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "y":I
    .local v0, "y":I
    goto :goto_0

    .line 34
    .end local v0    # "y":I
    :cond_1
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    .line 35
    return-void
.end method

.method public setIsAlphaSpread(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 18
    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    .line 19
    return-void
.end method

.method public setIsSpreadBlack(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 14
    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    .line 15
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 10
    iput p1, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    .line 11
    return-void
.end method
