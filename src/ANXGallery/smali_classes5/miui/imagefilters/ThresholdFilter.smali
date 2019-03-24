.class public Lmiui/imagefilters/ThresholdFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ThresholdFilter.java"


# instance fields
.field private mThresholdLevel:I

.field private mUniform:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 5
    const/16 v0, 0x80

    iput v0, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 14
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 18
    iget v0, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 19
    .local v0, "width":I
    iget v1, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 20
    .local v1, "height":I
    iget-object v2, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 22
    .local v2, "pixels":[I
    const/4 v3, 0x0

    .line 23
    .local v3, "thresholdLevel":I
    iget-boolean v4, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 24
    iget v3, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    goto :goto_4

    .line 26
    :cond_0
    const/16 v4, 0x100

    array-length v6, v2

    .line 27
    .local v6, "visiblePixelCount":I
    new-array v7, v4, [I

    .line 28
    .local v7, "perGrayscaleCount":[I
    move v8, v6

    move v6, v5

    .local v6, "y":I
    .local v8, "visiblePixelCount":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 29
    move v9, v8

    move v8, v5

    .local v8, "x":I
    .local v9, "visiblePixelCount":I
    :goto_1
    if-ge v8, v0, :cond_2

    .line 30
    mul-int v10, v6, v0

    add-int/2addr v10, v8

    .line 31
    .local v10, "colorIndex":I
    aget v11, v2, v10

    .line 32
    .local v11, "argb":I
    ushr-int/lit8 v12, v11, 0x18

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa

    if-ge v12, v13, :cond_1

    .line 33
    add-int/lit8 v9, v9, -0x1

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    invoke-static {v11}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v12

    .line 37
    .local v12, "grayscale":I
    aget v13, v7, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, v7, v12

    .line 29
    .end local v10    # "colorIndex":I
    .end local v11    # "argb":I
    .end local v12    # "grayscale":I
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 28
    .end local v8    # "x":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_0

    .line 41
    .end local v6    # "y":I
    .end local v9    # "visiblePixelCount":I
    .local v8, "visiblePixelCount":I
    :cond_3
    iget v6, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    mul-int/2addr v6, v8

    div-int/lit16 v6, v6, 0xff

    .line 42
    .local v6, "highThresholdCount":I
    const/4 v9, 0x0

    .line 43
    .local v9, "grayscaleStep":I
    move v10, v9

    move v9, v5

    .local v9, "i":I
    .local v10, "grayscaleStep":I
    :goto_3
    if-ge v9, v4, :cond_5

    .line 44
    aget v11, v7, v9

    add-int/2addr v10, v11

    .line 45
    if-lt v10, v6, :cond_4

    .line 46
    move v3, v9

    .line 47
    goto :goto_4

    .line 43
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 52
    .end local v6    # "highThresholdCount":I
    .end local v7    # "perGrayscaleCount":[I
    .end local v8    # "visiblePixelCount":I
    .end local v9    # "i":I
    .end local v10    # "grayscaleStep":I
    :cond_5
    :goto_4
    move v4, v5

    .local v4, "y":I
    :goto_5
    if-ge v4, v1, :cond_8

    .line 53
    move v6, v5

    .local v6, "x":I
    :goto_6
    if-ge v6, v0, :cond_7

    .line 54
    mul-int v7, v4, v0

    add-int/2addr v7, v6

    .line 55
    .local v7, "colorIndex":I
    aget v8, v2, v7

    .line 56
    .local v8, "argb":I
    invoke-static {v8}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v9

    .line 57
    .local v9, "grayscale":I
    const/high16 v10, -0x1000000

    if-lt v9, v3, :cond_6

    .line 58
    and-int/2addr v10, v8

    const v11, 0xffffff

    or-int/2addr v10, v11

    aput v10, v2, v7

    goto :goto_7

    .line 60
    :cond_6
    and-int/2addr v10, v8

    aput v10, v2, v7

    .line 53
    .end local v7    # "colorIndex":I
    .end local v8    # "argb":I
    .end local v9    # "grayscale":I
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 52
    .end local v6    # "x":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 64
    .end local v4    # "y":I
    :cond_8
    return-void
.end method

.method public setThresholdLevel(I)V
    .locals 0
    .param p1, "value"    # I

    .line 9
    iput p1, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    .line 10
    return-void
.end method

.method public setUniform(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 13
    iput-boolean p1, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    .line 14
    return-void
.end method
