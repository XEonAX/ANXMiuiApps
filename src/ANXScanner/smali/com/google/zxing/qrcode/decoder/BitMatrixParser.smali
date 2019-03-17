.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 38
    .local v0, "dimension":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 42
    return-void
.end method

.method private copyBit(III)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "versionBits"    # I

    .prologue
    .line 141
    iget-boolean v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 142
    .local v0, "bit":Z
    :goto_0
    if-eqz v0, :cond_1

    shl-int/lit8 v1, p3, 0x1

    or-int/lit8 v1, v1, 0x1

    :goto_1
    return v1

    .line 141
    .end local v0    # "bit":Z
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    goto :goto_0

    .line 142
    .restart local v0    # "bit":Z
    :cond_1
    shl-int/lit8 v1, p3, 0x1

    goto :goto_1
.end method


# virtual methods
.method mirror()V
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 243
    return-void

    .line 236
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "y":I
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 238
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 239
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method readCodewords()[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v8

    .line 156
    .local v8, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v16

    .line 160
    .local v16, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v6

    .line 161
    .local v6, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 162
    .local v7, "dimension":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 164
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 166
    .local v9, "functionPattern":Lcom/google/zxing/common/BitMatrix;
    const/4 v12, 0x1

    .line 167
    .local v12, "readingUp":Z
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 168
    .local v13, "result":[B
    const/4 v14, 0x0

    .line 169
    .local v14, "resultOffset":I
    const/4 v5, 0x0

    .line 170
    .local v5, "currentByte":I
    const/4 v2, 0x0

    .line 172
    .local v2, "bitsRead":I
    add-int/lit8 v11, v7, -0x1

    .local v11, "j":I
    :goto_0
    if-gtz v11, :cond_0

    .line 201
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_6

    .line 202
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v17

    throw v17

    .line 173
    :cond_0
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_1

    .line 176
    add-int/lit8 v11, v11, -0x1

    .line 179
    :cond_1
    const/4 v4, 0x0

    .local v4, "count":I
    :goto_1
    if-lt v4, v7, :cond_2

    .line 199
    xor-int/lit8 v12, v12, 0x1

    .line 172
    add-int/lit8 v11, v11, -0x2

    goto :goto_0

    .line 180
    :cond_2
    if-eqz v12, :cond_3

    add-int/lit8 v17, v7, -0x1

    sub-int v10, v17, v4

    .line 181
    .local v10, "i":I
    :goto_2
    const/4 v3, 0x0

    .local v3, "col":I
    move v15, v14

    .end local v14    # "resultOffset":I
    .local v15, "resultOffset":I
    :goto_3
    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v3, v0, :cond_4

    .line 179
    add-int/lit8 v4, v4, 0x1

    move v14, v15

    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    goto :goto_1

    .end local v3    # "col":I
    .end local v10    # "i":I
    :cond_3
    move v10, v4

    .line 180
    goto :goto_2

    .line 183
    .end local v14    # "resultOffset":I
    .restart local v3    # "col":I
    .restart local v10    # "i":I
    .restart local v15    # "resultOffset":I
    :cond_4
    sub-int v17, v11, v3

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-nez v17, :cond_7

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    shl-int/lit8 v5, v5, 0x1

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    sub-int v18, v11, v3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 188
    or-int/lit8 v5, v5, 0x1

    .line 191
    :cond_5
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    .line 192
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    int-to-byte v0, v5

    move/from16 v17, v0

    aput-byte v17, v13, v15

    .line 193
    const/4 v2, 0x0

    .line 194
    const/4 v5, 0x0

    .line 181
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v15, v14

    .end local v14    # "resultOffset":I
    .restart local v15    # "resultOffset":I
    goto :goto_3

    .line 204
    .end local v3    # "col":I
    .end local v4    # "count":I
    .end local v10    # "i":I
    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    :cond_6
    return-object v13

    .end local v14    # "resultOffset":I
    .restart local v3    # "col":I
    .restart local v4    # "count":I
    .restart local v10    # "i":I
    .restart local v15    # "resultOffset":I
    :cond_7
    move v14, v15

    .end local v15    # "resultOffset":I
    .restart local v14    # "resultOffset":I
    goto :goto_4
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/16 v7, 0x8

    .line 53
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_0

    .line 54
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 84
    :goto_0
    return-object v6

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 59
    .local v1, "formatInfoBits1":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v6, 0x6

    if-lt v3, v6, :cond_1

    .line 63
    invoke-direct {p0, v8, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 64
    invoke-direct {p0, v7, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 65
    invoke-direct {p0, v7, v8, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 67
    const/4 v4, 0x5

    .local v4, "j":I
    :goto_2
    if-gez v4, :cond_2

    .line 72
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 73
    .local v0, "dimension":I
    const/4 v2, 0x0

    .line 74
    .local v2, "formatInfoBits2":I
    add-int/lit8 v5, v0, -0x7

    .line 75
    .local v5, "jMin":I
    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-ge v4, v5, :cond_3

    .line 78
    add-int/lit8 v3, v0, -0x8

    :goto_4
    if-lt v3, v0, :cond_4

    .line 82
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 83
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_5

    .line 84
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    goto :goto_0

    .line 60
    .end local v0    # "dimension":I
    .end local v2    # "formatInfoBits2":I
    .end local v4    # "j":I
    .end local v5    # "jMin":I
    :cond_1
    invoke-direct {p0, v3, v7, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    .restart local v4    # "j":I
    :cond_2
    invoke-direct {p0, v7, v4, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    .line 67
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 76
    .restart local v0    # "dimension":I
    .restart local v2    # "formatInfoBits2":I
    .restart local v5    # "jMin":I
    :cond_3
    invoke-direct {p0, v7, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 75
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 79
    :cond_4
    invoke-direct {p0, v3, v7, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 86
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v7, :cond_0

    .line 99
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 135
    :goto_0
    return-object v5

    .line 102
    :cond_0
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 104
    .local v0, "dimension":I
    add-int/lit8 v7, v0, -0x11

    div-int/lit8 v4, v7, 0x4

    .line 105
    .local v4, "provisionalVersion":I
    const/4 v7, 0x6

    if-gt v4, v7, :cond_1

    .line 106
    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    goto :goto_0

    .line 110
    :cond_1
    const/4 v6, 0x0

    .line 111
    .local v6, "versionBits":I
    add-int/lit8 v2, v0, -0xb

    .line 112
    .local v2, "ijMin":I
    const/4 v3, 0x5

    .local v3, "j":I
    :goto_1
    if-gez v3, :cond_2

    .line 118
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 119
    .local v5, "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    if-ne v7, v0, :cond_4

    .line 120
    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_0

    .line 113
    .end local v5    # "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_2
    add-int/lit8 v1, v0, -0x9

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 112
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    .line 113
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 125
    .end local v1    # "i":I
    .restart local v5    # "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_4
    const/4 v6, 0x0

    .line 126
    const/4 v1, 0x5

    .restart local v1    # "i":I
    :goto_3
    if-gez v1, :cond_5

    .line 132
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 133
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    if-ne v7, v0, :cond_7

    .line 134
    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    goto :goto_0

    .line 127
    :cond_5
    add-int/lit8 v3, v0, -0x9

    :goto_4
    if-ge v3, v2, :cond_6

    .line 126
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 128
    :cond_6
    invoke-direct {p0, v1, v3, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    .line 127
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 137
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
.end method

.method remask()V
    .locals 3

    .prologue
    .line 211
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v2, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v0

    .line 215
    .local v0, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 216
    .local v1, "dimension":I
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    goto :goto_0
.end method

.method setMirror(Z)V
    .locals 1
    .param p1, "mirror"    # Z

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 229
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 230
    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    .line 231
    return-void
.end method
