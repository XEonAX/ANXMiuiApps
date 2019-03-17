.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 36
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .locals 5
    .param p1, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v2

    .line 151
    .local v2, "numErrors":I
    new-array v3, v2, [I

    .line 152
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 153
    .local v0, "e":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    if-lt v0, v2, :cond_1

    .line 159
    :cond_0
    if-eq v0, v2, :cond_3

    .line 160
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 154
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 155
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    aput v4, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_3
    return-object v3
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .locals 12
    .param p1, "errorEvaluator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "errorLocations"    # [I

    .prologue
    .line 168
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    .line 169
    .local v1, "errorLocatorDegree":I
    new-array v3, v1, [I

    .line 170
    .local v3, "formalDerivativeCoefficients":[I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-le v4, v1, :cond_0

    .line 174
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v9, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 177
    .local v2, "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    array-length v7, p3

    .line 178
    .local v7, "s":I
    new-array v6, v7, [I

    .line 179
    .local v6, "result":[I
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v7, :cond_1

    .line 185
    return-object v6

    .line 171
    .end local v2    # "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v6    # "result":[I
    .end local v7    # "s":I
    :cond_0
    sub-int v9, v1, v4

    .line 172
    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v10, v4, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    .line 171
    aput v10, v3, v9

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .restart local v2    # "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v6    # "result":[I
    .restart local v7    # "s":I
    :cond_1
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v10, p3, v4

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    .line 181
    .local v8, "xiInverse":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v10, 0x0

    invoke-virtual {p1, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v5

    .line 182
    .local v5, "numerator":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v0

    .line 183
    .local v0, "denominator":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v9, v5, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v9

    aput v9, v6, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 20
    .param p1, "a"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "b"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 101
    move-object/from16 v17, p1

    .line 102
    .local v17, "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 p1, p2

    .line 103
    move-object/from16 p2, v17

    .line 106
    .end local v17    # "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    move-object/from16 v9, p1

    .line 107
    .local v9, "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v8, p2

    .line 108
    .local v8, "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v15

    .line 109
    .local v15, "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v14

    .line 112
    .local v14, "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    div-int/lit8 v19, p3, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 137
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v13

    .line 138
    .local v13, "sigmaTildeAtZero":I
    if-nez v13, :cond_5

    .line 139
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v18

    throw v18

    .line 113
    .end local v13    # "sigmaTildeAtZero":I
    :cond_1
    move-object v10, v9

    .line 114
    .local v10, "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v16, v15

    .line 115
    .local v16, "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v9, v8

    .line 116
    move-object v15, v14

    .line 119
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 121
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v18

    throw v18

    .line 123
    :cond_2
    move-object v8, v10

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    .line 125
    .local v7, "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v3

    .line 126
    .local v3, "denominatorLeadingTerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    .line 127
    .local v4, "dltInverse":I
    :goto_1
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 134
    :cond_3
    invoke-virtual {v7, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v14

    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    sub-int v2, v18, v19

    .line 129
    .local v2, "degreeDiff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v11

    .line 130
    .local v11, "scale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    .line 131
    invoke-virtual {v9, v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    goto :goto_1

    .line 142
    .end local v2    # "degreeDiff":I
    .end local v3    # "denominatorLeadingTerm":I
    .end local v4    # "dltInverse":I
    .end local v7    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v10    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v11    # "scale":I
    .end local v16    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v13    # "sigmaTildeAtZero":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v5

    .line 143
    .local v5, "inverse":I
    invoke-virtual {v14, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v12

    .line 144
    .local v12, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v8, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    .line 145
    .local v6, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    return-object v18
.end method


# virtual methods
.method public decode([II[I)I
    .locals 27
    .param p1, "received"    # [I
    .param p2, "numECCodewords"    # I
    .param p3, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v14, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 50
    .local v14, "poly":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move/from16 v0, p2

    new-array v4, v0, [I

    .line 51
    .local v4, "S":[I
    const/4 v7, 0x0

    .line 52
    .local v7, "error":Z
    move/from16 v11, p2

    .local v11, "i":I
    :goto_0
    if-gtz v11, :cond_0

    .line 60
    if-nez v7, :cond_2

    .line 61
    const/16 v20, 0x0

    .line 94
    :goto_1
    return v20

    .line 53
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    .line 54
    .local v10, "eval":I
    sub-int v20, p2, v11

    aput v10, v4, v20

    .line 55
    if-eqz v10, :cond_1

    .line 56
    const/4 v7, 0x1

    .line 52
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 64
    .end local v10    # "eval":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v12

    .line 65
    .local v12, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    if-eqz p3, :cond_3

    .line 66
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 74
    :cond_3
    new-instance v18, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 78
    .local v18, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    .line 79
    .local v17, "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v20, 0x0

    aget-object v16, v17, v20

    .line 80
    .local v16, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v20, 0x1

    aget-object v13, v17, v20

    .line 84
    .local v13, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v8

    .line 85
    .local v8, "errorLocations":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1, v8}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v9

    .line 87
    .local v9, "errorMagnitudes":[I
    const/4 v11, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v11, v0, :cond_5

    .line 94
    array-length v0, v8

    move/from16 v20, v0

    goto/16 :goto_1

    .line 66
    .end local v8    # "errorLocations":[I
    .end local v9    # "errorMagnitudes":[I
    .end local v13    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v16    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v17    # "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v18    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_4
    aget v6, p3, v20

    .line 67
    .local v6, "erasure":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    sub-int v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v5

    .line 69
    .local v5, "b":I
    new-instance v19, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x1

    aput v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 70
    .local v19, "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v12

    .line 66
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 88
    .end local v5    # "b":I
    .end local v6    # "erasure":I
    .end local v19    # "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v8    # "errorLocations":[I
    .restart local v9    # "errorMagnitudes":[I
    .restart local v13    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v16    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v17    # "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v18    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v21, v0

    aget v22, v8, v11

    invoke-virtual/range {v21 .. v22}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->log(I)I

    move-result v21

    sub-int v15, v20, v21

    .line 89
    .local v15, "position":I
    if-gez v15, :cond_6

    .line 90
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v20

    throw v20

    .line 92
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    aget v21, p1, v15

    aget v22, v9, v11

    invoke-virtual/range {v20 .. v22}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v20

    aput v20, p1, v15

    .line 87
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3
.end method
