.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 25
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 51
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 57
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    .line 60
    .local v4, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v20, 0x0

    .line 61
    .local v20, "totalBlocks":I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    .line 62
    .local v3, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    array-length v0, v3

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 67
    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v17, v0

    .line 68
    .local v17, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v13, 0x0

    .line 69
    .local v13, "numResultBlocks":I
    array-length v0, v3

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 79
    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v19, v0

    .line 80
    .local v19, "shorterBlocksTotalCodewords":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v8, v21, -0x1

    .line 81
    .local v8, "longerBlocksStartAt":I
    :goto_2
    if-gez v8, :cond_5

    .line 88
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 90
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v21

    sub-int v18, v19, v21

    .line 93
    .local v18, "shorterBlocksNumDataCodewords":I
    const/4 v15, 0x0

    .line 94
    .local v15, "rawCodewordsOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    move/from16 v0, v18

    if-lt v5, v0, :cond_6

    .line 100
    move v7, v8

    .local v7, "j":I
    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .local v16, "rawCodewordsOffset":I
    :goto_4
    if-lt v7, v13, :cond_8

    .line 104
    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v9, v0

    .line 105
    .local v9, "max":I
    move/from16 v5, v18

    move/from16 v15, v16

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    :goto_5
    if-lt v5, v9, :cond_9

    .line 111
    return-object v17

    .line 62
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v8    # "longerBlocksStartAt":I
    .end local v9    # "max":I
    .end local v13    # "numResultBlocks":I
    .end local v15    # "rawCodewordsOffset":I
    .end local v17    # "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v18    # "shorterBlocksNumDataCodewords":I
    .end local v19    # "shorterBlocksTotalCodewords":I
    :cond_2
    aget-object v2, v3, v21

    .line 63
    .local v2, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    add-int v20, v20, v23

    .line 62
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .restart local v13    # "numResultBlocks":I
    .restart local v17    # "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_3
    aget-object v2, v3, v21

    .line 70
    .restart local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    move/from16 v0, v23

    if-lt v5, v0, :cond_4

    .line 69
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 72
    .local v12, "numDataCodewords":I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v23

    add-int v10, v23, v12

    .line 73
    .local v10, "numBlockCodewords":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "numResultBlocks":I
    .local v14, "numResultBlocks":I
    new-instance v23, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v10, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v23, v17, v13

    .line 70
    add-int/lit8 v5, v5, 0x1

    move v13, v14

    .end local v14    # "numResultBlocks":I
    .restart local v13    # "numResultBlocks":I
    goto :goto_6

    .line 82
    .end local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v5    # "i":I
    .end local v10    # "numBlockCodewords":I
    .end local v12    # "numDataCodewords":I
    .restart local v8    # "longerBlocksStartAt":I
    .restart local v19    # "shorterBlocksTotalCodewords":I
    :cond_5
    aget-object v21, v17, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v11, v0

    .line 83
    .local v11, "numCodewords":I
    move/from16 v0, v19

    if-eq v11, v0, :cond_1

    .line 86
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 95
    .end local v11    # "numCodewords":I
    .restart local v5    # "i":I
    .restart local v15    # "rawCodewordsOffset":I
    .restart local v18    # "shorterBlocksNumDataCodewords":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    :goto_7
    if-lt v7, v13, :cond_7

    .line 94
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto :goto_3

    .line 96
    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    :cond_7
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    aget-byte v22, p0, v16

    aput-byte v22, v21, v5

    .line 95
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    goto :goto_7

    .line 101
    :cond_8
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    aget-byte v22, p0, v16

    aput-byte v22, v21, v18

    .line 100
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    goto/16 :goto_4

    .line 106
    .end local v16    # "rawCodewordsOffset":I
    .restart local v9    # "max":I
    .restart local v15    # "rawCodewordsOffset":I
    :cond_9
    const/4 v7, 0x0

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    :goto_8
    if-lt v7, v13, :cond_a

    .line 105
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto/16 :goto_5

    .line 107
    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    :cond_a
    if-ge v7, v8, :cond_b

    move v6, v5

    .line 108
    .local v6, "iOffset":I
    :goto_9
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    aget-byte v22, p0, v16

    aput-byte v22, v21, v6

    .line 106
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    goto :goto_8

    .line 107
    .end local v6    # "iOffset":I
    :cond_b
    add-int/lit8 v6, v5, 0x1

    goto :goto_9
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
