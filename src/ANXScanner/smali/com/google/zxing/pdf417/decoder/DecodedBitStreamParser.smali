.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I = null

.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 72
    const/16 v2, 0x19

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 77
    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 85
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 86
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 87
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 88
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 89
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 94
    return-void

    .line 90
    :cond_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    .line 72
    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 18
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 448
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    .local v7, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x385

    move/from16 v0, p0

    if-ne v0, v14, :cond_8

    .line 452
    const/4 v5, 0x0

    .line 453
    .local v5, "count":I
    const-wide/16 v12, 0x0

    .line 454
    .local v12, "value":J
    const/4 v14, 0x6

    new-array v2, v14, [I

    .line 455
    .local v2, "byteCompactedCodewords":[I
    const/4 v8, 0x0

    .line 456
    .local v8, "end":Z
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v11, p1, p3

    .local v11, "nextCode":I
    move/from16 p3, v4

    .line 457
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_0
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_0

    if-eqz v8, :cond_3

    .line 486
    :cond_0
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_1

    const/16 v14, 0x384

    if-ge v11, v14, :cond_1

    .line 487
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .local v6, "count":I
    aput v11, v2, v5

    move v5, v6

    .line 493
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-lt v9, v5, :cond_7

    .line 532
    .end local v2    # "byteCompactedCodewords":[I
    .end local v5    # "count":I
    .end local v8    # "end":Z
    .end local v9    # "i":I
    .end local v11    # "nextCode":I
    .end local v12    # "value":J
    :cond_2
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return p3

    .line 458
    .restart local v2    # "byteCompactedCodewords":[I
    .restart local v5    # "count":I
    .restart local v8    # "end":Z
    .restart local v11    # "nextCode":I
    .restart local v12    # "value":J
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .restart local v6    # "count":I
    aput v11, v2, v5

    .line 460
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 461
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v11, p1, p3

    .line 463
    const/16 v14, 0x384

    if-eq v11, v14, :cond_4

    .line 464
    const/16 v14, 0x385

    if-eq v11, v14, :cond_4

    .line 465
    const/16 v14, 0x386

    if-eq v11, v14, :cond_4

    .line 466
    const/16 v14, 0x39c

    if-eq v11, v14, :cond_4

    .line 467
    const/16 v14, 0x3a0

    if-eq v11, v14, :cond_4

    .line 468
    const/16 v14, 0x39b

    if-eq v11, v14, :cond_4

    .line 469
    const/16 v14, 0x39a

    if-ne v11, v14, :cond_5

    .line 470
    :cond_4
    add-int/lit8 p3, v4, -0x1

    .line 471
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    move v5, v6

    .line 472
    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_0

    .line 473
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    :cond_5
    rem-int/lit8 v14, v6, 0x5

    if-nez v14, :cond_e

    if-lez v6, :cond_e

    .line 476
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    const/4 v14, 0x6

    if-lt v10, v14, :cond_6

    .line 479
    const-wide/16 v12, 0x0

    .line 480
    const/4 v5, 0x0

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_0

    .line 477
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    :cond_6
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 494
    .end local v4    # "codeIndex":I
    .end local v6    # "count":I
    .end local v10    # "j":I
    .restart local v5    # "count":I
    .restart local v9    # "i":I
    .restart local p3    # "codeIndex":I
    :cond_7
    aget v14, v2, v9

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 497
    .end local v2    # "byteCompactedCodewords":[I
    .end local v5    # "count":I
    .end local v8    # "end":Z
    .end local v9    # "i":I
    .end local v11    # "nextCode":I
    .end local v12    # "value":J
    :cond_8
    const/16 v14, 0x39c

    move/from16 v0, p0

    if-ne v0, v14, :cond_2

    .line 500
    const/4 v5, 0x0

    .line 501
    .restart local v5    # "count":I
    const-wide/16 v12, 0x0

    .line 502
    .restart local v12    # "value":J
    const/4 v8, 0x0

    .line 503
    .restart local v8    # "end":Z
    :cond_9
    :goto_3
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_2

    if-nez v8, :cond_2

    .line 504
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v3, p1, p3

    .line 505
    .local v3, "code":I
    const/16 v14, 0x384

    if-ge v3, v14, :cond_a

    .line 506
    add-int/lit8 v5, v5, 0x1

    .line 508
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    move/from16 p3, v4

    .line 521
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_4
    rem-int/lit8 v14, v5, 0x5

    if-nez v14, :cond_9

    if-lez v5, :cond_9

    .line 524
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    const/4 v14, 0x6

    if-lt v10, v14, :cond_c

    .line 527
    const-wide/16 v12, 0x0

    .line 528
    const/4 v5, 0x0

    goto :goto_3

    .line 510
    .end local v10    # "j":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_a
    const/16 v14, 0x384

    if-eq v3, v14, :cond_b

    .line 511
    const/16 v14, 0x385

    if-eq v3, v14, :cond_b

    .line 512
    const/16 v14, 0x386

    if-eq v3, v14, :cond_b

    .line 513
    const/16 v14, 0x39c

    if-eq v3, v14, :cond_b

    .line 514
    const/16 v14, 0x3a0

    if-eq v3, v14, :cond_b

    .line 515
    const/16 v14, 0x39b

    if-eq v3, v14, :cond_b

    .line 516
    const/16 v14, 0x39a

    if-ne v3, v14, :cond_d

    .line 517
    :cond_b
    add-int/lit8 p3, v4, -0x1

    .line 518
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    goto :goto_4

    .line 525
    .restart local v10    # "j":I
    :cond_c
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v10    # "j":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_d
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_4

    .end local v3    # "code":I
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v2    # "byteCompactedCodewords":[I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v11    # "nextCode":I
    :cond_e
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_0
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 10
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v6, "result":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 103
    .local v5, "encoding":Ljava/nio/charset/Charset;
    const/4 v2, 0x1

    .line 104
    .local v2, "codeIndex":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .local v3, "codeIndex":I
    aget v1, p0, v2

    .line 105
    .local v1, "code":I
    new-instance v7, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v7, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move v2, v3

    .line 106
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :goto_0
    const/4 v8, 0x0

    aget v8, p0, v8

    if-lt v2, v8, :cond_0

    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 156
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 107
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 145
    add-int/lit8 v2, v2, -0x1

    .line 146
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 149
    :goto_1
    array-length v8, p0

    if-ge v2, v8, :cond_1

    .line 150
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v1, p0, v2

    move v2, v3

    .line 151
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_0

    .line 109
    :sswitch_0
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 110
    goto :goto_1

    .line 113
    :sswitch_1
    invoke-static {v1, p0, v5, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    .line 114
    goto :goto_1

    .line 116
    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v8, p0, v2

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 117
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 119
    :sswitch_3
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 120
    goto :goto_1

    .line 123
    :sswitch_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v8, p0, v2

    invoke-static {v8}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    .line 124
    .local v0, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move v2, v3

    .line 125
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 128
    .end local v0    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :sswitch_5
    add-int/lit8 v2, v2, 0x2

    .line 129
    goto :goto_1

    .line 132
    :sswitch_6
    add-int/lit8 v2, v2, 0x1

    .line 133
    goto :goto_1

    .line 135
    :sswitch_7
    invoke-static {p0, v2, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    .line 136
    goto :goto_1

    .line 140
    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 152
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 158
    :cond_2
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v9, v8, v9, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    .local v4, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v4, v7}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 160
    return-object v4

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 630
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 631
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 634
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 636
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 632
    .end local v2    # "resultString":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    .restart local v2    # "resultString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 165
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_0

    .line 167
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 169
    :cond_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 170
    .local v8, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x2

    if-lt v7, v9, :cond_3

    .line 174
    const/4 v9, 0x2

    .line 173
    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v6, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 180
    aget v9, p0, p1

    const/16 v10, 0x39b

    if-ne v9, v10, :cond_6

    .line 181
    add-int/lit8 p1, p1, 0x1

    .line 182
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .line 183
    .local v0, "additionalOptionCodeWords":[I
    const/4 v1, 0x0

    .line 185
    .local v1, "additionalOptionCodeWordsIndex":I
    const/4 v5, 0x0

    .line 186
    .local v5, "end":Z
    :goto_1
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_1

    if-eqz v5, :cond_4

    .line 203
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 209
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v1    # "additionalOptionCodeWordsIndex":I
    .end local v5    # "end":Z
    :cond_2
    :goto_2
    return p1

    .line 171
    .end local v6    # "fileId":Ljava/lang/StringBuilder;
    :cond_3
    aget v9, p0, p1

    aput v9, v8, v7

    .line 170
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 187
    .restart local v0    # "additionalOptionCodeWords":[I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    .restart local v5    # "end":Z
    .restart local v6    # "fileId":Ljava/lang/StringBuilder;
    :cond_4
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v3, p0, p1

    .line 188
    .local v3, "code":I
    const/16 v9, 0x384

    if-ge v3, v9, :cond_5

    .line 189
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .local v2, "additionalOptionCodeWordsIndex":I
    aput v3, v0, v1

    move v1, v2

    .end local v2    # "additionalOptionCodeWordsIndex":I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    move p1, v4

    .line 190
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 191
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_5
    packed-switch v3, :pswitch_data_0

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 193
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 194
    add-int/lit8 p1, v4, 0x1

    .line 195
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v5, 0x1

    .line 196
    goto :goto_1

    .line 204
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v1    # "additionalOptionCodeWordsIndex":I
    .end local v3    # "code":I
    .end local v5    # "end":Z
    :cond_6
    aget v9, p0, p1

    const/16 v10, 0x39a

    if-ne v9, v10, :cond_2

    .line 205
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 206
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x1b

    const/16 v10, 0x391

    const/16 v9, 0x384

    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 294
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 295
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 296
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 297
    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 429
    return-void

    .line 298
    :cond_0
    aget v4, p0, v1

    .line 299
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 300
    .local v0, "ch":C
    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 423
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :pswitch_0
    if-ge v4, v7, :cond_3

    .line 305
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .line 306
    goto :goto_1

    .line 307
    :cond_3
    if-ne v4, v7, :cond_4

    .line 308
    const/16 v0, 0x20

    .line 309
    goto :goto_1

    :cond_4
    if-ne v4, v11, :cond_5

    .line 310
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 311
    goto :goto_1

    :cond_5
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_6

    .line 312
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 313
    goto :goto_1

    :cond_6
    if-ne v4, v8, :cond_7

    .line 315
    move-object v2, v3

    .line 316
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 317
    goto :goto_1

    :cond_7
    if-ne v4, v10, :cond_8

    .line 318
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_8
    if-ne v4, v9, :cond_1

    .line 320
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 323
    goto :goto_1

    .line 327
    :pswitch_1
    if-ge v4, v7, :cond_9

    .line 328
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    .line 329
    goto :goto_1

    .line 330
    :cond_9
    if-ne v4, v7, :cond_a

    .line 331
    const/16 v0, 0x20

    .line 332
    goto :goto_1

    :cond_a
    if-ne v4, v11, :cond_b

    .line 334
    move-object v2, v3

    .line 335
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 336
    goto :goto_1

    :cond_b
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_c

    .line 337
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 338
    goto :goto_1

    :cond_c
    if-ne v4, v8, :cond_d

    .line 340
    move-object v2, v3

    .line 341
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 342
    goto :goto_1

    :cond_d
    if-ne v4, v10, :cond_e

    .line 344
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :cond_e
    if-ne v4, v9, :cond_1

    .line 346
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 349
    goto :goto_1

    .line 353
    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_f

    .line 354
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    .line 355
    goto :goto_1

    .line 356
    :cond_f
    const/16 v5, 0x19

    if-ne v4, v5, :cond_10

    .line 357
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 358
    goto :goto_1

    :cond_10
    if-ne v4, v7, :cond_11

    .line 359
    const/16 v0, 0x20

    .line 360
    goto :goto_1

    :cond_11
    if-ne v4, v11, :cond_12

    .line 361
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 362
    goto :goto_1

    :cond_12
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_13

    .line 363
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 364
    goto :goto_1

    :cond_13
    if-ne v4, v8, :cond_14

    .line 366
    move-object v2, v3

    .line 367
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 368
    goto/16 :goto_1

    :cond_14
    if-ne v4, v10, :cond_15

    .line 369
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 370
    :cond_15
    if-ne v4, v9, :cond_1

    .line 371
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 374
    goto/16 :goto_1

    .line 378
    :pswitch_3
    if-ge v4, v8, :cond_16

    .line 379
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .line 380
    goto/16 :goto_1

    .line 381
    :cond_16
    if-ne v4, v8, :cond_17

    .line 382
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 383
    goto/16 :goto_1

    :cond_17
    if-ne v4, v10, :cond_18

    .line 384
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 385
    :cond_18
    if-ne v4, v9, :cond_1

    .line 386
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 389
    goto/16 :goto_1

    .line 393
    :pswitch_4
    move-object v3, v2

    .line 394
    if-ge v4, v7, :cond_19

    .line 395
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .line 396
    goto/16 :goto_1

    .line 397
    :cond_19
    if-ne v4, v7, :cond_1a

    .line 398
    const/16 v0, 0x20

    .line 399
    goto/16 :goto_1

    :cond_1a
    if-ne v4, v9, :cond_1

    .line 400
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 403
    goto/16 :goto_1

    .line 407
    :pswitch_5
    move-object v3, v2

    .line 408
    if-ge v4, v8, :cond_1b

    .line 409
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .line 410
    goto/16 :goto_1

    .line 411
    :cond_1b
    if-ne v4, v8, :cond_1c

    .line 412
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 413
    goto/16 :goto_1

    :cond_1c
    if-ne v4, v10, :cond_1d

    .line 416
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 417
    :cond_1d
    if-ne v4, v9, :cond_1

    .line 418
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x384

    const/4 v7, 0x0

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, "count":I
    const/4 v3, 0x0

    .line 548
    .local v3, "end":Z
    const/16 v6, 0xf

    new-array v4, v6, [I

    .line 550
    .local v4, "numericCodewords":[I
    :cond_0
    :goto_0
    aget v6, p0, v7

    if-ge p1, v6, :cond_1

    if-eqz v3, :cond_2

    .line 583
    :cond_1
    return p1

    .line 551
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 552
    .local v0, "code":I
    aget v6, p0, v7

    if-ne v1, v6, :cond_3

    .line 553
    const/4 v3, 0x1

    .line 555
    :cond_3
    if-ge v0, v8, :cond_5

    .line 556
    aput v0, v4, v2

    .line 557
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 569
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1
    rem-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_4

    .line 570
    const/16 v6, 0x386

    if-eq v0, v6, :cond_4

    .line 571
    if-eqz v3, :cond_0

    .line 576
    :cond_4
    if-lez v2, :cond_0

    .line 577
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/4 v2, 0x0

    goto :goto_0

    .line 559
    .end local v5    # "s":Ljava/lang/String;
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_5
    if-eq v0, v8, :cond_6

    .line 560
    const/16 v6, 0x385

    if-eq v0, v6, :cond_6

    .line 561
    const/16 v6, 0x39c

    if-eq v0, v6, :cond_6

    .line 562
    const/16 v6, 0x3a0

    if-eq v0, v6, :cond_6

    .line 563
    const/16 v6, 0x39b

    if-eq v0, v6, :cond_6

    .line 564
    const/16 v6, 0x39a

    if-ne v0, v6, :cond_7

    .line 565
    :cond_6
    add-int/lit8 p1, v1, -0x1

    .line 566
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1

    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_7
    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 224
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    .line 226
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [I

    .line 228
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 229
    .local v4, "index":I
    const/4 v3, 0x0

    .line 230
    .local v3, "end":Z
    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_0

    if-eqz v3, :cond_1

    .line 266
    :cond_0
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 267
    return p1

    .line 231
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 232
    .local v1, "code":I
    if-ge v1, v10, :cond_2

    .line 233
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 234
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 235
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .line 236
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 237
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_2
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 240
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 241
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 248
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 249
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 250
    goto :goto_0

    .line 258
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 259
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 260
    aput v1, v0, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
