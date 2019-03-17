.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 8
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z

    .prologue
    const/4 v5, 0x0

    .line 105
    move v0, p3

    .line 106
    .local v0, "color":Z
    const/4 v3, 0x0

    .line 107
    .local v3, "numAdded":I
    array-length v7, p2

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 114
    return v3

    .line 107
    :cond_0
    aget v2, p2, v6

    .line 108
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v4, p1

    .end local p1    # "pos":I
    .local v4, "pos":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 111
    add-int/2addr v3, v2

    .line 112
    if-eqz v0, :cond_2

    move v0, v5

    .line 107
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move p1, v4

    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_0

    .line 109
    .end local p1    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "pos":I
    .restart local p1    # "pos":I
    aput-boolean v0, p0, v4

    .line 108
    add-int/lit8 v1, v1, 0x1

    move v4, p1

    .end local p1    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_1

    .line 112
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .param p0, "code"    # [Z
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sidesMargin"    # I

    .prologue
    .line 78
    array-length v1, p0

    .line 80
    .local v1, "inputWidth":I
    add-int v0, v1, p3

    .line 81
    .local v0, "fullWidth":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 82
    .local v7, "outputWidth":I
    const/4 v9, 0x1

    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 84
    .local v6, "outputHeight":I
    div-int v4, v7, v0

    .line 85
    .local v4, "multiple":I
    mul-int v9, v1, v4

    sub-int v9, v7, v9

    div-int/lit8 v3, v9, 0x2

    .line 87
    .local v3, "leftPadding":I
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 88
    .local v5, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "inputX":I
    move v8, v3

    .local v8, "outputX":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 93
    return-object v5

    .line 89
    :cond_0
    aget-boolean v9, p0, v2

    if-eqz v9, :cond_1

    .line 90
    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v8, v4

    goto :goto_0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6
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
    .line 53
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Found empty contents"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_0
    if-ltz p3, :cond_1

    if-gez p4, :cond_2

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Negative size is not allowed. Input: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result v1

    .line 63
    .local v1, "sidesMargin":I
    if-eqz p5, :cond_3

    .line 64
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 65
    .local v2, "sidesMarginInt":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    .end local v2    # "sidesMarginInt":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object v0

    .line 71
    .local v0, "code":[Z
    invoke-static {v0, p3, p4, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    return-object v3
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0xa

    return v0
.end method
