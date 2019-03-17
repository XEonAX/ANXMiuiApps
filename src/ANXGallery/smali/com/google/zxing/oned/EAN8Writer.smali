.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
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
    .line 45
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode EAN_8, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 8
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 59
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requested contents should be 8 digits long, but got "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_0
    const/16 v4, 0x43

    new-array v3, v4, [Z

    .line 64
    .local v3, "result":[Z
    const/4 v2, 0x0

    .line 66
    .local v2, "pos":I
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v3, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    .line 73
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v3, v2, v4, v7}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 75
    const/4 v1, 0x4

    :goto_1
    const/4 v4, 0x7

    if-le v1, v4, :cond_2

    .line 79
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v3, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    .line 81
    return-object v3

    .line 69
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "digit":I
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v4, v4, v0

    invoke-static {v3, v2, v4, v7}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "digit":I
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .restart local v0    # "digit":I
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v4, v4, v0

    invoke-static {v3, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
