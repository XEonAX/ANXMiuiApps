.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v14

    .line 108
    .local v14, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    .line 110
    .local v16, "size":I
    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 118
    :cond_0
    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 119
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 120
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 121
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v24, v27, v28

    const/16 v28, 0x1

    .line 122
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v24, v27, v28

    const/16 v28, 0x2

    .line 123
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v24, v27, v28

    aput-object v27, v25, v26

    move-object/from16 v24, v25

    .line 224
    :goto_0
    return-object v24

    .line 129
    :cond_1
    new-instance v24, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;)V

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/4 v7, 0x0

    .local v7, "i1":I
    :goto_1
    add-int/lit8 v24, v16, -0x2

    move/from16 v0, v24

    if-lt v7, v0, :cond_2

    .line 223
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_b

    .line 224
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 150
    .local v11, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v11, :cond_4

    .line 148
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .local v8, "i2":I
    :goto_2
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-ge v8, v0, :cond_3

    .line 155
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 156
    .local v12, "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v12, :cond_6

    .line 154
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 161
    :cond_6
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    .line 162
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 161
    div-float v19, v24, v25

    .line 163
    .local v19, "vModSize12":F
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 164
    .local v20, "vModSize12A":F
    const/high16 v24, 0x3f000000    # 0.5f

    cmpl-float v24, v20, v24

    if-lez v24, :cond_7

    const v24, 0x3d4ccccd    # 0.05f

    cmpl-float v24, v19, v24

    if-gez v24, :cond_3

    .line 170
    :cond_7
    add-int/lit8 v9, v8, 0x1

    .local v9, "i3":I
    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 171
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 172
    .local v13, "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v13, :cond_9

    .line 170
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 177
    :cond_9
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    .line 178
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 177
    div-float v21, v24, v25

    .line 179
    .local v21, "vModSize23":F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 180
    .local v22, "vModSize23A":F
    const/high16 v24, 0x3f000000    # 0.5f

    cmpl-float v24, v22, v24

    if-lez v24, :cond_a

    const v24, 0x3d4ccccd    # 0.05f

    cmpl-float v24, v21, v24

    if-gez v24, :cond_5

    .line 186
    :cond_a
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v17, v0

    const/16 v24, 0x0

    aput-object v11, v17, v24

    const/16 v24, 0x1

    aput-object v12, v17, v24

    const/16 v24, 0x2

    aput-object v13, v17, v24

    .line 187
    .local v17, "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    .local v10, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 192
    .local v2, "dA":F
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 193
    .local v4, "dC":F
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 196
    .local v3, "dB":F
    add-float v24, v2, v3

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    div-float v6, v24, v25

    .line 197
    .local v6, "estimatedModuleCount":F
    const/high16 v24, 0x43340000    # 180.0f

    cmpl-float v24, v6, v24

    if-gtz v24, :cond_8

    .line 198
    const/high16 v24, 0x41100000    # 9.0f

    cmpg-float v24, v6, v24

    if-ltz v24, :cond_8

    .line 203
    sub-float v24, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v25

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 204
    .local v18, "vABBC":F
    const v24, 0x3dcccccd    # 0.1f

    cmpl-float v24, v18, v24

    if-gez v24, :cond_8

    .line 209
    mul-float v24, v2, v2

    mul-float v25, v3, v3

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v5, v0

    .line 211
    .local v5, "dCpy":F
    sub-float v24, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v25

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 213
    .local v23, "vPyC":F
    const v24, 0x3dcccccd    # 0.1f

    cmpl-float v24, v23, v24

    if-gez v24, :cond_8

    .line 218
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 228
    .end local v2    # "dA":F
    .end local v3    # "dB":F
    .end local v4    # "dC":F
    .end local v5    # "dCpy":F
    .end local v6    # "estimatedModuleCount":F
    .end local v8    # "i2":I
    .end local v9    # "i3":I
    .end local v10    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v11    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v12    # "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v13    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v17    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v18    # "vABBC":F
    .end local v19    # "vModSize12":F
    .end local v20    # "vModSize12A":F
    .end local v21    # "vModSize23":F
    .end local v22    # "vModSize23A":F
    .end local v23    # "vPyC":F
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_2

    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x1

    .line 233
    .local v13, "tryHarder":Z
    :goto_0
    if-eqz p1, :cond_3

    sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v10, 0x1

    .line 234
    .local v10, "pureBarcode":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 235
    .local v4, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 236
    .local v6, "maxI":I
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 244
    .local v7, "maxJ":I
    int-to-float v14, v6

    const/high16 v15, 0x43640000    # 228.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v14, v15

    float-to-int v3, v14

    .line 245
    .local v3, "iSkip":I
    const/4 v14, 0x3

    if-lt v3, v14, :cond_0

    if-eqz v13, :cond_1

    .line 246
    :cond_0
    const/4 v3, 0x3

    .line 249
    :cond_1
    const/4 v14, 0x5

    new-array v12, v14, [I

    .line 250
    .local v12, "stateCount":[I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-lt v2, v6, :cond_4

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 298
    .local v9, "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    array-length v15, v9

    const/4 v14, 0x0

    :goto_3
    if-lt v14, v15, :cond_c

    .line 304
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 305
    sget-object v14, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 307
    :goto_4
    return-object v14

    .line 232
    .end local v2    # "i":I
    .end local v3    # "iSkip":I
    .end local v4    # "image":Lcom/google/zxing/common/BitMatrix;
    .end local v6    # "maxI":I
    .end local v7    # "maxJ":I
    .end local v9    # "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "pureBarcode":Z
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    .end local v12    # "stateCount":[I
    .end local v13    # "tryHarder":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 233
    .restart local v13    # "tryHarder":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 252
    .restart local v2    # "i":I
    .restart local v3    # "iSkip":I
    .restart local v4    # "image":Lcom/google/zxing/common/BitMatrix;
    .restart local v6    # "maxI":I
    .restart local v7    # "maxJ":I
    .restart local v10    # "pureBarcode":Z
    .restart local v12    # "stateCount":[I
    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 253
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 254
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 255
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 256
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "currentState":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    if-lt v5, v7, :cond_6

    .line 293
    invoke-static {v12}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 294
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v7, v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    .line 250
    :cond_5
    add-int/2addr v2, v3

    goto :goto_2

    .line 259
    :cond_6
    invoke-virtual {v4, v5, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 261
    and-int/lit8 v14, v1, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 264
    :cond_7
    aget v14, v12, v1

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v1

    .line 258
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 266
    :cond_8
    and-int/lit8 v14, v1, 0x1

    if-nez v14, :cond_b

    .line 267
    const/4 v14, 0x4

    if-ne v1, v14, :cond_a

    .line 268
    invoke-static {v12}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v5, v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 270
    const/4 v1, 0x0

    .line 271
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 272
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 273
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 274
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 275
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    goto :goto_6

    .line 277
    :cond_9
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 278
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 279
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 280
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 281
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 282
    const/4 v1, 0x3

    .line 284
    goto :goto_6

    .line 285
    :cond_a
    add-int/lit8 v1, v1, 0x1

    aget v14, v12, v1

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v1

    goto :goto_6

    .line 288
    :cond_b
    aget v14, v12, v1

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v1

    goto :goto_6

    .line 299
    .end local v1    # "currentState":I
    .end local v5    # "j":I
    .restart local v9    # "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    :cond_c
    aget-object v8, v9, v14

    .line 300
    .local v8, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v8}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 301
    new-instance v16, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 307
    .end local v8    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    goto/16 :goto_4
.end method
