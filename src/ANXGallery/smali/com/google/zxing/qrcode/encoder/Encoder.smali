.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode:[I

.field private static final ALPHANUMERIC_TABLE:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->$SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Mode;->values()[Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->$SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 42
    aput v3, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 44
    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x23

    aput v3, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    aput v3, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 45
    aput v4, v0, v1

    const/16 v1, 0x32

    aput v5, v0, v1

    const/16 v1, 0x33

    aput v6, v0, v1

    const/16 v1, 0x34

    aput v7, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    aput v3, v0, v1

    const/16 v1, 0x3d

    aput v3, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

    const/16 v1, 0x40

    .line 46
    aput v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 47
    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x5b

    aput v3, v0, v1

    const/16 v1, 0x5c

    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    .line 41
    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    .line 50
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 537
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    .local v1, "bytes":[B
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 544
    return-void

    .line 538
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 539
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 541
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bytes":[B
    :cond_0
    aget-byte v0, v1, v3

    .line 542
    .local v0, "b":B
    const/16 v5, 0x8

    invoke-virtual {p1, v0, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 541
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 510
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 511
    .local v3, "length":I
    const/4 v2, 0x0

    .line 512
    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 531
    return-void

    .line 513
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 514
    .local v0, "code1":I
    if-ne v0, v6, :cond_1

    .line 515
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 517
    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    .line 518
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 519
    .local v1, "code2":I
    if-ne v1, v6, :cond_2

    .line 520
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 523
    :cond_2
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 524
    add-int/lit8 v2, v2, 0x2

    .line 525
    goto :goto_0

    .line 527
    .end local v1    # "code2":I
    :cond_3
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/google/zxing/qrcode/encoder/Encoder;->$SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 481
    :pswitch_0
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 483
    :goto_0
    return-void

    .line 472
    :pswitch_2
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 475
    :pswitch_3
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :pswitch_4
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 573
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 575
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 576
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    .line 549
    :try_start_0
    const-string v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 553
    .local v2, "bytes":[B
    array-length v6, v2

    .line 554
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 570
    return-void

    .line 550
    .end local v2    # "bytes":[B
    .end local v5    # "i":I
    .end local v6    # "length":I
    :catch_0
    move-exception v8

    .line 551
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 555
    .end local v8    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "bytes":[B
    .restart local v5    # "i":I
    .restart local v6    # "length":I
    :cond_0
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 556
    .local v0, "byte1":I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 557
    .local v1, "byte2":I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .line 558
    .local v3, "code":I
    const/4 v7, -0x1

    .line 559
    .local v7, "subtracted":I
    if-lt v3, v11, :cond_2

    const v9, 0x9ffc

    if-gt v3, v9, :cond_2

    .line 560
    sub-int v7, v3, v11

    .line 564
    :cond_1
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    .line 565
    new-instance v9, Lcom/google/zxing/WriterException;

    const-string v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 561
    :cond_2
    const v9, 0xe040

    if-lt v3, v9, :cond_1

    const v9, 0xebbf

    if-gt v3, v9, :cond_1

    .line 562
    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    .line 567
    :cond_3
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .line 568
    .local v4, "encoded":I
    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 554
    add-int/lit8 v5, v5, 0x2

    goto :goto_0
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 453
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 454
    .local v0, "numBits":I
    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    .line 455
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 458
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 446
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 486
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 487
    .local v1, "length":I
    const/4 v0, 0x0

    .line 488
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 507
    return-void

    .line 489
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 490
    .local v2, "num1":I
    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_1

    .line 492
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 493
    .local v3, "num2":I
    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 494
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 495
    add-int/lit8 v0, v0, 0x3

    .line 496
    goto :goto_0

    .end local v3    # "num2":I
    .end local v4    # "num3":I
    :cond_1
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_2

    .line 498
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 499
    .restart local v3    # "num2":I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 500
    add-int/lit8 v0, v0, 0x2

    .line 501
    goto :goto_0

    .line 503
    .end local v3    # "num2":I
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 58
    add-int/2addr v0, v1

    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 234
    const v2, 0x7fffffff

    .line 235
    .local v2, "minPenalty":I
    const/4 v0, -0x1

    .line 237
    .local v0, "bestMaskPattern":I
    const/4 v1, 0x0

    .local v1, "maskPattern":I
    :goto_0
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    .line 245
    return v0

    .line 238
    :cond_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 239
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 240
    .local v3, "penalty":I
    if-ge v3, v2, :cond_1

    .line 241
    move v2, v3

    .line 242
    move v0, v1

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 206
    :goto_0
    return-object v4

    .line 186
    :cond_0
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 188
    :cond_1
    const/4 v2, 0x0

    .line 189
    .local v2, "hasNumeric":Z
    const/4 v1, 0x0

    .line 190
    .local v1, "hasAlphanumeric":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 200
    if-eqz v1, :cond_5

    .line 201
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    .local v0, "c":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    .line 193
    const/4 v2, 0x1

    .line 190
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 203
    .end local v0    # "c":C
    :cond_5
    if-eqz v2, :cond_6

    .line 204
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 206
    :cond_6
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 9
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v6, 0x1

    .local v6, "versionNum":I
    :goto_0
    const/16 v7, 0x28

    if-le v6, v7, :cond_0

    .line 264
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Data too big"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 251
    :cond_0
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 253
    .local v5, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    .line 255
    .local v1, "numBytes":I
    invoke-virtual {v5, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 256
    .local v0, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    .line 258
    .local v3, "numEcBytes":I
    sub-int v2, v1, v3

    .line 259
    .local v2, "numDataBytes":I
    add-int/lit8 v7, p0, 0x7

    div-int/lit8 v4, v7, 0x8

    .line 260
    .local v4, "totalInputBytes":I
    if-lt v2, v4, :cond_1

    .line 261
    return-object v5

    .line 250
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 22
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    if-nez p2, :cond_2

    const/4 v7, 0x0

    .line 81
    .local v7, "encoding":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    .line 82
    const-string v7, "ISO-8859-1"

    .line 87
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v13

    .line 91
    .local v13, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 94
    .local v10, "headerBits":Lcom/google/zxing/common/BitArray;
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_1

    const-string v20, "ISO-8859-1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 95
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    .line 96
    .local v6, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v6, :cond_1

    .line 97
    invoke-static {v6, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 102
    .end local v6    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    invoke-static {v13, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 106
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 107
    .local v3, "dataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    .line 114
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    .line 113
    add-int v20, v20, v21

    .line 115
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    .line 113
    add-int v16, v20, v21

    .line 116
    .local v16, "provisionalBitsNeeded":I
    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 120
    .local v17, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    .line 121
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    .line 120
    add-int v20, v20, v21

    .line 122
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    .line 120
    add-int v2, v20, v21

    .line 123
    .local v2, "bitsNeeded":I
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v19

    .line 125
    .local v19, "version":Lcom/google/zxing/qrcode/decoder/Version;
    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 126
    .local v9, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 128
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_3

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v15

    .line 129
    .local v15, "numLetters":I
    :goto_1
    move-object/from16 v0, v19

    invoke-static {v15, v0, v13, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 131
    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 133
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    .line 134
    .local v5, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v21

    sub-int v14, v20, v21

    .line 137
    .local v14, "numDataBytes":I
    invoke-static {v14, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 141
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    .line 143
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v21

    .line 140
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v14, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    .line 145
    .local v8, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v18, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v18 .. v18}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 147
    .local v18, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 148
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 149
    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 152
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    .line 153
    .local v4, "dimension":I
    new-instance v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v12, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 154
    .local v12, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v11

    .line 155
    .local v11, "maskPattern":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 159
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 161
    return-object v18

    .line 80
    .end local v2    # "bitsNeeded":I
    .end local v3    # "dataBits":Lcom/google/zxing/common/BitArray;
    .end local v4    # "dimension":I
    .end local v5    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v7    # "encoding":Ljava/lang/String;
    .end local v8    # "finalBits":Lcom/google/zxing/common/BitArray;
    .end local v9    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .end local v10    # "headerBits":Lcom/google/zxing/common/BitArray;
    .end local v11    # "maskPattern":I
    .end local v12    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v13    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v14    # "numDataBytes":I
    .end local v15    # "numLetters":I
    .end local v16    # "provisionalBitsNeeded":I
    .end local v17    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v18    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    .end local v19    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_2
    sget-object v20, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 128
    .restart local v2    # "bitsNeeded":I
    .restart local v3    # "dataBits":Lcom/google/zxing/common/BitArray;
    .restart local v7    # "encoding":Ljava/lang/String;
    .restart local v9    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .restart local v10    # "headerBits":Lcom/google/zxing/common/BitArray;
    .restart local v13    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v16    # "provisionalBitsNeeded":I
    .restart local v17    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local v19    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1
.end method

.method static generateECBytes([BI)[B
    .locals 6
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .prologue
    .line 427
    array-length v2, p0

    .line 428
    .local v2, "numDataBytes":I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 429
    .local v3, "toEncode":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 432
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 434
    new-array v0, p1, [B

    .line 435
    .local v0, "ecBytes":[B
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p1, :cond_1

    .line 438
    return-object v0

    .line 430
    .end local v0    # "ecBytes":[B
    :cond_0
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .restart local v0    # "ecBytes":[B
    :cond_1
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 169
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 170
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 308
    if-lt p3, p2, :cond_0

    .line 309
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 312
    :cond_0
    rem-int v5, p0, p2

    .line 314
    .local v5, "numRsBlocksInGroup2":I
    sub-int v4, p2, v5

    .line 316
    .local v4, "numRsBlocksInGroup1":I
    div-int v6, p0, p2

    .line 318
    .local v6, "numTotalBytesInGroup1":I
    add-int/lit8 v7, v6, 0x1

    .line 320
    .local v7, "numTotalBytesInGroup2":I
    div-int v0, p1, p2

    .line 322
    .local v0, "numDataBytesInGroup1":I
    add-int/lit8 v1, v0, 0x1

    .line 324
    .local v1, "numDataBytesInGroup2":I
    sub-int v2, v6, v0

    .line 326
    .local v2, "numEcBytesInGroup1":I
    sub-int v3, v7, v1

    .line 329
    .local v3, "numEcBytesInGroup2":I
    if-eq v2, v3, :cond_1

    .line 330
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 333
    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    .line 334
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 338
    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    .line 340
    add-int v9, v1, v3

    mul-int/2addr v9, v5

    .line 338
    add-int/2addr v8, v9

    .line 337
    if-eq p0, v8, :cond_3

    .line 342
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 345
    :cond_3
    if-ge p3, v4, :cond_4

    .line 346
    const/4 v8, 0x0

    aput v0, p4, v8

    .line 347
    const/4 v8, 0x0

    aput v2, p5, v8

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    .line 350
    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 16
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    .line 365
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Number of bits and data bytes does not match"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_0
    const/4 v10, 0x0

    .line 371
    .local v10, "dataBytesOffset":I
    const/4 v12, 0x0

    .line 372
    .local v12, "maxNumDataBytes":I
    const/4 v13, 0x0

    .line 375
    .local v13, "maxNumEcBytes":I
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .local v8, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-lt v4, v0, :cond_1

    .line 394
    move/from16 v0, p2

    if-eq v0, v10, :cond_2

    .line 395
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Data bytes does not match offset"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_1
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 379
    .local v5, "numDataBytesInBlock":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .local v6, "numEcBytesInBlock":[I
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 380
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 384
    const/4 v1, 0x0

    aget v15, v5, v1

    .line 385
    .local v15, "size":I
    new-array v9, v15, [B

    .line 386
    .local v9, "dataBytes":[B
    mul-int/lit8 v1, v10, 0x8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v2, v15}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 387
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v9, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v11

    .line 388
    .local v11, "ecBytes":[B
    new-instance v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v1, v9, v11}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 391
    array-length v1, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 392
    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/2addr v10, v1

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    .end local v5    # "numDataBytesInBlock":[I
    .end local v6    # "numEcBytesInBlock":[I
    .end local v9    # "dataBytes":[B
    .end local v11    # "ecBytes":[B
    .end local v15    # "size":I
    :cond_2
    new-instance v14, Lcom/google/zxing/common/BitArray;

    invoke-direct {v14}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 401
    .local v14, "result":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v12, :cond_3

    .line 410
    const/4 v4, 0x0

    :goto_2
    if-lt v4, v13, :cond_6

    .line 418
    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p1

    if-eq v0, v1, :cond_9

    .line 419
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " differ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_3
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 403
    .local v7, "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v9

    .line 404
    .restart local v9    # "dataBytes":[B
    array-length v2, v9

    if-ge v4, v2, :cond_4

    .line 405
    aget-byte v2, v9, v4

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_3

    .line 411
    .end local v7    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v9    # "dataBytes":[B
    :cond_6
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 410
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 411
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 412
    .restart local v7    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v11

    .line 413
    .restart local v11    # "ecBytes":[B
    array-length v2, v11

    if-ge v4, v2, :cond_7

    .line 414
    aget-byte v2, v11, v4

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    .line 423
    .end local v7    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v11    # "ecBytes":[B
    :cond_9
    return-object v14
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 212
    :try_start_0
    const-string v6, "Shift_JIS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    .local v1, "bytes":[B
    array-length v4, v1

    .line 217
    .local v4, "length":I
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1

    .line 226
    .end local v1    # "bytes":[B
    .end local v4    # "length":I
    :cond_0
    :goto_0
    return v5

    .line 213
    :catch_0
    move-exception v3

    .line 214
    .local v3, "ignored":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 220
    .end local v3    # "ignored":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bytes":[B
    .restart local v4    # "length":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 226
    const/4 v5, 0x1

    goto :goto_0

    .line 221
    :cond_2
    aget-byte v6, v1, v2

    and-int/lit16 v0, v6, 0xff

    .line 222
    .local v0, "byte1":I
    const/16 v6, 0x81

    if-lt v0, v6, :cond_3

    const/16 v6, 0x9f

    if-le v0, v6, :cond_4

    :cond_3
    const/16 v6, 0xe0

    if-lt v0, v6, :cond_0

    const/16 v6, 0xeb

    if-gt v0, v6, :cond_0

    .line 220
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 271
    mul-int/lit8 v0, p0, 0x8

    .line 272
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 273
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data bits cannot fit in the QR Code"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 274
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-lt v4, v0, :cond_3

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    .line 282
    .local v2, "numBitsInLastByte":I
    if-lez v2, :cond_2

    .line 283
    move v1, v2

    :goto_1
    if-lt v1, v6, :cond_4

    .line 288
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    .line 289
    .local v3, "numPaddingBytes":I
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_5

    .line 292
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 293
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    .end local v2    # "numBitsInLastByte":I
    .end local v3    # "numPaddingBytes":I
    :cond_3
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .restart local v2    # "numBitsInLastByte":I
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    .restart local v3    # "numPaddingBytes":I
    :cond_5
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_6

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 290
    :cond_6
    const/16 v4, 0x11

    goto :goto_3

    .line 295
    :cond_7
    return-void
.end method
