.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    .line 162
    .local v3, "matrixWidgth":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 164
    .local v2, "matrixHeight":I
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 165
    .local v4, "output":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 175
    return-object v4

    .line 167
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 170
    invoke-virtual {v4, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "placement"    # Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .param p1, "symbolInfo"    # Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 106
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v4

    .line 107
    .local v4, "symbolWidth":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v3

    .line 109
    .local v3, "symbolHeight":I
    new-instance v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v10

    invoke-direct {v0, v7, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 111
    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v2, 0x0

    .line 113
    .local v2, "matrixY":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-lt v6, v3, :cond_0

    .line 151
    invoke-static {v0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    return-object v7

    .line 116
    :cond_0
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v7, v6, v7

    if-nez v7, :cond_1

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "matrixX":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 124
    .end local v1    # "matrixX":I
    .end local v5    # "x":I
    :cond_1
    const/4 v1, 0x0

    .line 125
    .restart local v1    # "matrixX":I
    const/4 v5, 0x0

    .restart local v5    # "x":I
    :goto_2
    if-lt v5, v4, :cond_5

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 141
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v7, v6, v7

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_2

    .line 142
    const/4 v1, 0x0

    .line 143
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    if-lt v5, v7, :cond_9

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 113
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_3
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_4

    move v7, v8

    :goto_4
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v7, v9

    .line 119
    goto :goto_4

    .line 127
    :cond_5
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v7, v5, v7

    if-nez v7, :cond_6

    .line 128
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 131
    :cond_6
    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v7

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v7, v5, v7

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_7

    .line 135
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_8

    move v7, v8

    :goto_5
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 125
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    move v7, v9

    .line 135
    goto :goto_5

    .line 144
    :cond_9
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 14
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .prologue
    .line 49
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 50
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Found empty contents"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 53
    :cond_0
    sget-object v11, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p2

    if-eq v0, v11, :cond_1

    .line 54
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Can only encode DATA_MATRIX, but got "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 57
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 58
    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Requested dimensions are too small: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x78

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 62
    :cond_3
    sget-object v9, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 63
    .local v9, "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    const/4 v4, 0x0

    .line 64
    .local v4, "minSize":Lcom/google/zxing/Dimension;
    const/4 v3, 0x0

    .line 65
    .local v3, "maxSize":Lcom/google/zxing/Dimension;
    if-eqz p5, :cond_6

    .line 66
    sget-object v11, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 67
    .local v8, "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    if-eqz v8, :cond_4

    .line 68
    move-object v9, v8

    .line 70
    :cond_4
    sget-object v11, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/Dimension;

    .line 71
    .local v7, "requestedMinSize":Lcom/google/zxing/Dimension;
    if-eqz v7, :cond_5

    .line 72
    move-object v4, v7

    .line 74
    :cond_5
    sget-object v11, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/Dimension;

    .line 75
    .local v6, "requestedMaxSize":Lcom/google/zxing/Dimension;
    if-eqz v6, :cond_6

    .line 76
    move-object v3, v6

    .line 82
    .end local v6    # "requestedMaxSize":Lcom/google/zxing/Dimension;
    .end local v7    # "requestedMinSize":Lcom/google/zxing/Dimension;
    .end local v8    # "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    :cond_6
    invoke-static {p1, v9, v4, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "encoded":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v11, v9, v4, v3, v12}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v10

    .line 87
    .local v10, "symbolInfo":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    invoke-static {v2, v10}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "codewords":Ljava/lang/String;
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v11

    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v12

    invoke-direct {v5, v1, v11, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 92
    .local v5, "placement":Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 95
    invoke-static {v5, v10}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v11

    return-object v11
.end method
