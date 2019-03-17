.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;III)Lcom/google/zxing/common/BitMatrix;
    .locals 13
    .param p0, "encoder"    # Lcom/google/zxing/pdf417/encoder/PDF417;
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "margin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v2, 0x2

    .line 98
    .local v2, "errorCorrectionLevel":I
    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    .line 100
    const/4 v3, 0x2

    .line 101
    .local v3, "lineThickness":I
    const/4 v1, 0x4

    .line 102
    .local v1, "aspectRatio":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v3, v11}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v4

    .line 103
    .local v4, "originalScale":[[B
    const/4 v5, 0x0

    .line 104
    .local v5, "rotated":Z
    move/from16 v0, p3

    if-le v0, p2, :cond_2

    const/4 v10, 0x1

    :goto_0
    const/4 v11, 0x0

    aget-object v11, v4, v11

    array-length v11, v11

    array-length v12, v4

    if-ge v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_1
    xor-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 105
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v4

    .line 106
    const/4 v5, 0x1

    .line 109
    :cond_0
    const/4 v10, 0x0

    aget-object v10, v4, v10

    array-length v10, v10

    div-int v7, p2, v10

    .line 110
    .local v7, "scaleX":I
    array-length v10, v4

    div-int v8, p3, v10

    .line 113
    .local v8, "scaleY":I
    if-ge v7, v8, :cond_4

    .line 114
    move v6, v7

    .line 119
    .local v6, "scale":I
    :goto_2
    const/4 v10, 0x1

    if-le v6, v10, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v10

    mul-int v11, v6, v3

    mul-int v12, v6, v1

    mul-int/2addr v12, v3

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v9

    .line 122
    .local v9, "scaledMatrix":[[B
    if-eqz v5, :cond_1

    .line 123
    invoke-static {v9}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v9

    .line 125
    :cond_1
    move/from16 v0, p4

    invoke-static {v9, v0}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    .line 127
    .end local v9    # "scaledMatrix":[[B
    :goto_3
    return-object v10

    .line 104
    .end local v6    # "scale":I
    .end local v7    # "scaleX":I
    .end local v8    # "scaleY":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 116
    .restart local v7    # "scaleX":I
    .restart local v8    # "scaleY":I
    :cond_4
    move v6, v8

    .restart local v6    # "scale":I
    goto :goto_2

    .line 127
    :cond_5
    move/from16 v0, p4

    invoke-static {v4, v0}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    goto :goto_3
.end method

.method private static bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;
    .locals 8
    .param p0, "input"    # [[B
    .param p1, "margin"    # I

    .prologue
    const/4 v7, 0x0

    .line 139
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    aget-object v4, p0, v7

    array-length v4, v4

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v4, v5

    array-length v5, p0

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 140
    .local v0, "output":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 141
    const/4 v2, 0x0

    .local v2, "y":I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    sub-int/2addr v4, p1

    add-int/lit8 v3, v4, -0x1

    .local v3, "yOutput":I
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_0

    .line 149
    return-object v0

    .line 142
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    aget-object v4, p0, v7

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 141
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 144
    :cond_1
    aget-object v4, p0, v2

    aget-byte v4, v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 145
    add-int v4, v1, p1

    invoke-virtual {v0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 142
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static rotateArray([[B)[[B
    .locals 7
    .param p0, "bitarray"    # [[B

    .prologue
    const/4 v6, 0x0

    .line 156
    aget-object v4, p0, v6

    array-length v4, v4

    array-length v5, p0

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 157
    .local v3, "temp":[[B
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 165
    return-object v3

    .line 160
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 161
    .local v1, "inverseii":I
    const/4 v2, 0x0

    .local v2, "jj":I
    :goto_1
    aget-object v4, p0, v6

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    aget-object v4, v3, v2

    aget-object v5, p0, v0

    aget-byte v5, v5, v2

    aput-byte v5, v4, v1

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 8
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 48
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v4, :cond_0

    .line 49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can only encode PDF_417, but got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_0
    new-instance v1, Lcom/google/zxing/pdf417/encoder/PDF417;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    .line 53
    .local v1, "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    const/16 v3, 0x1e

    .line 55
    .local v3, "margin":I
    if-eqz p5, :cond_5

    .line 56
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 59
    :cond_1
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/pdf417/encoder/Compaction;

    invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 62
    :cond_2
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/pdf417/encoder/Dimensions;

    .line 64
    .local v0, "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v4

    .line 65
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v5

    .line 66
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v6

    .line 67
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v7

    .line 64
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 69
    .end local v0    # "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    :cond_3
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 72
    :cond_4
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "encoding":Ljava/lang/String;
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/encoder/PDF417;->setEncoding(Ljava/nio/charset/Charset;)V

    .line 78
    .end local v2    # "encoding":Ljava/lang/String;
    :cond_5
    invoke-static {v1, p1, p3, p4, v3}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    return-object v4
.end method
