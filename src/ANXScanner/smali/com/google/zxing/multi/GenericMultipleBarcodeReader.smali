.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 54
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 24
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "currentDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 88
    .local v19, "result":Lcom/google/zxing/Result;
    const/4 v10, 0x0

    .line 89
    .local v10, "alreadyFound":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 95
    :goto_1
    if-nez v10, :cond_3

    .line 96
    move-object/from16 v0, v19

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v20

    .line 99
    .local v20, "resultPoints":[Lcom/google/zxing/ResultPoint;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v21

    .line 103
    .local v21, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v12

    .line 104
    .local v12, "height":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v16, v0

    .line 105
    .local v16, "minX":F
    int-to-float v0, v12

    move/from16 v17, v0

    .line 106
    .local v17, "minY":F
    const/4 v14, 0x0

    .line 107
    .local v14, "maxX":F
    const/4 v15, 0x0

    .line 108
    .local v15, "maxY":F
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v4, :cond_8

    .line 126
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v16, v3

    if-lez v3, :cond_4

    .line 127
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    float-to-int v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v12}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    .line 130
    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 127
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 133
    :cond_4
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v17, v3

    if-lez v3, :cond_5

    .line 134
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v17

    float-to-int v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    .line 137
    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 134
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 140
    :cond_5
    add-int/lit8 v3, v21, -0x64

    int-to-float v3, v3

    cmpg-float v3, v14, v3

    if-gez v3, :cond_6

    .line 141
    float-to-int v3, v14

    const/4 v4, 0x0

    float-to-int v5, v14

    sub-int v5, v21, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v12}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    .line 143
    float-to-int v3, v14

    add-int v7, p4, v3

    .line 144
    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p5

    .line 141
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 147
    :cond_6
    add-int/lit8 v3, v12, -0x64

    int-to-float v3, v3

    cmpg-float v3, v15, v3

    if-gez v3, :cond_0

    .line 148
    const/4 v3, 0x0

    float-to-int v4, v15

    float-to-int v5, v15

    sub-int v5, v12, v5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    .line 150
    float-to-int v3, v15

    add-int v8, p5, v3

    .line 151
    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 148
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto/16 :goto_0

    .line 85
    .end local v10    # "alreadyFound":Z
    .end local v12    # "height":I
    .end local v14    # "maxX":F
    .end local v15    # "maxY":F
    .end local v16    # "minX":F
    .end local v17    # "minY":F
    .end local v19    # "result":Lcom/google/zxing/Result;
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v21    # "width":I
    :catch_0
    move-exception v13

    .line 86
    .local v13, "ignored":Lcom/google/zxing/ReaderException;
    goto/16 :goto_0

    .line 89
    .end local v13    # "ignored":Lcom/google/zxing/ReaderException;
    .restart local v10    # "alreadyFound":Z
    .restart local v19    # "result":Lcom/google/zxing/Result;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/Result;

    .line 90
    .local v11, "existingResult":Lcom/google/zxing/Result;
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const/4 v10, 0x1

    .line 92
    goto/16 :goto_1

    .line 108
    .end local v11    # "existingResult":Lcom/google/zxing/Result;
    .restart local v12    # "height":I
    .restart local v14    # "maxX":F
    .restart local v15    # "maxY":F
    .restart local v16    # "minX":F
    .restart local v17    # "minY":F
    .restart local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v21    # "width":I
    :cond_8
    aget-object v18, v20, v3

    .line 109
    .local v18, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v22

    .line 110
    .local v22, "x":F
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v23

    .line 111
    .local v23, "y":F
    cmpg-float v5, v22, v16

    if-gez v5, :cond_9

    .line 112
    move/from16 v16, v22

    .line 114
    :cond_9
    cmpg-float v5, v23, v17

    if-gez v5, :cond_a

    .line 115
    move/from16 v17, v23

    .line 117
    :cond_a
    cmpl-float v5, v22, v14

    if-lez v5, :cond_b

    .line 118
    move/from16 v14, v22

    .line 120
    :cond_b
    cmpl-float v5, v23, v15

    if-lez v5, :cond_c

    .line 121
    move/from16 v15, v23

    .line 108
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 9
    .param p0, "result"    # Lcom/google/zxing/Result;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 157
    .local v4, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    if-nez v4, :cond_0

    .line 167
    .end local p0    # "result":Lcom/google/zxing/Result;
    :goto_0
    return-object p0

    .line 160
    .restart local p0    # "result":Lcom/google/zxing/Result;
    :cond_0
    array-length v5, v4

    new-array v2, v5, [Lcom/google/zxing/ResultPoint;

    .line 161
    .local v2, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_1

    .line 165
    new-instance v1, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    invoke-direct {v1, v5, v6, v2, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 166
    .local v1, "newResult":Lcom/google/zxing/Result;
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    move-object p0, v1

    .line 167
    goto :goto_0

    .line 162
    .end local v1    # "newResult":Lcom/google/zxing/Result;
    :cond_1
    aget-object v3, v4, v0

    .line 163
    .local v3, "oldPoint":Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    int-to-float v7, p1

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    int-to-float v8, p2

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v2, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 7
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v4, 0x0

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, v4

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 69
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/Result;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    return-object v0
.end method
