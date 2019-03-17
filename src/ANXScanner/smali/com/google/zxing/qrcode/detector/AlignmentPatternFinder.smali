.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field private final crossCheckStateCount:[I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final moduleSize:F

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/AlignmentPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;

.field private final startX:I

.field private final startY:I

.field private final width:I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .locals 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "moduleSize"    # F
    .param p7, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    .line 71
    iput p2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 72
    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 73
    iput p4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 74
    iput p5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 75
    iput p6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckVertical(IIII)F
    .locals 10
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    const/4 v9, 0x2

    const/high16 v5, 0x7fc00000    # NaNf

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 195
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 196
    .local v2, "maxI":I
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 197
    .local v3, "stateCount":[I
    aput v7, v3, v7

    .line 198
    aput v7, v3, v8

    .line 199
    aput v7, v3, v9

    .line 202
    move v0, p1

    .line 203
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    aget v6, v3, v8

    if-le v6, p3, :cond_2

    .line 208
    :cond_0
    if-ltz v0, :cond_1

    aget v6, v3, v8

    if-le v6, p3, :cond_4

    .line 241
    :cond_1
    :goto_1
    return v5

    .line 204
    :cond_2
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_3
    aget v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v7

    .line 213
    add-int/lit8 v0, v0, -0x1

    .line 211
    :cond_4
    if-ltz v0, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_5

    aget v6, v3, v7

    if-le v6, p3, :cond_3

    .line 215
    :cond_5
    aget v6, v3, v7

    if-gt v6, p3, :cond_1

    .line 220
    add-int/lit8 v0, p1, 0x1

    .line 221
    :goto_2
    if-ge v0, v2, :cond_6

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_6

    aget v6, v3, v8

    if-le v6, p3, :cond_8

    .line 225
    :cond_6
    if-eq v0, v2, :cond_1

    aget v6, v3, v8

    if-gt v6, p3, :cond_1

    .line 228
    :goto_3
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_7

    aget v6, v3, v9

    if-le v6, p3, :cond_9

    .line 232
    :cond_7
    aget v6, v3, v9

    if-gt v6, p3, :cond_1

    .line 236
    aget v6, v3, v7

    aget v7, v3, v8

    add-int/2addr v6, v7

    aget v7, v3, v9

    add-int v4, v6, v7

    .line 237
    .local v4, "stateCountTotal":I
    sub-int v6, v4, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v7, p4, 0x2

    if-ge v6, v7, :cond_1

    .line 241
    invoke-direct {p0, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_1

    .line 222
    .end local v4    # "stateCountTotal":I
    :cond_8
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_9
    aget v6, v3, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v9

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private foundPatternCross([I)Z
    .locals 4
    .param p1, "stateCount"    # [I

    .prologue
    .line 170
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 171
    .local v2, "moduleSize":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 172
    .local v1, "maxVariance":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 177
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 173
    :cond_0
    aget v3, p1, v0

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_1

    .line 174
    const/4 v3, 0x0

    goto :goto_1

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 256
    aget v6, p1, v9

    aget v7, p1, v8

    add-int/2addr v6, v7

    aget v7, p1, v10

    add-int v5, v6, v7

    .line 257
    .local v5, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 258
    .local v2, "centerJ":F
    float-to-int v6, v2

    aget v7, p1, v8

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {p0, p2, v6, v7, v5}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 259
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    aget v6, p1, v9

    aget v7, p1, v8

    add-int/2addr v6, v7

    aget v7, p1, v10

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float v3, v6, v7

    .line 261
    .local v3, "estimatedModuleSize":F
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 268
    new-instance v4, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 269
    .local v4, "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v6, :cond_1

    .line 271
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v6, v4}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 274
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_1
    const/4 v6, 0x0

    :goto_0
    return-object v6

    .line 261
    .restart local v3    # "estimatedModuleSize":F
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 263
    .local v0, "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 88
    iget v8, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 89
    .local v8, "startX":I
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 90
    .local v2, "height":I
    iget v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    add-int v6, v8, v10

    .line 91
    .local v6, "maxJ":I
    iget v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    div-int/lit8 v11, v2, 0x2

    add-int v7, v10, v11

    .line 94
    .local v7, "middleI":I
    const/4 v10, 0x3

    new-array v9, v10, [I

    .line 95
    .local v9, "stateCount":[I
    const/4 v4, 0x0

    .local v4, "iGen":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 149
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 150
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-object v0, v10

    :cond_0
    return-object v0

    .line 97
    :cond_1
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_4

    add-int/lit8 v10, v4, 0x1

    div-int/lit8 v10, v10, 0x2

    :goto_1
    add-int v3, v7, v10

    .line 98
    .local v3, "i":I
    aput v12, v9, v12

    .line 99
    aput v12, v9, v13

    .line 100
    aput v12, v9, v14

    .line 101
    move v5, v8

    .line 105
    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_2

    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 108
    :cond_2
    const/4 v1, 0x0

    .line 109
    .local v1, "currentState":I
    :goto_3
    if-lt v5, v6, :cond_6

    .line 138
    invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 139
    invoke-direct {p0, v9, v3, v6}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    .line 140
    .local v0, "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    if-nez v0, :cond_0

    .line 95
    .end local v0    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "currentState":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v10, v4, 0x1

    div-int/lit8 v10, v10, 0x2

    neg-int v10, v10

    goto :goto_1

    .line 106
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 110
    .restart local v1    # "currentState":I
    :cond_6
    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 112
    if-ne v1, v13, :cond_7

    .line 113
    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    .line 136
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 115
    :cond_7
    if-ne v1, v14, :cond_9

    .line 116
    invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 117
    invoke-direct {p0, v9, v3, v5}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    .line 118
    .restart local v0    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    if-nez v0, :cond_0

    .line 122
    .end local v0    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_8
    aget v10, v9, v14

    aput v10, v9, v12

    .line 123
    aput v13, v9, v13

    .line 124
    aput v12, v9, v14

    .line 125
    const/4 v1, 0x1

    .line 126
    goto :goto_4

    .line 127
    :cond_9
    add-int/lit8 v1, v1, 0x1

    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    goto :goto_4

    .line 131
    :cond_a
    if-ne v1, v13, :cond_b

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_b
    aget v10, v9, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v1

    goto :goto_4

    .line 153
    .end local v1    # "currentState":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method
