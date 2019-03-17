.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 141
    .local v1, "c":C
    const/16 v6, 0x28

    if-eq v1, v6, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v5

    .line 145
    :cond_1
    add-int/lit8 v6, p0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 150
    .local v2, "currentChar":C
    const/16 v6, 0x29

    if-ne v2, v6, :cond_3

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 152
    :cond_3
    const/16 v6, 0x30

    if-lt v2, v6, :cond_0

    const/16 v6, 0x39

    if-gt v2, v6, :cond_0

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x28

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 166
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    .local v1, "c":C
    if-ne v1, v5, :cond_2

    .line 170
    invoke-static {v2, v3}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 24
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v20

    .line 46
    .local v20, "format":Lcom/google/zxing/BarcodeFormat;
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v20

    if-eq v0, v3, :cond_0

    .line 48
    const/4 v3, 0x0

    .line 121
    :goto_0
    return-object v3

    .line 50
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "rawText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 53
    .local v5, "productID":Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "sscc":Ljava/lang/String;
    const/4 v7, 0x0

    .line 55
    .local v7, "lotNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 56
    .local v8, "productionDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 57
    .local v9, "packagingDate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, "bestBeforeDate":Ljava/lang/String;
    const/4 v11, 0x0

    .line 59
    .local v11, "expirationDate":Ljava/lang/String;
    const/4 v12, 0x0

    .line 60
    .local v12, "weight":Ljava/lang/String;
    const/4 v13, 0x0

    .line 61
    .local v13, "weightType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 62
    .local v14, "weightIncrement":Ljava/lang/String;
    const/4 v15, 0x0

    .line 63
    .local v15, "price":Ljava/lang/String;
    const/16 v16, 0x0

    .line 64
    .local v16, "priceIncrement":Ljava/lang/String;
    const/16 v17, 0x0

    .line 65
    .local v17, "priceCurrency":Ljava/lang/String;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v18, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 69
    .local v21, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_1

    .line 121
    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 70
    :cond_1
    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 71
    .local v19, "ai":Ljava/lang/String;
    if-nez v19, :cond_2

    .line 74
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int v21, v21, v3

    .line 77
    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 78
    .local v22, "value":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    add-int v21, v21, v3

    .line 81
    const-string v3, "00"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_3

    .line 82
    move-object/from16 v6, v22

    .line 83
    goto :goto_1

    :cond_3
    const-string v3, "01"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_4

    .line 84
    move-object/from16 v5, v22

    .line 85
    goto :goto_1

    :cond_4
    const-string v3, "10"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_5

    .line 86
    move-object/from16 v7, v22

    .line 87
    goto :goto_1

    :cond_5
    const-string v3, "11"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_6

    .line 88
    move-object/from16 v8, v22

    .line 89
    goto :goto_1

    :cond_6
    const-string v3, "13"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 90
    move-object/from16 v9, v22

    .line 91
    goto :goto_1

    :cond_7
    const-string v3, "15"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 92
    move-object/from16 v10, v22

    .line 93
    goto :goto_1

    :cond_8
    const-string v3, "17"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_9

    .line 94
    move-object/from16 v11, v22

    .line 95
    goto :goto_1

    :cond_9
    const-string v3, "3100"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3101"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3102"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3103"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3104"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3105"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3106"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3107"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3108"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_a

    const-string v3, "3109"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 96
    :cond_a
    move-object/from16 v12, v22

    .line 97
    const-string v13, "KG"

    .line 98
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 99
    goto/16 :goto_1

    :cond_b
    const-string v3, "3200"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3201"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3202"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3203"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3204"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3205"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3206"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3207"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3208"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_c

    const-string v3, "3209"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_d

    .line 100
    :cond_c
    move-object/from16 v12, v22

    .line 101
    const-string v13, "LB"

    .line 102
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 103
    goto/16 :goto_1

    :cond_d
    const-string v3, "3920"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_e

    const-string v3, "3921"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_e

    const-string v3, "3922"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_e

    const-string v3, "3923"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_f

    .line 104
    :cond_e
    move-object/from16 v15, v22

    .line 105
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 106
    goto/16 :goto_1

    :cond_f
    const-string v3, "3930"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_10

    const-string v3, "3931"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_10

    const-string v3, "3932"

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_10

    const-string v3, "3933"

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_12

    .line 107
    :cond_10
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v3, v0, :cond_11

    .line 111
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 113
    :cond_11
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 114
    const/4 v3, 0x0

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 115
    const/4 v3, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 116
    goto/16 :goto_1

    .line 118
    :cond_12
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v0

    return-object v0
.end method
