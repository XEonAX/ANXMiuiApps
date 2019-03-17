.class public final Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# static fields
.field private static final ALOG:[I

.field private static final FACTORS:[[I

.field private static final FACTOR_SETS:[I

.field private static final LOG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x5

    .line 29
    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 28
    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    .line 34
    const/16 v2, 0x10

    new-array v2, v2, [[I

    const/4 v3, 0x0

    .line 35
    new-array v4, v5, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 36
    new-array v4, v6, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 37
    new-array v4, v7, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 38
    new-array v4, v8, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 39
    new-array v4, v9, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    .line 40
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v5

    const/4 v3, 0x6

    .line 41
    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    .line 42
    const/16 v3, 0x14

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v2, v6

    const/16 v3, 0x8

    .line 43
    const/16 v4, 0x18

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    .line 44
    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 45
    const/16 v4, 0x1c

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    .line 46
    aput-object v4, v2, v3

    .line 47
    const/16 v3, 0x24

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    .line 49
    aput-object v3, v2, v7

    .line 50
    const/16 v3, 0x2a

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    .line 52
    aput-object v3, v2, v8

    .line 53
    const/16 v3, 0x30

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    .line 55
    aput-object v3, v2, v9

    const/16 v3, 0xd

    .line 56
    const/16 v4, 0x38

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    .line 59
    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 60
    const/16 v4, 0x3e

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    .line 63
    aput-object v4, v2, v3

    const/16 v3, 0xf

    .line 64
    const/16 v4, 0x44

    new-array v4, v4, [I

    fill-array-data v4, :array_10

    .line 68
    aput-object v4, v2, v3

    .line 34
    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTORS:[[I

    .line 77
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    .line 78
    const/16 v2, 0xff

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xff

    if-lt v0, v2, :cond_0

    .line 89
    return-void

    .line 82
    :cond_0
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    aput v1, v2, v0

    .line 83
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aput v0, v2, v1

    .line 84
    mul-int/lit8 v1, v1, 0x2

    .line 85
    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 86
    xor-int/lit16 v1, v1, 0x12d

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    nop

    :array_0
    .array-data 4
        0x5
        0x7
        0xa
        0xb
        0xc
        0xe
        0x12
        0x14
        0x18
        0x1c
        0x24
        0x2a
        0x30
        0x38
        0x3e
        0x44
    .end array-data

    .line 35
    :array_1
    .array-data 4
        0xe4
        0x30
        0xf
        0x6f
        0x3e
    .end array-data

    .line 36
    :array_2
    .array-data 4
        0x17
        0x44
        0x90
        0x86
        0xf0
        0x5c
        0xfe
    .end array-data

    .line 37
    :array_3
    .array-data 4
        0x1c
        0x18
        0xb9
        0xa6
        0xdf
        0xf8
        0x74
        0xff
        0x6e
        0x3d
    .end array-data

    .line 38
    :array_4
    .array-data 4
        0xaf
        0x8a
        0xcd
        0xc
        0xc2
        0xa8
        0x27
        0xf5
        0x3c
        0x61
        0x78
    .end array-data

    .line 39
    :array_5
    .array-data 4
        0x29
        0x99
        0x9e
        0x5b
        0x3d
        0x2a
        0x8e
        0xd5
        0x61
        0xb2
        0x64
        0xf2
    .end array-data

    .line 40
    :array_6
    .array-data 4
        0x9c
        0x61
        0xc0
        0xfc
        0x5f
        0x9
        0x9d
        0x77
        0x8a
        0x2d
        0x12
        0xba
        0x53
        0xb9
    .end array-data

    .line 41
    :array_7
    .array-data 4
        0x53
        0xc3
        0x64
        0x27
        0xbc
        0x4b
        0x42
        0x3d
        0xf1
        0xd5
        0x6d
        0x81
        0x5e
        0xfe
        0xe1
        0x30
        0x5a
        0xbc
    .end array-data

    .line 42
    :array_8
    .array-data 4
        0xf
        0xc3
        0xf4
        0x9
        0xe9
        0x47
        0xa8
        0x2
        0xbc
        0xa0
        0x99
        0x91
        0xfd
        0x4f
        0x6c
        0x52
        0x1b
        0xae
        0xba
        0xac
    .end array-data

    .line 43
    :array_9
    .array-data 4
        0x34
        0xbe
        0x58
        0xcd
        0x6d
        0x27
        0xb0
        0x15
        0x9b
        0xc5
        0xfb
        0xdf
        0x9b
        0x15
        0x5
        0xac
        0xfe
        0x7c
        0xc
        0xb5
        0xb8
        0x60
        0x32
        0xc1
    .end array-data

    .line 45
    :array_a
    .array-data 4
        0xd3
        0xe7
        0x2b
        0x61
        0x47
        0x60
        0x67
        0xae
        0x25
        0x97
        0xaa
        0x35
        0x4b
        0x22
        0xf9
        0x79
        0x11
        0x8a
        0x6e
        0xd5
        0x8d
        0x88
        0x78
        0x97
        0xe9
        0xa8
        0x5d
        0xff
    .end array-data

    .line 47
    :array_b
    .array-data 4
        0xf5
        0x7f
        0xf2
        0xda
        0x82
        0xfa
        0xa2
        0xb5
        0x66
        0x78
        0x54
        0xb3
        0xdc
        0xfb
        0x50
        0xb6
        0xe5
        0x12
        0x2
        0x4
        0x44
        0x21
        0x65
        0x89
        0x5f
        0x77
        0x73
        0x2c
        0xaf
        0xb8
        0x3b
        0x19
        0xe1
        0x62
        0x51
        0x70
    .end array-data

    .line 50
    :array_c
    .array-data 4
        0x4d
        0xc1
        0x89
        0x1f
        0x13
        0x26
        0x16
        0x99
        0xf7
        0x69
        0x7a
        0x2
        0xf5
        0x85
        0xf2
        0x8
        0xaf
        0x5f
        0x64
        0x9
        0xa7
        0x69
        0xd6
        0x6f
        0x39
        0x79
        0x15
        0x1
        0xfd
        0x39
        0x36
        0x65
        0xf8
        0xca
        0x45
        0x32
        0x96
        0xb1
        0xe2
        0x5
        0x9
        0x5
    .end array-data

    .line 53
    :array_d
    .array-data 4
        0xf5
        0x84
        0xac
        0xdf
        0x60
        0x20
        0x75
        0x16
        0xee
        0x85
        0xee
        0xe7
        0xcd
        0xbc
        0xed
        0x57
        0xbf
        0x6a
        0x10
        0x93
        0x76
        0x17
        0x25
        0x5a
        0xaa
        0xcd
        0x83
        0x58
        0x78
        0x64
        0x42
        0x8a
        0xba
        0xf0
        0x52
        0x2c
        0xb0
        0x57
        0xbb
        0x93
        0xa0
        0xaf
        0x45
        0xd5
        0x5c
        0xfd
        0xe1
        0x13
    .end array-data

    .line 56
    :array_e
    .array-data 4
        0xaf
        0x9
        0xdf
        0xee
        0xc
        0x11
        0xdc
        0xd0
        0x64
        0x1d
        0xaf
        0xaa
        0xe6
        0xc0
        0xd7
        0xeb
        0x96
        0x9f
        0x24
        0xdf
        0x26
        0xc8
        0x84
        0x36
        0xe4
        0x92
        0xda
        0xea
        0x75
        0xcb
        0x1d
        0xe8
        0x90
        0xee
        0x16
        0x96
        0xc9
        0x75
        0x3e
        0xcf
        0xa4
        0xd
        0x89
        0xf5
        0x7f
        0x43
        0xf7
        0x1c
        0x9b
        0x2b
        0xcb
        0x6b
        0xe9
        0x35
        0x8f
        0x2e
    .end array-data

    .line 60
    :array_f
    .array-data 4
        0xf2
        0x5d
        0xa9
        0x32
        0x90
        0xd2
        0x27
        0x76
        0xca
        0xbc
        0xc9
        0xbd
        0x8f
        0x6c
        0xc4
        0x25
        0xb9
        0x70
        0x86
        0xe6
        0xf5
        0x3f
        0xc5
        0xbe
        0xfa
        0x6a
        0xb9
        0xdd
        0xaf
        0x40
        0x72
        0x47
        0xa1
        0x2c
        0x93
        0x6
        0x1b
        0xda
        0x33
        0x3f
        0x57
        0xa
        0x28
        0x82
        0xbc
        0x11
        0xa3
        0x1f
        0xb0
        0xaa
        0x4
        0x6b
        0xe8
        0x7
        0x5e
        0xa6
        0xe0
        0x7c
        0x56
        0x2f
        0xb
        0xcc
    .end array-data

    .line 64
    :array_10
    .array-data 4
        0xdc
        0xe4
        0xad
        0x59
        0xfb
        0x95
        0x9f
        0x38
        0x59
        0x21
        0x93
        0xf4
        0x9a
        0x24
        0x49
        0x7f
        0xd5
        0x88
        0xf8
        0xb4
        0xea
        0xc5
        0x9e
        0xb1
        0x44
        0x7a
        0x5d
        0xd5
        0xf
        0xa0
        0xe3
        0xec
        0x42
        0x8b
        0x99
        0xb9
        0xca
        0xa7
        0xb3
        0x19
        0xdc
        0xe8
        0x60
        0xd2
        0xe7
        0x88
        0xdf
        0xef
        0xb5
        0xf1
        0x3b
        0x34
        0xac
        0x19
        0x31
        0xe8
        0xd3
        0xbd
        0x40
        0x36
        0x6c
        0x99
        0x84
        0x3f
        0x60
        0x67
        0x52
        0xba
    .end array-data
.end method

.method private static createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2
    .param p0, "codewords"    # Ljava/lang/CharSequence;
    .param p1, "numECWords"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createECCBlock(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .locals 12
    .param p0, "codewords"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "numECWords"    # I

    .prologue
    .line 146
    const/4 v6, -0x1

    .line 147
    .local v6, "table":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    array-length v7, v7

    if-lt v2, v7, :cond_0

    .line 153
    :goto_1
    if-gez v6, :cond_2

    .line 154
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Illegal number of error correction codewords specified: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    :cond_0
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    aget v7, v7, v2

    if-ne v7, p3, :cond_1

    .line 149
    move v6, v2

    .line 150
    goto :goto_1

    .line 147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_2
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTORS:[[I

    aget-object v5, v7, v6

    .line 158
    .local v5, "poly":[I
    new-array v0, p3, [C

    .line 159
    .local v0, "ecc":[C
    const/4 v2, 0x0

    :goto_2
    if-lt v2, p3, :cond_3

    .line 162
    move v2, p1

    :goto_3
    add-int v7, p1, p2

    if-lt v2, v7, :cond_4

    .line 177
    new-array v1, p3, [C

    .line 178
    .local v1, "eccReversed":[C
    const/4 v2, 0x0

    :goto_4
    if-lt v2, p3, :cond_8

    .line 181
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 160
    .end local v1    # "eccReversed":[C
    :cond_3
    const/4 v7, 0x0

    aput-char v7, v0, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 163
    :cond_4
    add-int/lit8 v7, p3, -0x1

    aget-char v7, v0, v7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    xor-int v4, v7, v8

    .line 164
    .local v4, "m":I
    add-int/lit8 v3, p3, -0x1

    .local v3, "k":I
    :goto_5
    if-gtz v3, :cond_5

    .line 171
    if-eqz v4, :cond_7

    const/4 v7, 0x0

    aget v7, v5, v7

    if-eqz v7, :cond_7

    .line 172
    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v9, v9, v4

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    const/4 v11, 0x0

    aget v11, v5, v11

    aget v10, v10, v11

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v0, v7

    .line 162
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 165
    :cond_5
    if-eqz v4, :cond_6

    aget v7, v5, v3

    if-eqz v7, :cond_6

    .line 166
    add-int/lit8 v7, v3, -0x1

    aget-char v7, v0, v7

    sget-object v8, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v9, v9, v4

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v11, v5, v3

    aget v10, v10, v11

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v0, v3

    .line 164
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 168
    :cond_6
    add-int/lit8 v7, v3, -0x1

    aget-char v7, v0, v7

    aput-char v7, v0, v3

    goto :goto_7

    .line 174
    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-char v8, v0, v7

    goto :goto_6

    .line 179
    .end local v3    # "k":I
    .end local v4    # "m":I
    .restart local v1    # "eccReversed":[C
    :cond_8
    sub-int v7, p3, v2

    add-int/lit8 v7, v7, -0x1

    aget-char v7, v0, v7

    aput-char v7, v1, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;
    .locals 16
    .param p0, "codewords"    # Ljava/lang/String;
    .param p1, "symbolInfo"    # Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v15

    if-eq v14, v15, :cond_0

    .line 103
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 104
    const-string v15, "The number of codewords does not match the selected symbol"

    .line 103
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 106
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorCodewords()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v11, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getInterleavedBlockCount()I

    move-result v2

    .line 109
    .local v2, "blockCount":I
    const/4 v14, 0x1

    if-ne v2, v14, :cond_2

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorCodewords()I

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "ecc":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .end local v6    # "ecc":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 113
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->capacity()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    new-array v4, v2, [I

    .line 115
    .local v4, "dataSizes":[I
    new-array v7, v2, [I

    .line 116
    .local v7, "errorSizes":[I
    new-array v12, v2, [I

    .line 117
    .local v12, "startPos":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v2, :cond_3

    .line 125
    const/4 v1, 0x0

    .local v1, "block":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    aget v14, v4, v1

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v13, "temp":Ljava/lang/StringBuilder;
    move v3, v1

    .local v3, "d":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v14

    if-lt v3, v14, :cond_5

    .line 130
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aget v15, v7, v1

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    .line 131
    .restart local v6    # "ecc":Ljava/lang/String;
    const/4 v9, 0x0

    .line 132
    .local v9, "pos":I
    move v5, v1

    .local v5, "e":I
    :goto_3
    aget v14, v7, v1

    mul-int/2addr v14, v2

    if-lt v5, v14, :cond_6

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "block":I
    .end local v3    # "d":I
    .end local v5    # "e":I
    .end local v6    # "ecc":Ljava/lang/String;
    .end local v9    # "pos":I
    .end local v13    # "temp":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataLengthForInterleavedBlock(I)I

    move-result v14

    aput v14, v4, v8

    .line 119
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorLengthForInterleavedBlock(I)I

    move-result v14

    aput v14, v7, v8

    .line 120
    const/4 v14, 0x0

    aput v14, v12, v8

    .line 121
    if-lez v8, :cond_4

    .line 122
    add-int/lit8 v14, v8, -0x1

    aget v14, v12, v14

    aget v15, v4, v8

    add-int/2addr v14, v15

    aput v14, v12, v8

    .line 117
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    .restart local v1    # "block":I
    .restart local v3    # "d":I
    .restart local v13    # "temp":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/2addr v3, v2

    goto :goto_2

    .line 133
    .restart local v5    # "e":I
    .restart local v6    # "ecc":Ljava/lang/String;
    .restart local v9    # "pos":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v14

    add-int/2addr v14, v5

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 132
    add-int/2addr v5, v2

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_3
.end method
