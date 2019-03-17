.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 37
    .local v0, "dimension":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 43
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 44
    return-void
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 3
    .param p0, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 63
    .local v1, "numRows":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 64
    .local v0, "numColumns":I
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 23
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v18

    .line 404
    .local v18, "symbolSizeRows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v17

    .line 406
    .local v17, "symbolSizeColumns":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 407
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Dimension of bitMarix must match the version size"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 410
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v8

    .line 411
    .local v8, "dataRegionSizeRows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v7

    .line 413
    .local v7, "dataRegionSizeColumns":I
    div-int v12, v18, v8

    .line 414
    .local v12, "numDataRegionsRow":I
    div-int v11, v17, v7

    .line 416
    .local v11, "numDataRegionsColumn":I
    mul-int v16, v12, v8

    .line 417
    .local v16, "sizeDataRegionRow":I
    mul-int v15, v11, v7

    .line 419
    .local v15, "sizeDataRegionColumn":I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 420
    .local v2, "bitMatrixWithoutAlignment":Lcom/google/zxing/common/BitMatrix;
    const/4 v5, 0x0

    .local v5, "dataRegionRow":I
    :goto_0
    if-lt v5, v12, :cond_1

    .line 437
    return-object v2

    .line 421
    :cond_1
    mul-int v6, v5, v8

    .line 422
    .local v6, "dataRegionRowOffset":I
    const/4 v3, 0x0

    .local v3, "dataRegionColumn":I
    :goto_1
    if-lt v3, v11, :cond_2

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 423
    :cond_2
    mul-int v4, v3, v7

    .line 424
    .local v4, "dataRegionColumnOffset":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-lt v9, v8, :cond_3

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 425
    :cond_3
    add-int/lit8 v21, v8, 0x2

    mul-int v21, v21, v5

    add-int/lit8 v21, v21, 0x1

    add-int v14, v21, v9

    .line 426
    .local v14, "readRowOffset":I
    add-int v20, v6, v9

    .line 427
    .local v20, "writeRowOffset":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    if-lt v10, v7, :cond_4

    .line 424
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 428
    :cond_4
    add-int/lit8 v21, v7, 0x2

    mul-int v21, v21, v3

    add-int/lit8 v21, v21, 0x1

    add-int v13, v21, v10

    .line 429
    .local v13, "readColumnOffset":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 430
    add-int v19, v4, v10

    .line 431
    .local v19, "writeColumnOffset":I
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 427
    .end local v19    # "writeColumnOffset":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object v0
.end method

.method readCodewords()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    new-array v7, v11, [B

    .line 78
    .local v7, "result":[B
    const/4 v8, 0x0

    .line 80
    .local v8, "resultOffset":I
    const/4 v10, 0x4

    .line 81
    .local v10, "row":I
    const/4 v0, 0x0

    .line 83
    .local v0, "column":I
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 84
    .local v6, "numRows":I
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    .line 86
    .local v5, "numColumns":I
    const/4 v1, 0x0

    .line 87
    .local v1, "corner1Read":Z
    const/4 v2, 0x0

    .line 88
    .local v2, "corner2Read":Z
    const/4 v3, 0x0

    .line 89
    .local v3, "corner3Read":Z
    const/4 v4, 0x0

    .local v4, "corner4Read":Z
    move v9, v8

    .line 94
    .end local v8    # "resultOffset":I
    .local v9, "resultOffset":I
    :goto_0
    if-ne v10, v6, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 95
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 96
    add-int/lit8 v10, v10, -0x2

    .line 97
    add-int/lit8 v0, v0, 0x2

    .line 98
    const/4 v1, 0x1

    .line 137
    :goto_1
    if-lt v10, v6, :cond_8

    .line 92
    if-lt v0, v5, :cond_8

    .line 139
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    if-eq v8, v11, :cond_7

    .line 140
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    .line 99
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_0
    add-int/lit8 v11, v6, -0x2

    if-ne v10, v11, :cond_1

    if-nez v0, :cond_1

    and-int/lit8 v11, v5, 0x3

    if-eqz v11, :cond_1

    if-nez v2, :cond_1

    .line 100
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 101
    add-int/lit8 v10, v10, -0x2

    .line 102
    add-int/lit8 v0, v0, 0x2

    .line 103
    const/4 v2, 0x1

    .line 104
    goto :goto_1

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_1
    add-int/lit8 v11, v6, 0x4

    if-ne v10, v11, :cond_2

    const/4 v11, 0x2

    if-ne v0, v11, :cond_2

    and-int/lit8 v11, v5, 0x7

    if-nez v11, :cond_2

    if-nez v3, :cond_2

    .line 105
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 106
    add-int/lit8 v10, v10, -0x2

    .line 107
    add-int/lit8 v0, v0, 0x2

    .line 108
    const/4 v3, 0x1

    .line 109
    goto :goto_1

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_2
    add-int/lit8 v11, v6, -0x2

    if-ne v10, v11, :cond_4

    if-nez v0, :cond_4

    and-int/lit8 v11, v5, 0x7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    if-nez v4, :cond_4

    .line 110
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 111
    add-int/lit8 v10, v10, -0x2

    .line 112
    add-int/lit8 v0, v0, 0x2

    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_1

    :cond_3
    move v9, v8

    .line 117
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_4
    if-ge v10, v6, :cond_b

    if-ltz v0, :cond_b

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_b

    .line 118
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 120
    :goto_2
    add-int/lit8 v10, v10, -0x2

    .line 121
    add-int/lit8 v0, v0, 0x2

    .line 122
    if-ltz v10, :cond_5

    .line 116
    if-lt v0, v5, :cond_3

    .line 123
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 124
    add-int/lit8 v0, v0, 0x3

    move v9, v8

    .line 128
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :goto_3
    if-ltz v10, :cond_a

    if-ge v0, v5, :cond_a

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 129
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 131
    :goto_4
    add-int/lit8 v10, v10, 0x2

    .line 132
    add-int/lit8 v0, v0, -0x2

    .line 133
    if-ge v10, v6, :cond_6

    .line 127
    if-gez v0, :cond_9

    .line 134
    :cond_6
    add-int/lit8 v10, v10, 0x3

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 142
    :cond_7
    return-object v7

    :cond_8
    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto/16 :goto_0

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    :cond_9
    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto :goto_3

    :cond_a
    move v8, v9

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    goto :goto_4

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_b
    move v8, v9

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    goto :goto_2
.end method

.method readCorner1(II)I
    .locals 5
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    or-int/lit8 v0, v0, 0x1

    .line 229
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 230
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    or-int/lit8 v0, v0, 0x1

    .line 233
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 234
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    or-int/lit8 v0, v0, 0x1

    .line 237
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 238
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    or-int/lit8 v0, v0, 0x1

    .line 241
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 242
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    or-int/lit8 v0, v0, 0x1

    .line 245
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 246
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    or-int/lit8 v0, v0, 0x1

    .line 249
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 250
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 251
    or-int/lit8 v0, v0, 0x1

    .line 253
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 254
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 255
    or-int/lit8 v0, v0, 0x1

    .line 257
    :cond_7
    return v0
.end method

.method readCorner2(II)I
    .locals 3
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v2, 0x0

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    or-int/lit8 v0, v0, 0x1

    .line 274
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 275
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    or-int/lit8 v0, v0, 0x1

    .line 278
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 279
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    or-int/lit8 v0, v0, 0x1

    .line 282
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 283
    add-int/lit8 v1, p2, -0x4

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    or-int/lit8 v0, v0, 0x1

    .line 286
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 287
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    or-int/lit8 v0, v0, 0x1

    .line 290
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 291
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    or-int/lit8 v0, v0, 0x1

    .line 294
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    or-int/lit8 v0, v0, 0x1

    .line 298
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 299
    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 300
    or-int/lit8 v0, v0, 0x1

    .line 302
    :cond_7
    return v0
.end method

.method readCorner3(II)I
    .locals 5
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    or-int/lit8 v0, v0, 0x1

    .line 319
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 320
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    or-int/lit8 v0, v0, 0x1

    .line 323
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 324
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    or-int/lit8 v0, v0, 0x1

    .line 327
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 328
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    or-int/lit8 v0, v0, 0x1

    .line 331
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 332
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    or-int/lit8 v0, v0, 0x1

    .line 335
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 336
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    or-int/lit8 v0, v0, 0x1

    .line 339
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    or-int/lit8 v0, v0, 0x1

    .line 343
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 344
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    or-int/lit8 v0, v0, 0x1

    .line 347
    :cond_7
    return v0
.end method

.method readCorner4(II)I
    .locals 3
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v2, 0x0

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    or-int/lit8 v0, v0, 0x1

    .line 364
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 365
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    or-int/lit8 v0, v0, 0x1

    .line 368
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    or-int/lit8 v0, v0, 0x1

    .line 372
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 373
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    or-int/lit8 v0, v0, 0x1

    .line 376
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 377
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    or-int/lit8 v0, v0, 0x1

    .line 380
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 381
    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 382
    or-int/lit8 v0, v0, 0x1

    .line 384
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 385
    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 386
    or-int/lit8 v0, v0, 0x1

    .line 388
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 389
    const/4 v1, 0x3

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 390
    or-int/lit8 v0, v0, 0x1

    .line 392
    :cond_7
    return v0
.end method

.method readModule(IIII)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "numRows"    # I
    .param p4, "numColumns"    # I

    .prologue
    .line 156
    if-gez p1, :cond_0

    .line 157
    add-int/2addr p1, p3

    .line 158
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    .line 160
    :cond_0
    if-gez p2, :cond_1

    .line 161
    add-int/2addr p2, p4

    .line 162
    add-int/lit8 v0, p4, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    return v0
.end method

.method readUtah(IIII)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "numRows"    # I
    .param p4, "numColumns"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    or-int/lit8 v0, v0, 0x1

    .line 184
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    or-int/lit8 v0, v0, 0x1

    .line 188
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    or-int/lit8 v0, v0, 0x1

    .line 196
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    or-int/lit8 v0, v0, 0x1

    .line 200
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    or-int/lit8 v0, v0, 0x1

    .line 208
    :cond_6
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 210
    or-int/lit8 v0, v0, 0x1

    .line 212
    :cond_7
    return v0
.end method
