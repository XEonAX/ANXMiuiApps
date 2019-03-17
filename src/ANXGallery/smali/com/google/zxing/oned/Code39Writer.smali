.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 4
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .prologue
    const/4 v3, 0x1

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 87
    return-void

    .line 84
    :cond_0
    rsub-int/lit8 v2, v0, 0x8

    shl-int v2, v3, v2

    and-int v1, p0, v2

    .line 85
    .local v1, "temp":I
    if-nez v1, :cond_1

    move v2, v3

    :goto_1
    aput v2, p1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v2, 0x2

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
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
    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_39, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 14
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x27

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 48
    .local v3, "length":I
    const/16 v9, 0x50

    if-le v3, v9, :cond_0

    .line 49
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 53
    :cond_0
    const/16 v9, 0x9

    new-array v8, v9, [I

    .line 54
    .local v8, "widths":[I
    add-int/lit8 v0, v3, 0x19

    .line 55
    .local v0, "codeWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 65
    new-array v6, v0, [Z

    .line 66
    .local v6, "result":[Z
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v13

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 67
    invoke-static {v6, v10, v8, v12}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v5

    .line 68
    .local v5, "pos":I
    new-array v4, v12, [I

    aput v12, v4, v10

    .line 69
    .local v4, "narrowWhite":[I
    invoke-static {v6, v5, v4, v10}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 71
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_4

    .line 77
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v13

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 78
    invoke-static {v6, v5, v8, v12}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    .line 79
    return-object v6

    .line 56
    .end local v4    # "narrowWhite":[I
    .end local v5    # "pos":I
    .end local v6    # "result":[Z
    :cond_1
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 57
    .local v2, "indexInString":I
    if-gez v2, :cond_2

    .line 58
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bad contents: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 60
    :cond_2
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v2

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 61
    array-length v11, v8

    move v9, v10

    :goto_2
    if-lt v9, v11, :cond_3

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_3
    aget v7, v8, v9

    .line 62
    .local v7, "width":I
    add-int/2addr v0, v7

    .line 61
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 72
    .end local v2    # "indexInString":I
    .end local v7    # "width":I
    .restart local v4    # "narrowWhite":[I
    .restart local v5    # "pos":I
    .restart local v6    # "result":[Z
    :cond_4
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 73
    .restart local v2    # "indexInString":I
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v2

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 74
    invoke-static {v6, v5, v8, v12}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 75
    invoke-static {v6, v5, v4, v10}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
