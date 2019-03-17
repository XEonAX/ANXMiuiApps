.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    .line 39
    return-void

    .line 36
    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 7
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I
    .param p2, "totalWords"    # I

    .prologue
    .line 288
    new-array v2, p2, [I

    .line 291
    .local v2, "message":[I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    div-int v3, v5, p1

    .local v3, "n":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 298
    return-object v2

    .line 292
    :cond_0
    const/4 v4, 0x0

    .line 293
    .local v4, "value":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p1, :cond_1

    .line 296
    aput v4, v2, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    mul-int v5, v0, p1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    sub-int v6, p1, v1

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    :goto_2
    or-int/2addr v4, v5

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 294
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 4
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "center"    # I
    .param p2, "size"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 212
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 213
    sub-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 214
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 215
    add-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 216
    add-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 217
    add-int v2, p1, p2

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 218
    return-void

    .line 205
    :cond_0
    sub-int v1, p1, v0

    .local v1, "j":I
    :goto_1
    add-int v2, p1, v0

    if-le v1, v2, :cond_1

    .line 204
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 206
    :cond_1
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 207
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 208
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 209
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "compact"    # Z
    .param p2, "matrixSize"    # I
    .param p3, "modeMessage"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 235
    div-int/lit8 v0, p2, 0x2

    .line 236
    .local v0, "center":I
    if-eqz p1, :cond_6

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    if-lt v1, v3, :cond_1

    .line 269
    :cond_0
    return-void

    .line 238
    :cond_1
    add-int/lit8 v3, v0, -0x3

    add-int v2, v3, v1

    .line 239
    .local v2, "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 242
    :cond_2
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 245
    :cond_3
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 246
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 248
    :cond_4
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 249
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 237
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    .end local v2    # "offset":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 254
    add-int/lit8 v3, v0, -0x5

    add-int/2addr v3, v1

    div-int/lit8 v4, v1, 0x5

    add-int v2, v3, v4

    .line 255
    .restart local v2    # "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 256
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 258
    :cond_7
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 259
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 261
    :cond_8
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 262
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 264
    :cond_9
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 265
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 253
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 34
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I

    .prologue
    .line 65
    new-instance v29, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v6

    .line 68
    .local v6, "bits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int v29, v29, p1

    div-int/lit8 v29, v29, 0x64

    add-int/lit8 v10, v29, 0xb

    .line 69
    .local v10, "eccBits":I
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v26, v29, v10

    .line 75
    .local v26, "totalSizeBits":I
    if-eqz p2, :cond_4

    .line 76
    if-gez p2, :cond_0

    const/4 v9, 0x1

    .line 77
    .local v9, "compact":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 78
    .local v14, "layers":I
    if-eqz v9, :cond_1

    const/16 v29, 0x4

    :goto_1
    move/from16 v0, v29

    if-le v14, v0, :cond_2

    .line 79
    new-instance v29, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string v30, "Illegal value %s for layers"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 79
    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 76
    .end local v9    # "compact":Z
    .end local v14    # "layers":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 78
    .restart local v9    # "compact":Z
    .restart local v14    # "layers":I
    :cond_1
    const/16 v29, 0x20

    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    .line 83
    .local v25, "totalBitsInLayer":I
    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    .line 84
    .local v28, "wordSize":I
    rem-int v29, v25, v28

    sub-int v27, v25, v29

    .line 85
    .local v27, "usableBitsInLayers":I
    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    .line 86
    .local v24, "stuffedBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    .line 87
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 89
    :cond_3
    if-eqz v9, :cond_c

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int/lit8 v30, v28, 0x40

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    .line 91
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 94
    .end local v9    # "compact":Z
    .end local v14    # "layers":I
    .end local v24    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .end local v25    # "totalBitsInLayer":I
    .end local v27    # "usableBitsInLayers":I
    .end local v28    # "wordSize":I
    :cond_4
    const/16 v28, 0x0

    .line 95
    .restart local v28    # "wordSize":I
    const/16 v24, 0x0

    .line 99
    .restart local v24    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    const/4 v11, 0x0

    .line 100
    .local v11, "i":I
    :goto_2
    const/16 v29, 0x20

    move/from16 v0, v29

    if-le v11, v0, :cond_5

    .line 101
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Data too large for an Aztec code"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 103
    :cond_5
    const/16 v29, 0x3

    move/from16 v0, v29

    if-gt v11, v0, :cond_7

    const/4 v9, 0x1

    .line 104
    .restart local v9    # "compact":Z
    :goto_3
    if-eqz v9, :cond_8

    add-int/lit8 v14, v11, 0x1

    .line 105
    .restart local v14    # "layers":I
    :goto_4
    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    .line 106
    .restart local v25    # "totalBitsInLayer":I
    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 99
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 103
    .end local v9    # "compact":Z
    .end local v14    # "layers":I
    .end local v25    # "totalBitsInLayer":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .restart local v9    # "compact":Z
    :cond_8
    move v14, v11

    .line 104
    goto :goto_4

    .line 111
    .restart local v14    # "layers":I
    .restart local v25    # "totalBitsInLayer":I
    :cond_9
    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v29, v29, v14

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    .line 112
    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    .line 113
    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    .line 115
    :cond_a
    rem-int v29, v25, v28

    sub-int v27, v25, v29

    .line 116
    .restart local v27    # "usableBitsInLayers":I
    if-eqz v9, :cond_b

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int/lit8 v30, v28, 0x40

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_6

    .line 120
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-gt v0, v1, :cond_6

    .line 125
    .end local v11    # "i":I
    :cond_c
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v17

    .line 128
    .local v17, "messageBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    div-int v18, v29, v28

    .line 129
    .local v18, "messageSizeInWords":I
    move/from16 v0, v18

    invoke-static {v9, v14, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v19

    .line 132
    .local v19, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz v9, :cond_f

    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v5, v29, 0xb

    .line 133
    .local v5, "baseMatrixSize":I
    :goto_5
    new-array v3, v5, [I

    .line 135
    .local v3, "alignmentMap":[I
    if-eqz v9, :cond_11

    .line 137
    move/from16 v16, v5

    .line 138
    .local v16, "matrixSize":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    array-length v0, v3

    move/from16 v29, v0

    move/from16 v0, v29

    if-lt v11, v0, :cond_10

    .line 151
    :cond_d
    new-instance v15, Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 154
    .local v15, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v11, 0x0

    const/16 v22, 0x0

    .local v22, "rowOffset":I
    :goto_7
    if-lt v11, v14, :cond_12

    .line 177
    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v15, v9, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 180
    if-eqz v9, :cond_1a

    .line 181
    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 194
    :cond_e
    new-instance v4, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v4}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 195
    .local v4, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    invoke-virtual {v4, v9}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 196
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 197
    invoke-virtual {v4, v14}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 198
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 199
    invoke-virtual {v4, v15}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 200
    return-object v4

    .line 132
    .end local v3    # "alignmentMap":[I
    .end local v4    # "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    .end local v5    # "baseMatrixSize":I
    .end local v11    # "i":I
    .end local v15    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v16    # "matrixSize":I
    .end local v22    # "rowOffset":I
    :cond_f
    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v5, v29, 0xe

    goto :goto_5

    .line 139
    .restart local v3    # "alignmentMap":[I
    .restart local v5    # "baseMatrixSize":I
    .restart local v11    # "i":I
    .restart local v16    # "matrixSize":I
    :cond_10
    aput v11, v3, v11

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 142
    .end local v11    # "i":I
    .end local v16    # "matrixSize":I
    :cond_11
    add-int/lit8 v29, v5, 0x1

    div-int/lit8 v30, v5, 0x2

    add-int/lit8 v30, v30, -0x1

    div-int/lit8 v30, v30, 0xf

    mul-int/lit8 v30, v30, 0x2

    add-int v16, v29, v30

    .line 143
    .restart local v16    # "matrixSize":I
    div-int/lit8 v21, v5, 0x2

    .line 144
    .local v21, "origCenter":I
    div-int/lit8 v7, v16, 0x2

    .line 145
    .local v7, "center":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    move/from16 v0, v21

    if-ge v11, v0, :cond_d

    .line 146
    div-int/lit8 v29, v11, 0xf

    add-int v20, v11, v29

    .line 147
    .local v20, "newOffset":I
    sub-int v29, v21, v11

    add-int/lit8 v29, v29, -0x1

    sub-int v30, v7, v20

    add-int/lit8 v30, v30, -0x1

    aput v30, v3, v29

    .line 148
    add-int v29, v21, v11

    add-int v30, v7, v20

    add-int/lit8 v30, v30, 0x1

    aput v30, v3, v29

    .line 145
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 155
    .end local v7    # "center":I
    .end local v20    # "newOffset":I
    .end local v21    # "origCenter":I
    .restart local v15    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v22    # "rowOffset":I
    :cond_12
    if-eqz v9, :cond_13

    sub-int v29, v14, v11

    mul-int/lit8 v29, v29, 0x4

    add-int/lit8 v23, v29, 0x9

    .line 156
    .local v23, "rowSize":I
    :goto_9
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_a
    move/from16 v0, v23

    if-lt v12, v0, :cond_14

    .line 173
    mul-int/lit8 v29, v23, 0x8

    add-int v22, v22, v29

    .line 154
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 155
    .end local v12    # "j":I
    .end local v23    # "rowSize":I
    :cond_13
    sub-int v29, v14, v11

    mul-int/lit8 v29, v29, 0x4

    add-int/lit8 v23, v29, 0xc

    goto :goto_9

    .line 157
    .restart local v12    # "j":I
    .restart local v23    # "rowSize":I
    :cond_14
    mul-int/lit8 v8, v12, 0x2

    .line 158
    .local v8, "columnOffset":I
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_b
    const/16 v29, 0x2

    move/from16 v0, v29

    if-lt v13, v0, :cond_15

    .line 156
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 159
    :cond_15
    add-int v29, v22, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 160
    mul-int/lit8 v29, v11, 0x2

    add-int v29, v29, v13

    aget v29, v3, v29

    mul-int/lit8 v30, v11, 0x2

    add-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 162
    :cond_16
    mul-int/lit8 v29, v23, 0x2

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 163
    mul-int/lit8 v29, v11, 0x2

    add-int v29, v29, v12

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    mul-int/lit8 v31, v11, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    :cond_17
    mul-int/lit8 v29, v23, 0x4

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 166
    add-int/lit8 v29, v5, -0x1

    mul-int/lit8 v30, v11, 0x2

    sub-int v29, v29, v30

    sub-int v29, v29, v13

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    mul-int/lit8 v31, v11, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 168
    :cond_18
    mul-int/lit8 v29, v23, 0x6

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 169
    add-int/lit8 v29, v5, -0x1

    mul-int/lit8 v30, v11, 0x2

    sub-int v29, v29, v30

    sub-int v29, v29, v12

    aget v29, v3, v29

    mul-int/lit8 v30, v11, 0x2

    add-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 158
    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 183
    .end local v8    # "columnOffset":I
    .end local v12    # "j":I
    .end local v13    # "k":I
    .end local v23    # "rowSize":I
    :cond_1a
    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 184
    const/4 v11, 0x0

    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_c
    div-int/lit8 v29, v5, 0x2

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v11, v0, :cond_e

    .line 185
    div-int/lit8 v29, v16, 0x2

    and-int/lit8 v13, v29, 0x1

    .restart local v13    # "k":I
    :goto_d
    move/from16 v0, v16

    if-lt v13, v0, :cond_1b

    .line 184
    add-int/lit8 v11, v11, 0xf

    add-int/lit8 v12, v12, 0x10

    goto :goto_c

    .line 186
    :cond_1b
    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 187
    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 188
    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 189
    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 185
    add-int/lit8 v13, v13, 0x2

    goto :goto_d
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 9
    .param p0, "bitArray"    # Lcom/google/zxing/common/BitArray;
    .param p1, "totalBits"    # I
    .param p2, "wordSize"    # I

    .prologue
    const/4 v7, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    div-int v1, v8, p2

    .line 274
    .local v1, "messageSizeInWords":I
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 275
    .local v4, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v6, p1, p2

    .line 276
    .local v6, "totalWords":I
    invoke-static {p0, p2, v6}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    .line 277
    .local v3, "messageWords":[I
    sub-int v8, v6, v1

    invoke-virtual {v4, v3, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 278
    rem-int v5, p1, p2

    .line 279
    .local v5, "startPad":I
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 280
    .local v0, "messageBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v0, v7, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    array-length v8, v3

    :goto_0
    if-lt v7, v8, :cond_0

    .line 284
    return-object v0

    .line 281
    :cond_0
    aget v2, v3, v7

    .line 282
    .local v2, "messageWord":I
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4
    .param p0, "compact"    # Z
    .param p1, "layers"    # I
    .param p2, "messageSizeInWords"    # I

    .prologue
    const/4 v3, 0x4

    .line 221
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 222
    .local v0, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz p0, :cond_0

    .line 223
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 224
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 225
    const/16 v1, 0x1c

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 227
    :cond_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 228
    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 229
    const/16 v1, 0x28

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 1
    .param p0, "wordSize"    # I

    .prologue
    .line 302
    packed-switch p0, :pswitch_data_0

    .line 314
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 304
    :pswitch_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 306
    :pswitch_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 308
    :pswitch_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 310
    :pswitch_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 312
    :pswitch_5
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I

    .prologue
    const/4 v7, 0x1

    .line 319
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 321
    .local v4, "out":Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 322
    .local v3, "n":I
    shl-int v6, v7, p1

    add-int/lit8 v2, v6, -0x2

    .line 323
    .local v2, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 340
    return-object v4

    .line 324
    :cond_0
    const/4 v5, 0x0

    .line 325
    .local v5, "word":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p1, :cond_1

    .line 330
    and-int v6, v5, v2

    if-ne v6, v2, :cond_4

    .line 331
    and-int v6, v5, v2

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 332
    add-int/lit8 v0, v0, -0x1

    .line 323
    :goto_2
    add-int/2addr v0, p1

    goto :goto_0

    .line 326
    :cond_1
    add-int v6, v0, v1

    if-ge v6, v3, :cond_2

    add-int v6, v0, v1

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 327
    :cond_2
    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    .line 325
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_4
    and-int v6, v5, v2

    if-nez v6, :cond_5

    .line 334
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 335
    add-int/lit8 v0, v0, -0x1

    .line 336
    goto :goto_2

    .line 337
    :cond_5
    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .prologue
    .line 344
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    :goto_0
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x70

    goto :goto_0
.end method
