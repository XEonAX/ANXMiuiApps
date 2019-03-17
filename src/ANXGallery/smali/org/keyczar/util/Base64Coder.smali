.class public Lorg/keyczar/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final ALPHABET:[C

.field private static final DECODE:[B

.field private static final WHITESPACE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    .line 42
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/keyczar/util/Base64Coder;->WHITESPACE:[C

    move v0, v1

    .line 46
    :goto_0
    sget-object v2, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 47
    sget-object v2, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 50
    :goto_1
    sget-object v2, Lorg/keyczar/util/Base64Coder;->WHITESPACE:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 51
    sget-object v2, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    sget-object v3, Lorg/keyczar/util/Base64Coder;->WHITESPACE:[C

    aget-char v3, v3, v0

    const/4 v4, -0x2

    aput-byte v4, v2, v3

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_1
    :goto_2
    sget-object v0, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 55
    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    sget-object v2, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    :cond_2
    return-void

    .line 33
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2ds
        0x5fs
    .end array-data

    .line 43
    :array_1
    .array-data 2
        0x9s
        0xas
        0xds
        0x20s
        0xcs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeMime(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    .prologue
    .line 152
    const/16 v0, 0x2b

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 153
    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3d

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 82
    array-length v0, v6

    .line 84
    add-int/lit8 v1, v0, -0x1

    aget-char v1, v6, v1

    if-ne v1, v2, :cond_0

    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 87
    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget-char v1, v6, v1

    if-ne v1, v2, :cond_1

    .line 88
    add-int/lit8 v0, v0, -0x1

    .line 93
    :cond_1
    array-length v4, v6

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-char v5, v6, v2

    .line 94
    invoke-static {v5}, Lorg/keyczar/util/Base64Coder;->isWhiteSpace(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 93
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_3
    sub-int v7, v0, v1

    .line 100
    div-int/lit8 v0, v7, 0x4

    .line 101
    rem-int/lit8 v2, v7, 0x4

    .line 102
    mul-int/lit8 v0, v0, 0x3

    .line 103
    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_1
    new-array v8, v0, [B

    move v5, v3

    move v0, v3

    move v2, v3

    move v4, v3

    .line 118
    :goto_2
    add-int v9, v7, v1

    if-ge v5, v9, :cond_6

    .line 119
    aget-char v9, v6, v5

    invoke-static {v9}, Lorg/keyczar/util/Base64Coder;->isWhiteSpace(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 120
    shl-int/lit8 v4, v4, 0x6

    aget-char v9, v6, v5

    invoke-static {v9}, Lorg/keyczar/util/Base64Coder;->getByte(I)B

    move-result v9

    or-int/2addr v4, v9

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 123
    :cond_4
    const/4 v9, 0x4

    if-ne v2, v9, :cond_5

    .line 124
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v9, v4, 0x10

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    .line 125
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v0, v4, 0x8

    int-to-byte v0, v0

    aput-byte v0, v8, v2

    .line 126
    add-int/lit8 v0, v9, 0x1

    int-to-byte v2, v4

    aput-byte v2, v8, v9

    move v2, v3

    move v4, v3

    .line 118
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 105
    :pswitch_0
    new-instance v0, Lorg/keyczar/exceptions/Base64DecodingException;

    const-string v1, "Base64Coder.IllegalLength"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 109
    goto :goto_1

    .line 111
    :pswitch_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 131
    :cond_6
    packed-switch v2, :pswitch_data_1

    .line 140
    :goto_3
    return-object v8

    .line 133
    :pswitch_3
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v1, v4, 0x4

    int-to-byte v1, v1

    aput-byte v1, v8, v0

    goto :goto_3

    .line 136
    :pswitch_4
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v4, 0xa

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 137
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v0, v4, 0x2

    int-to-byte v0, v0

    aput-byte v0, v8, v1

    goto :goto_3

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeMime([BZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-static {p0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    .line 222
    const/16 v1, 0x2d

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 223
    const/16 v1, 0x5f

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 233
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bug in Base64 encoder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    :pswitch_2
    return-object v0

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static encodeWebSafe([B)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 173
    array-length v0, p0

    div-int/lit8 v3, v0, 0x3

    .line 174
    array-length v0, p0

    rem-int/lit8 v4, v0, 0x3

    .line 175
    mul-int/lit8 v0, v3, 0x4

    .line 177
    packed-switch v4, :pswitch_data_0

    .line 186
    :goto_0
    new-array v5, v0, [C

    move v0, v1

    move v2, v1

    .line 190
    :goto_1
    if-ge v0, v3, :cond_0

    .line 191
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v1

    add-int/lit8 v1, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 193
    add-int/lit8 v7, v2, 0x1

    sget-object v8, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v9, v6, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v5, v2

    .line 194
    add-int/lit8 v2, v7, 0x1

    sget-object v8, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v5, v7

    .line 195
    add-int/lit8 v7, v2, 0x1

    sget-object v8, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v5, v2

    .line 196
    add-int/lit8 v2, v7, 0x1

    sget-object v8, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v8, v6

    aput-char v6, v5, v7

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :pswitch_0
    add-int/lit8 v0, v0, 0x2

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 199
    :cond_0
    if-lez v4, :cond_2

    .line 200
    add-int/lit8 v3, v1, 0x1

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 201
    if-ne v4, v10, :cond_1

    .line 202
    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 204
    :cond_1
    add-int/lit8 v1, v2, 0x1

    sget-object v3, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v6, v0, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v3, v3, v6

    aput-char v3, v5, v2

    .line 205
    add-int/lit8 v2, v1, 0x1

    sget-object v3, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v3, v3, v6

    aput-char v3, v5, v1

    .line 206
    if-ne v4, v10, :cond_2

    .line 207
    add-int/lit8 v1, v2, 0x1

    sget-object v1, Lorg/keyczar/util/Base64Coder;->ALPHABET:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    aput-char v0, v5, v2

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getByte(I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    .prologue
    .line 238
    if-ltz p0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 239
    :cond_0
    new-instance v0, Lorg/keyczar/exceptions/Base64DecodingException;

    const-string v1, "Base64Coder.IllegalCharacter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 240
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method private static isWhiteSpace(I)Z
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lorg/keyczar/util/Base64Coder;->DECODE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
