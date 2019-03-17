.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v12, 0x1

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v2, v11, -0x1

    .line 44
    .local v2, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v11

    if-nez v11, :cond_0

    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 48
    :cond_0
    mul-int/lit8 v10, v2, 0xc

    .line 50
    .local v10, "size":I
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v10}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v1, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v0, 0x0

    .line 53
    .local v0, "accPos":I
    const/4 v11, 0x0

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    .local v4, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v5

    .line 55
    .local v5, "firstValue":I
    const/16 v6, 0xb

    .local v6, "i":I
    :goto_0
    if-gez v6, :cond_1

    .line 62
    const/4 v6, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-lt v6, v11, :cond_3

    .line 83
    return-object v1

    .line 56
    :cond_1
    shl-int v11, v12, v6

    and-int/2addr v11, v5

    if-eqz v11, :cond_2

    .line 57
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 55
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    .local v3, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    .line 66
    .local v8, "leftValue":I
    const/16 v7, 0xb

    .local v7, "j":I
    :goto_2
    if-gez v7, :cond_5

    .line 73
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 74
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    .line 75
    .local v9, "rightValue":I
    const/16 v7, 0xb

    :goto_3
    if-gez v7, :cond_7

    .line 62
    .end local v9    # "rightValue":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    :cond_5
    shl-int v11, v12, v7

    and-int/2addr v11, v8

    if-eqz v11, :cond_6

    .line 68
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 66
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 76
    .restart local v9    # "rightValue":I
    :cond_7
    shl-int v11, v12, v7

    and-int/2addr v11, v9

    if-eqz v11, :cond_8

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 75
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method
