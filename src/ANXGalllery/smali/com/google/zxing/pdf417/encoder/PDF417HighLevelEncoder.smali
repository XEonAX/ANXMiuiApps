.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final MIXED:[B

.field private static final PUNCTUATION:[B

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/16 v7, 0xa

    const/16 v6, 0xd

    const/16 v5, 0x9

    .line 114
    const/16 v2, 0x1e

    new-array v2, v2, [B

    .line 115
    const/16 v3, 0x30

    aput-byte v3, v2, v9

    const/4 v3, 0x1

    const/16 v4, 0x31

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x32

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x33

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x34

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x35

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x36

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x37

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x38

    aput-byte v4, v2, v3

    const/16 v3, 0x39

    aput-byte v3, v2, v5

    const/16 v3, 0x26

    aput-byte v3, v2, v7

    const/16 v3, 0xb

    aput-byte v6, v2, v3

    const/16 v3, 0xc

    aput-byte v5, v2, v3

    const/16 v3, 0x2c

    aput-byte v3, v2, v6

    const/16 v3, 0xe

    const/16 v4, 0x3a

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    .line 116
    const/16 v4, 0x23

    aput-byte v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d

    aput-byte v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x2e

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x24

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x2f

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x2b

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x25

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x2a

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x3d

    aput-byte v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x5e

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x20

    aput-byte v4, v2, v3

    .line 114
    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 121
    const/16 v2, 0x1e

    new-array v2, v2, [B

    .line 122
    const/16 v3, 0x3b

    aput-byte v3, v2, v9

    const/4 v3, 0x1

    const/16 v4, 0x3c

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x3e

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x40

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x5b

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x5c

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x5d

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x5f

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x60

    aput-byte v4, v2, v3

    const/16 v3, 0x7e

    aput-byte v3, v2, v5

    const/16 v3, 0x21

    aput-byte v3, v2, v7

    const/16 v3, 0xb

    aput-byte v6, v2, v3

    const/16 v3, 0xc

    aput-byte v5, v2, v3

    const/16 v3, 0x2c

    aput-byte v3, v2, v6

    const/16 v3, 0xe

    const/16 v4, 0x3a

    aput-byte v4, v2, v3

    const/16 v3, 0xf

    .line 123
    aput-byte v7, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d

    aput-byte v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x2e

    aput-byte v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x24

    aput-byte v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x2f

    aput-byte v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x22

    aput-byte v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x7c

    aput-byte v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x2a

    aput-byte v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x28

    aput-byte v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x29

    aput-byte v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x3f

    aput-byte v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x7b

    aput-byte v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x7d

    aput-byte v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x27

    aput-byte v4, v2, v3

    .line 121
    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 125
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 126
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 128
    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 135
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 136
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 142
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 143
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 149
    return-void

    .line 137
    :cond_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    .line 138
    .local v0, "b":B
    if-lez v0, :cond_1

    .line 139
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aput-byte v1, v2, v0

    .line 136
    :cond_1
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 144
    .end local v0    # "b":B
    :cond_2
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    .line 145
    .restart local v0    # "b":B
    if-lez v0, :cond_3

    .line 146
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aput-byte v1, v2, v0

    .line 143
    :cond_3
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_1
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .locals 8
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "startpos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0xd

    .line 539
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 540
    .local v3, "len":I
    move v2, p2

    .line 541
    .local v2, "idx":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 567
    sub-int v5, v2, p2

    :goto_1
    return v5

    .line 542
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 543
    .local v0, "ch":C
    const/4 v4, 0x0

    .line 545
    .local v4, "numericCount":I
    :goto_2
    if-ge v4, v6, :cond_1

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 554
    :cond_1
    if-lt v4, v6, :cond_3

    .line 555
    sub-int v5, v2, p2

    goto :goto_1

    .line 546
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 548
    add-int v1, v2, v4

    .line 549
    .local v1, "i":I
    if-ge v1, v3, :cond_1

    .line 552
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 557
    .end local v1    # "i":I
    :cond_3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 562
    aget-byte v5, p1, v2

    if-ne v5, v7, :cond_4

    if-eq v0, v7, :cond_4

    .line 563
    new-instance v5, Lcom/google/zxing/WriterException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Non-encodable character detected: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Unicode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 565
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 477
    .local v3, "len":I
    move v2, p1

    .line 478
    .local v2, "idx":I
    if-ge v2, v3, :cond_1

    .line 479
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 480
    .local v0, "ch":C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lt v2, v3, :cond_2

    .line 488
    .end local v0    # "ch":C
    :cond_1
    return v1

    .line 481
    .restart local v0    # "ch":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 483
    if-ge v2, v3, :cond_0

    .line 484
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .prologue
    const/16 v5, 0xd

    .line 499
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 500
    .local v2, "len":I
    move v1, p1

    .line 501
    .local v1, "idx":I
    :cond_0
    :goto_0
    if-lt v1, v2, :cond_2

    .line 526
    :cond_1
    sub-int v4, v1, p1

    :goto_1
    return v4

    .line 502
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 503
    .local v0, "ch":C
    const/4 v3, 0x0

    .line 504
    .local v3, "numericCount":I
    :cond_3
    :goto_2
    if-ge v3, v5, :cond_4

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lt v1, v2, :cond_5

    .line 511
    :cond_4
    if-lt v3, v5, :cond_6

    .line 512
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    goto :goto_1

    .line 505
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 507
    if-ge v1, v2, :cond_3

    .line 508
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 514
    :cond_6
    if-gtz v3, :cond_0

    .line 518
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 521
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 10
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 381
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    if-nez p3, :cond_1

    .line 382
    const/16 v5, 0x391

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    move v3, p1

    .line 394
    .local v3, "idx":I
    const/4 v5, 0x6

    if-lt p2, v5, :cond_0

    .line 395
    const/4 v5, 0x5

    new-array v1, v5, [C

    .line 396
    .local v1, "chars":[C
    :goto_1
    add-int v5, p1, p2

    sub-int/2addr v5, v3

    const/4 v8, 0x6

    if-ge v5, v8, :cond_4

    .line 413
    .end local v1    # "chars":[C
    :cond_0
    move v2, v3

    .local v2, "i":I
    :goto_2
    add-int v5, p1, p2

    if-lt v2, v5, :cond_8

    .line 417
    return-void

    .line 384
    .end local v2    # "i":I
    .end local v3    # "idx":I
    :cond_1
    rem-int/lit8 v5, p2, 0x6

    if-nez v5, :cond_2

    const/4 v4, 0x1

    .line 385
    .local v4, "sixpack":Z
    :goto_3
    if-eqz v4, :cond_3

    .line 386
    const/16 v5, 0x39c

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    .end local v4    # "sixpack":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 388
    .restart local v4    # "sixpack":Z
    :cond_3
    const/16 v5, 0x385

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    .end local v4    # "sixpack":Z
    .restart local v1    # "chars":[C
    .restart local v3    # "idx":I
    :cond_4
    const-wide/16 v6, 0x0

    .line 398
    .local v6, "t":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const/4 v5, 0x6

    if-lt v2, v5, :cond_5

    .line 402
    const/4 v2, 0x0

    :goto_5
    const/4 v5, 0x5

    if-lt v2, v5, :cond_6

    .line 406
    array-length v5, v1

    add-int/lit8 v2, v5, -0x1

    :goto_6
    if-gez v2, :cond_7

    .line 409
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 399
    :cond_5
    const/16 v5, 0x8

    shl-long/2addr v6, v5

    .line 400
    add-int v5, v3, v2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 403
    :cond_6
    const-wide/16 v8, 0x384

    rem-long v8, v6, v8

    long-to-int v5, v8

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 404
    const-wide/16 v8, 0x384

    div-long/2addr v6, v8

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 407
    :cond_7
    aget-char v5, v1, v2

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 414
    .end local v1    # "chars":[C
    .end local v6    # "t":J
    :cond_8
    aget-byte v5, p0, v2

    and-int/lit16 v0, v5, 0xff

    .line 415
    .local v0, "ch":I
    int-to-char v5, v0

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 13
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x386

    const/4 v11, 0x1

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v7, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_2

    .line 168
    sget-object p2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 177
    .local v4, "len":I
    const/4 v6, 0x0

    .line 178
    .local v6, "p":I
    const/4 v9, 0x0

    .line 181
    .local v9, "textSubMode":I
    const/4 v1, 0x0

    .line 182
    .local v1, "bytes":[B
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_3

    .line 183
    invoke-static {p0, v6, v4, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 236
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 169
    .end local v1    # "bytes":[B
    .end local v4    # "len":I
    .end local v6    # "p":I
    .end local v9    # "textSubMode":I
    :cond_2
    sget-object v10, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v10, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 171
    .local v2, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v10

    invoke-static {v10, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 185
    .end local v2    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v1    # "bytes":[B
    .restart local v4    # "len":I
    .restart local v6    # "p":I
    .restart local v9    # "textSubMode":I
    :cond_3
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_4

    .line 186
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 187
    array-length v10, v1

    invoke-static {v1, v6, v10, v11, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_1

    .line 189
    :cond_4
    sget-object v10, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v10, :cond_5

    .line 190
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p0, v6, v4, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_1

    .line 194
    :cond_5
    const/4 v3, 0x0

    .line 195
    .local v3, "encodingMode":I
    :goto_2
    if-ge v6, v4, :cond_1

    .line 196
    invoke-static {p0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 197
    .local v5, "n":I
    const/16 v10, 0xd

    if-lt v5, v10, :cond_6

    .line 198
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const/4 v3, 0x2

    .line 200
    const/4 v9, 0x0

    .line 201
    invoke-static {p0, v6, v5, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 202
    add-int/2addr v6, v5

    .line 203
    goto :goto_2

    .line 204
    :cond_6
    invoke-static {p0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 205
    .local v8, "t":I
    const/4 v10, 0x5

    if-ge v8, v10, :cond_7

    if-ne v5, v4, :cond_9

    .line 206
    :cond_7
    if-eqz v3, :cond_8

    .line 207
    const/16 v10, 0x384

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/4 v3, 0x0

    .line 209
    const/4 v9, 0x0

    .line 211
    :cond_8
    invoke-static {p0, v6, v8, v7, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v9

    .line 212
    add-int/2addr v6, v8

    .line 213
    goto :goto_2

    .line 214
    :cond_9
    if-nez v1, :cond_a

    .line 215
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 217
    :cond_a
    invoke-static {p0, v1, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v0

    .line 218
    .local v0, "b":I
    if-nez v0, :cond_b

    .line 219
    const/4 v0, 0x1

    .line 221
    :cond_b
    if-ne v0, v11, :cond_c

    if-nez v3, :cond_c

    .line 223
    const/4 v10, 0x0

    invoke-static {v1, v6, v11, v10, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 230
    :goto_3
    add-int/2addr v6, v0

    goto :goto_2

    .line 226
    :cond_c
    invoke-static {v1, v6, v0, v3, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 227
    const/4 v3, 0x1

    .line 228
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, "idx":I
    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v7, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 423
    .local v5, "num900":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 424
    .local v4, "num0":Ljava/math/BigInteger;
    :goto_0
    add-int/lit8 v8, p2, -0x1

    if-lt v2, v8, :cond_0

    .line 440
    return-void

    .line 425
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 426
    const/16 v8, 0x2c

    sub-int v9, p2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 427
    .local v3, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "part":Ljava/lang/String;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "bigint":Ljava/math/BigInteger;
    :cond_1
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 435
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    .line 438
    add-int/2addr v2, v3

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 11
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "initialSubmode"    # I

    .prologue
    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .local v8, "tmp":Ljava/lang/StringBuilder;
    move v7, p4

    .line 257
    .local v7, "submode":I
    const/4 v3, 0x0

    .line 259
    .local v3, "idx":I
    :cond_0
    :goto_0
    add-int v9, p1, v3

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 260
    .local v0, "ch":C
    packed-switch v7, :pswitch_data_0

    .line 335
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 336
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 344
    if-lt v3, p2, :cond_0

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "h":C
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 350
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v4, :cond_f

    .line 359
    rem-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_1

    .line 360
    mul-int/lit8 v9, v1, 0x1e

    add-int/lit8 v9, v9, 0x1d

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    return v7

    .line 262
    .end local v1    # "h":C
    .end local v2    # "i":I
    .end local v4    # "len":I
    :pswitch_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 263
    const/16 v9, 0x20

    if-ne v0, v9, :cond_2

    .line 264
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_2
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 270
    const/4 v7, 0x1

    .line 271
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :cond_4
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 274
    const/4 v7, 0x2

    .line 275
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :cond_5
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 285
    :pswitch_1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 286
    const/16 v9, 0x20

    if-ne v0, v9, :cond_6

    .line 287
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 289
    :cond_6
    add-int/lit8 v9, v0, -0x61

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 293
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :cond_8
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 298
    const/4 v7, 0x2

    .line 299
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 302
    :cond_9
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 309
    :pswitch_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 310
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 312
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 313
    const/4 v7, 0x0

    .line 314
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 316
    :cond_b
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 317
    const/4 v7, 0x1

    .line 318
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 321
    :cond_c
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    if-ge v9, p2, :cond_d

    .line 322
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 323
    .local v5, "next":C
    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 324
    const/4 v7, 0x3

    .line 325
    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 329
    .end local v5    # "next":C
    :cond_d
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 338
    :cond_e
    const/4 v7, 0x0

    .line 339
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 351
    .restart local v1    # "h":C
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_f
    rem-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_10

    const/4 v6, 0x1

    .line 352
    .local v6, "odd":Z
    :goto_3
    if-eqz v6, :cond_11

    .line 353
    mul-int/lit8 v9, v1, 0x1e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    int-to-char v1, v9

    .line 354
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 351
    .end local v6    # "odd":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_3

    .line 356
    .restart local v6    # "odd":Z
    :cond_11
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v1, 0xc5f94

    .line 571
    if-ltz p0, :cond_0

    const/16 v0, 0x384

    if-ge p0, v0, :cond_0

    .line 572
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    :goto_0
    return-void

    .line 574
    :cond_0
    if-ge p0, v1, :cond_1

    .line 575
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 578
    :cond_1
    const v0, 0xc6318

    if-ge p0, v0, :cond_2

    .line 579
    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    sub-int v0, v1, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 582
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 452
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 448
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 444
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMixed(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 456
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 460
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 464
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
