.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 428
    .local v3, "len":I
    move v2, p1

    .line 429
    .local v2, "idx":I
    if-ge v2, v3, :cond_1

    .line 430
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 431
    .local v0, "ch":C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lt v2, v3, :cond_2

    .line 439
    .end local v0    # "ch":C
    :cond_1
    return v1

    .line 432
    .restart local v0    # "ch":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 433
    add-int/lit8 v2, v2, 0x1

    .line 434
    if-ge v2, v3, :cond_0

    .line 435
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;

    .prologue
    const/16 v10, 0x81

    const/4 v9, 0x5

    const/4 v8, 0x2

    .line 161
    const/4 v6, 0x6

    new-array v3, v6, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    const/4 v6, 0x0

    .line 162
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v6, v3, v8

    const/4 v6, 0x3

    .line 163
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v6, v3, v9

    .line 166
    .local v3, "encoders":[Lcom/google/zxing/datamatrix/encoder/Encoder;
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 168
    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    .line 170
    const-string v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 171
    const/16 v6, 0xec

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 172
    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 173
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v7, "[)>\u001e05\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 180
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 181
    .local v4, "encodingMode":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-nez v6, :cond_5

    .line 188
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    .line 189
    .local v5, "len":I
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 190
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    .line 191
    .local v0, "capacity":I
    if-ge v5, v0, :cond_2

    .line 192
    if-eqz v4, :cond_2

    if-eq v4, v9, :cond_2

    .line 193
    const/16 v6, 0xfe

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 197
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    .local v1, "codewords":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_3

    .line 199
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v0, :cond_6

    .line 205
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 174
    .end local v0    # "capacity":I
    .end local v1    # "codewords":Ljava/lang/StringBuilder;
    .end local v4    # "encodingMode":I
    .end local v5    # "len":I
    :cond_4
    const-string v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    const/16 v6, 0xed

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 176
    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 177
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v7, "[)>\u001e06\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 182
    .restart local v4    # "encodingMode":I
    :cond_5
    aget-object v6, v3, v4

    invoke-interface {v6, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 183
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v6

    if-ltz v6, :cond_1

    .line 184
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v4

    .line 185
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    .line 202
    .restart local v0    # "capacity":I
    .restart local v1    # "codewords":Ljava/lang/StringBuilder;
    .restart local v5    # "len":I
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static findMinimums([F[II[B)I
    .locals 5
    .param p0, "charCounts"    # [F
    .param p1, "intCharCounts"    # [I
    .param p2, "min"    # I
    .param p3, "mins"    # [B

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 373
    return p2

    .line 362
    :cond_0
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 363
    aget v0, p1, v1

    .line 364
    .local v0, "current":I
    if-le p2, v0, :cond_1

    .line 365
    move p2, v0

    .line 366
    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 368
    :cond_1
    if-ne p2, v0, :cond_2

    .line 369
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 361
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getMinimumCount([B)I
    .locals 3
    .param p0, "mins"    # [B

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "minCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 381
    return v1

    .line 379
    :cond_0
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static illegalCharacter(C)V
    .locals 5
    .param p0, "c"    # C

    .prologue
    .line 443
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 385
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExtendedASCII(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 389
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeC40(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 393
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 411
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 397
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNativeX12(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 401
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSpecialB256(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 405
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    .line 406
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    .line 407
    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    .line 405
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 14
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 209
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt p1, v9, :cond_0

    .line 352
    .end local p2    # "currentMode":I
    :goto_0
    return p2

    .line 214
    .restart local p2    # "currentMode":I
    :cond_0
    if-nez p2, :cond_2

    .line 215
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 221
    .local v1, "charCounts":[F
    :goto_1
    const/4 v2, 0x0

    .line 224
    .local v2, "charsProcessed":I
    :cond_1
    add-int v9, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 225
    const v4, 0x7fffffff

    .line 226
    .local v4, "min":I
    const/4 v9, 0x6

    new-array v6, v9, [B

    .line 227
    .local v6, "mins":[B
    const/4 v9, 0x6

    new-array v3, v9, [I

    .line 228
    .local v3, "intCharCounts":[I
    invoke-static {v1, v3, v4, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v4

    .line 229
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    .line 231
    .local v5, "minCount":I
    const/4 v9, 0x0

    aget v9, v3, v9

    if-ne v9, v4, :cond_3

    .line 232
    const/16 p2, 0x0

    goto :goto_0

    .line 217
    .end local v1    # "charCounts":[F
    .end local v2    # "charsProcessed":I
    .end local v3    # "intCharCounts":[I
    .end local v4    # "min":I
    .end local v5    # "minCount":I
    .end local v6    # "mins":[B
    :cond_2
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_1

    .line 218
    .restart local v1    # "charCounts":[F
    const/4 v9, 0x0

    aput v9, v1, p2

    goto :goto_1

    .line 234
    .restart local v2    # "charsProcessed":I
    .restart local v3    # "intCharCounts":[I
    .restart local v4    # "min":I
    .restart local v5    # "minCount":I
    .restart local v6    # "mins":[B
    :cond_3
    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    const/4 v9, 0x5

    aget-byte v9, v6, v9

    if-lez v9, :cond_4

    .line 235
    const/16 p2, 0x5

    goto :goto_0

    .line 237
    :cond_4
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_5

    .line 238
    const/16 p2, 0x4

    goto :goto_0

    .line 240
    :cond_5
    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_6

    .line 241
    const/16 p2, 0x2

    goto :goto_0

    .line 243
    :cond_6
    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_7

    .line 244
    const/16 p2, 0x3

    goto :goto_0

    .line 246
    :cond_7
    const/16 p2, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "intCharCounts":[I
    .end local v4    # "min":I
    .end local v5    # "minCount":I
    .end local v6    # "mins":[B
    :cond_8
    add-int v9, p1, v2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 250
    .local v0, "c":C
    add-int/lit8 v2, v2, 0x1

    .line 253
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 254
    const/4 v9, 0x0

    aget v10, v1, v9

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v1, v9

    .line 264
    :goto_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 265
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 273
    :goto_3
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 274
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 282
    :goto_4
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 283
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 291
    :goto_5
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 292
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x3f400000    # 0.75f

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 300
    :goto_6
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 301
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x40800000    # 4.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 307
    :goto_7
    const/4 v9, 0x4

    if-lt v2, v9, :cond_1

    .line 308
    const/4 v9, 0x6

    new-array v3, v9, [I

    .line 309
    .restart local v3    # "intCharCounts":[I
    const/4 v9, 0x6

    new-array v6, v9, [B

    .line 310
    .restart local v6    # "mins":[B
    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 311
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    .line 313
    .restart local v5    # "minCount":I
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 314
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 315
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 316
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 317
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 318
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 255
    .end local v3    # "intCharCounts":[I
    .end local v5    # "minCount":I
    .end local v6    # "mins":[B
    :cond_9
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 256
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    .line 257
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    .line 259
    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    .line 260
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    .line 266
    :cond_b
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 267
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    .line 269
    :cond_c
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    .line 275
    :cond_d
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 276
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    .line 278
    :cond_e
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    .line 284
    :cond_f
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 285
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x408aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    .line 287
    :cond_10
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x40555555

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    .line 293
    :cond_11
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 294
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x40880000    # 4.25f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    .line 296
    :cond_12
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x40500000    # 3.25f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    .line 303
    :cond_13
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_7

    .line 320
    .restart local v3    # "intCharCounts":[I
    .restart local v5    # "minCount":I
    .restart local v6    # "mins":[B
    :cond_14
    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    if-lt v9, v10, :cond_15

    .line 321
    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/4 v10, 0x2

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    if-nez v9, :cond_16

    .line 322
    :cond_15
    const/16 p2, 0x5

    goto/16 :goto_0

    .line 324
    :cond_16
    const/4 v9, 0x1

    if-ne v5, v9, :cond_17

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_17

    .line 325
    const/16 p2, 0x4

    goto/16 :goto_0

    .line 327
    :cond_17
    const/4 v9, 0x1

    if-ne v5, v9, :cond_18

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_18

    .line 328
    const/16 p2, 0x2

    goto/16 :goto_0

    .line 330
    :cond_18
    const/4 v9, 0x1

    if-ne v5, v9, :cond_19

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_19

    .line 331
    const/16 p2, 0x3

    goto/16 :goto_0

    .line 333
    :cond_19
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    .line 334
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    .line 335
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    .line 336
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    .line 337
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_1a

    .line 338
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 340
    :cond_1a
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ne v9, v10, :cond_1

    .line 341
    add-int v9, p1, v2

    add-int/lit8 v7, v9, 0x1

    .line 342
    .local v7, "p":I
    :goto_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v7, v9, :cond_1c

    .line 352
    :cond_1b
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 343
    :cond_1c
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 344
    .local v8, "tc":C
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 345
    const/16 p2, 0x3

    goto/16 :goto_0

    .line 347
    :cond_1d
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 215
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 217
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static randomize253State(CI)C
    .locals 3
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .prologue
    .line 129
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    .line 130
    .local v0, "pseudoRandom":I
    add-int v1, p0, v0

    .line 131
    .local v1, "tempVariable":I
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_0

    int-to-char v2, v1

    :goto_0
    return v2

    :cond_0
    add-int/lit16 v2, v1, -0xfe

    int-to-char v2, v2

    goto :goto_0
.end method
