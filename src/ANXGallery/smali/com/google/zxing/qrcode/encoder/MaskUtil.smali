.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .prologue
    const/4 v10, 0x5

    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, "penalty":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 193
    .local v3, "iLimit":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 194
    .local v5, "jLimit":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 195
    .local v0, "array":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_2

    .line 214
    return v7

    .line 192
    .end local v0    # "array":[[B
    .end local v2    # "i":I
    .end local v3    # "iLimit":I
    .end local v5    # "jLimit":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    goto :goto_0

    .line 193
    .restart local v3    # "iLimit":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    goto :goto_1

    .line 196
    .restart local v0    # "array":[[B
    .restart local v2    # "i":I
    .restart local v5    # "jLimit":I
    :cond_2
    const/4 v6, 0x0

    .line 197
    .local v6, "numSameBitCells":I
    const/4 v8, -0x1

    .line 198
    .local v8, "prevBit":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-lt v4, v5, :cond_4

    .line 210
    if-lt v6, v10, :cond_3

    .line 211
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 199
    :cond_4
    if-eqz p1, :cond_5

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    .line 200
    .local v1, "bit":I
    :goto_4
    if-ne v1, v8, :cond_6

    .line 201
    add-int/lit8 v6, v6, 0x1

    .line 198
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 199
    .end local v1    # "bit":I
    :cond_5
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_4

    .line 203
    .restart local v1    # "bit":I
    :cond_6
    if-lt v6, v10, :cond_7

    .line 204
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 206
    :cond_7
    const/4 v6, 0x1

    .line 207
    move v8, v1

    goto :goto_5
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 9
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "penalty":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 52
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 53
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 54
    .local v1, "height":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-lt v6, v7, :cond_0

    .line 62
    mul-int/lit8 v7, v2, 0x3

    return v7

    .line 55
    :cond_0
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-lt v5, v7, :cond_1

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56
    :cond_1
    aget-object v7, v0, v6

    aget-byte v3, v7, v5

    .line 57
    .local v3, "value":I
    aget-object v7, v0, v6

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v3, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_2

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 55
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v9, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "numPenalties":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 73
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 74
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 75
    .local v2, "height":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-lt v6, v2, :cond_0

    .line 102
    mul-int/lit8 v7, v3, 0x28

    return v7

    .line 76
    :cond_0
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-lt v5, v4, :cond_1

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    :cond_1
    aget-object v1, v0, v6

    .line 78
    .local v1, "arrayY":[B
    add-int/lit8 v7, v5, 0x6

    if-ge v7, v4, :cond_3

    .line 79
    aget-byte v7, v1, v5

    if-ne v7, v9, :cond_3

    .line 80
    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_3

    .line 81
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_3

    .line 82
    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_3

    .line 83
    add-int/lit8 v7, v5, 0x4

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_3

    .line 84
    add-int/lit8 v7, v5, 0x5

    aget-byte v7, v1, v7

    if-nez v7, :cond_3

    .line 85
    add-int/lit8 v7, v5, 0x6

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_3

    .line 86
    add-int/lit8 v7, v5, -0x4

    invoke-static {v1, v7, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v7, v5, 0x7

    add-int/lit8 v8, v5, 0xb

    invoke-static {v1, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 89
    :cond_3
    add-int/lit8 v7, v6, 0x6

    if-ge v7, v2, :cond_5

    .line 90
    aget-object v7, v0, v6

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_5

    .line 91
    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_5

    .line 92
    add-int/lit8 v7, v6, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_5

    .line 93
    add-int/lit8 v7, v6, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_5

    .line 94
    add-int/lit8 v7, v6, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_5

    .line 95
    add-int/lit8 v7, v6, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_5

    .line 96
    add-int/lit8 v7, v6, 0x6

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_5

    .line 97
    add-int/lit8 v7, v6, -0x4

    invoke-static {v0, v5, v7, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v7, v6, 0x7

    add-int/lit8 v8, v6, 0xb

    invoke-static {v0, v5, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 76
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, "numDarkCells":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 130
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    .line 131
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 132
    .local v3, "height":I
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    if-lt v8, v3, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    mul-int v5, v9, v10

    .line 141
    .local v5, "numTotalCells":I
    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    div-int v2, v9, v5

    .line 142
    .local v2, "fivePercentVariances":I
    mul-int/lit8 v9, v2, 0xa

    return v9

    .line 133
    .end local v2    # "fivePercentVariances":I
    .end local v5    # "numTotalCells":I
    :cond_0
    aget-object v1, v0, v8

    .line 134
    .local v1, "arrayY":[B
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    if-lt v7, v6, :cond_1

    .line 132
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 135
    :cond_1
    aget-byte v9, v1, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 134
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method static getDataMaskBit(III)Z
    .locals 5
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 152
    packed-switch p0, :pswitch_data_0

    .line 181
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid mask pattern: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :pswitch_0
    add-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    .line 183
    .local v0, "intermediate":I
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 157
    .end local v0    # "intermediate":I
    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    .line 158
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 160
    .end local v0    # "intermediate":I
    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    .line 161
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 163
    .end local v0    # "intermediate":I
    :pswitch_3
    add-int v2, p2, p1

    rem-int/lit8 v0, v2, 0x3

    .line 164
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 166
    .end local v0    # "intermediate":I
    :pswitch_4
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 167
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 169
    .end local v0    # "intermediate":I
    :pswitch_5
    mul-int v1, p2, p1

    .line 170
    .local v1, "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int v0, v2, v3

    .line 171
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 173
    .end local v0    # "intermediate":I
    .end local v1    # "temp":I
    :pswitch_6
    mul-int v1, p2, p1

    .line 174
    .restart local v1    # "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 175
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 177
    .end local v0    # "intermediate":I
    .end local v1    # "temp":I
    :pswitch_7
    mul-int v1, p2, p1

    .line 178
    .restart local v1    # "temp":I
    rem-int/lit8 v2, v1, 0x3

    add-int v3, p2, p1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 179
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 183
    .end local v1    # "temp":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .locals 3
    .param p0, "rowArray"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v1, 0x1

    .line 106
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 111
    :goto_1
    return v1

    .line 107
    :cond_0
    if-ltz v0, :cond_1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    if-ne v2, v1, :cond_1

    .line 108
    const/4 v1, 0x0

    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isWhiteVertical([[BIII)Z
    .locals 3
    .param p0, "array"    # [[B
    .param p1, "col"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v1, 0x1

    .line 115
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 120
    :goto_1
    return v1

    .line 116
    :cond_0
    if-ltz v0, :cond_1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_1

    .line 117
    const/4 v1, 0x0

    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
