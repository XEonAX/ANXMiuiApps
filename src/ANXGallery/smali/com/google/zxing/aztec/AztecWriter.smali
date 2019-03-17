.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;
    .locals 4
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "eccPercent"    # I
    .param p6, "layers"    # I

    .prologue
    .line 55
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-eq p1, v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode AZTEC, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, p5, p6}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    .line 59
    .local v0, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    invoke-static {v0, p2, p3}, Lcom/google/zxing/aztec/AztecWriter;->renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private static renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .param p0, "code"    # Lcom/google/zxing/aztec/encoder/AztecCode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/aztec/encoder/AztecCode;->getMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 64
    .local v1, "input":Lcom/google/zxing/common/BitMatrix;
    if-nez v1, :cond_0

    .line 65
    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14

    .line 67
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 68
    .local v3, "inputWidth":I
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 69
    .local v2, "inputHeight":I
    move/from16 v0, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 70
    .local v10, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 72
    .local v9, "outputHeight":I
    div-int v14, v10, v3

    div-int v15, v9, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 73
    .local v7, "multiple":I
    mul-int v14, v3, v7

    sub-int v14, v10, v14

    div-int/lit8 v6, v14, 0x2

    .line 74
    .local v6, "leftPadding":I
    mul-int v14, v2, v7

    sub-int v14, v9, v14

    div-int/lit8 v13, v14, 0x2

    .line 76
    .local v13, "topPadding":I
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 78
    .local v8, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v5, 0x0

    .local v5, "inputY":I
    move v12, v13

    .local v12, "outputY":I
    :goto_0
    if-lt v5, v2, :cond_1

    .line 86
    return-object v8

    .line 80
    :cond_1
    const/4 v4, 0x0

    .local v4, "inputX":I
    move v11, v6

    .local v11, "outputX":I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 78
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v12, v7

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 82
    invoke-virtual {v8, v11, v12, v7, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 80
    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v11, v7

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
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
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/4 v9, 0x0

    .line 40
    if-nez p5, :cond_0

    move-object v7, v9

    .line 41
    .local v7, "charset":Ljava/lang/String;
    :goto_0
    if-nez p5, :cond_1

    move-object v8, v9

    .line 42
    .local v8, "eccPercent":Ljava/lang/Number;
    :goto_1
    if-nez p5, :cond_2

    .line 47
    .local v9, "layers":Ljava/lang/Number;
    :goto_2
    if-nez v7, :cond_3

    sget-object v4, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 48
    :goto_3
    if-nez v8, :cond_4

    const/16 v5, 0x21

    .line 49
    :goto_4
    if-nez v9, :cond_5

    const/4 v6, 0x0

    :goto_5
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 43
    invoke-static/range {v0 .. v6}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 40
    .end local v7    # "charset":Ljava/lang/String;
    .end local v8    # "eccPercent":Ljava/lang/Number;
    .end local v9    # "layers":Ljava/lang/Number;
    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_0

    .line 41
    .restart local v7    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v8, v0

    goto :goto_1

    .line 42
    .restart local v8    # "eccPercent":Ljava/lang/Number;
    :cond_2
    sget-object v0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v9, v0

    goto :goto_2

    .line 47
    .restart local v9    # "layers":Ljava/lang/Number;
    :cond_3
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_4

    .line 49
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_5
.end method
