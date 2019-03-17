.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 38
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .locals 7
    .param p1, "fixedDimension"    # I
    .param p2, "maxWhiteRun"    # I
    .param p3, "minDim"    # I
    .param p4, "maxDim"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 170
    add-int v5, p3, p4

    div-int/lit8 v0, v5, 0x2

    .line 173
    .local v0, "center":I
    move v2, v0

    .line 174
    .local v2, "start":I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_2

    .line 190
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 193
    move v1, v0

    .line 194
    .local v1, "end":I
    :cond_1
    :goto_2
    if-lt v1, p4, :cond_a

    .line 210
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 212
    if-le v1, v2, :cond_12

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    :goto_4
    return-object v5

    .line 175
    .end local v1    # "end":I
    :cond_2
    if-eqz p5, :cond_4

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 176
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 177
    goto :goto_0

    .line 175
    :cond_4
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 178
    :cond_5
    move v4, v2

    .line 180
    .local v4, "whiteRunStart":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 181
    if-lt v2, p3, :cond_7

    .line 182
    if-eqz p5, :cond_9

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 183
    :cond_7
    :goto_5
    sub-int v3, v4, v2

    .line 184
    .local v3, "whiteRunSize":I
    if-lt v2, p3, :cond_8

    if-le v3, p2, :cond_0

    .line 185
    :cond_8
    move v2, v4

    .line 186
    goto :goto_1

    .line 182
    .end local v3    # "whiteRunSize":I
    :cond_9
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    .line 195
    .end local v4    # "whiteRunStart":I
    .restart local v1    # "end":I
    :cond_a
    if-eqz p5, :cond_c

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 196
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 197
    goto :goto_2

    .line 195
    :cond_c
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_b

    .line 198
    :cond_d
    move v4, v1

    .line 200
    .restart local v4    # "whiteRunStart":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 201
    if-ge v1, p4, :cond_f

    .line 202
    if-eqz p5, :cond_11

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 203
    :cond_f
    :goto_6
    sub-int v3, v1, v4

    .line 204
    .restart local v3    # "whiteRunSize":I
    if-ge v1, p4, :cond_10

    if-le v3, p2, :cond_1

    .line 205
    :cond_10
    move v1, v4

    .line 206
    goto :goto_3

    .line 202
    .end local v3    # "whiteRunSize":I
    :cond_11
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_6

    .line 212
    .end local v4    # "whiteRunStart":I
    :cond_12
    const/4 v5, 0x0

    goto :goto_4
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .locals 14
    .param p1, "centerX"    # I
    .param p2, "deltaX"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "centerY"    # I
    .param p6, "deltaY"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I
    .param p9, "maxWhiteRun"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v9, 0x0

    .line 110
    .local v9, "lastRange":[I
    move/from16 v2, p5

    .local v2, "y":I
    move v13, p1

    .line 111
    .local v13, "x":I
    :goto_0
    move/from16 v0, p8

    if-ge v2, v0, :cond_0

    move/from16 v0, p7

    if-lt v2, v0, :cond_0

    move/from16 v0, p4

    if-ge v13, v0, :cond_0

    .line 110
    move/from16 v0, p3

    if-ge v13, v0, :cond_1

    .line 151
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 114
    :cond_1
    if-nez p2, :cond_2

    .line 116
    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p9

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    .line 121
    .local v12, "range":[I
    :goto_1
    if-nez v12, :cond_b

    .line 122
    if-nez v9, :cond_3

    .line 123
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 119
    .end local v12    # "range":[I
    :cond_2
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v13

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v12

    .restart local v12    # "range":[I
    goto :goto_1

    .line 126
    :cond_3
    if-nez p2, :cond_7

    .line 127
    sub-int v11, v2, p6

    .line 128
    .local v11, "lastY":I
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ge v1, p1, :cond_6

    .line 129
    const/4 v1, 0x1

    aget v1, v9, v1

    if-le v1, p1, :cond_5

    .line 131
    new-instance v3, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_4

    const/4 v1, 0x0

    aget v1, v9, v1

    :goto_2
    int-to-float v1, v1

    int-to-float v4, v11

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v1, v3

    .line 145
    .end local v11    # "lastY":I
    :goto_3
    return-object v1

    .line 131
    .restart local v11    # "lastY":I
    :cond_4
    const/4 v1, 0x1

    aget v1, v9, v1

    goto :goto_2

    .line 133
    :cond_5
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 135
    :cond_6
    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 138
    .end local v11    # "lastY":I
    :cond_7
    sub-int v10, v13, p2

    .line 139
    .local v10, "lastX":I
    const/4 v1, 0x0

    aget v1, v9, v1

    move/from16 v0, p5

    if-ge v1, v0, :cond_a

    .line 140
    const/4 v1, 0x1

    aget v1, v9, v1

    move/from16 v0, p5

    if-le v1, v0, :cond_9

    .line 141
    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v10

    if-gez p2, :cond_8

    const/4 v1, 0x0

    aget v1, v9, v1

    :goto_4
    int-to-float v1, v1

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v1, v3

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    aget v1, v9, v1

    goto :goto_4

    .line 143
    :cond_9
    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 145
    :cond_a
    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v10

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_3

    .line 149
    .end local v10    # "lastX":I
    :cond_b
    move-object v9, v12

    .line 112
    add-int v2, v2, p6

    add-int v13, v13, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v13

    .line 52
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v18

    .line 53
    .local v18, "width":I
    div-int/lit8 v6, v13, 0x2

    .line 54
    .local v6, "halfHeight":I
    div-int/lit8 v2, v18, 0x2

    .line 55
    .local v2, "halfWidth":I
    const/4 v1, 0x1

    div-int/lit16 v3, v13, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 56
    .local v12, "deltaY":I
    const/4 v1, 0x1

    move/from16 v0, v18

    div-int/lit16 v3, v0, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 58
    .local v11, "deltaX":I
    const/4 v8, 0x0

    .line 59
    .local v8, "top":I
    move v9, v13

    .line 60
    .local v9, "bottom":I
    const/4 v4, 0x0

    .line 61
    .local v4, "left":I
    move/from16 v5, v18

    .line 62
    .local v5, "right":I
    const/4 v3, 0x0

    .line 63
    neg-int v7, v12

    div-int/lit8 v10, v2, 0x2

    move-object/from16 v1, p0

    .line 62
    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v14

    .line 64
    .local v14, "pointA":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v8, v1, -0x1

    .line 65
    neg-int v3, v11

    .line 66
    const/4 v7, 0x0

    div-int/lit8 v10, v6, 0x2

    move-object/from16 v1, p0

    .line 65
    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    .line 67
    .local v15, "pointB":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v4, v1, -0x1

    .line 69
    const/4 v7, 0x0

    div-int/lit8 v10, v6, 0x2

    move-object/from16 v1, p0

    move v3, v11

    .line 68
    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    .line 70
    .local v16, "pointC":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v5, v1, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    div-int/lit8 v10, v2, 0x2

    move-object/from16 v1, p0

    move v7, v12

    .line 71
    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 73
    .local v17, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v9, v1, 0x1

    .line 76
    const/4 v3, 0x0

    .line 77
    neg-int v7, v12

    div-int/lit8 v10, v2, 0x4

    move-object/from16 v1, p0

    .line 76
    invoke-direct/range {v1 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v14

    .line 79
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    return-object v1
.end method
