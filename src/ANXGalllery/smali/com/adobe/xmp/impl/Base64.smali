.class public Lcom/adobe/xmp/impl/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static ascii:[B

.field private static base64:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0xff

    const/4 v4, -0x2

    .line 31
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/adobe/xmp/impl/Base64;->base64:[B

    .line 50
    new-array v1, v3, [B

    sput-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    .line 54
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 56
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->base64:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    sget-object v2, Lcom/adobe/xmp/impl/Base64;->base64:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    .line 65
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v2, 0xa

    aput-byte v4, v1, v2

    .line 66
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v2, 0xd

    aput-byte v4, v1, v2

    .line 67
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v2, 0x20

    aput-byte v4, v1, v2

    .line 70
    sget-object v1, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    const/16 v2, 0x3d

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    .line 71
    return-void

    .line 31
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static final decode([B)[B
    .locals 9
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "srcLen":I
    const/4 v2, 0x0

    .local v2, "sidx":I
    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_2

    .line 194
    sget-object v6, Lcom/adobe/xmp/impl/Base64;->ascii:[B

    aget-byte v7, p0, v2

    aget-byte v5, v6, v7

    .line 195
    .local v5, "val":B
    if-ltz v5, :cond_1

    .line 197
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "srcLen":I
    .local v4, "srcLen":I
    aput-byte v5, p0, v3

    move v3, v4

    .line 192
    .end local v4    # "srcLen":I
    .restart local v3    # "srcLen":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 201
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid base 64 string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 208
    .end local v5    # "val":B
    :cond_2
    :goto_1
    if-lez v3, :cond_3

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p0, v6

    const/4 v7, -0x3

    if-ne v6, v7, :cond_3

    .line 210
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 212
    :cond_3
    mul-int/lit8 v6, v3, 0x3

    div-int/lit8 v6, v6, 0x4

    new-array v1, v6, [B

    .line 218
    .local v1, "dst":[B
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "didx":I
    :goto_2
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ge v0, v6, :cond_4

    .line 220
    aget-byte v6, p0, v2

    shl-int/lit8 v6, v6, 0x2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 222
    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    ushr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 224
    add-int/lit8 v6, v0, 0x2

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 218
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 227
    :cond_4
    array-length v6, v1

    if-ge v0, v6, :cond_5

    .line 229
    aget-byte v6, p0, v2

    shl-int/lit8 v6, v6, 0x2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 232
    :cond_5
    add-int/lit8 v0, v0, 0x1

    array-length v6, v1

    if-ge v0, v6, :cond_6

    .line 234
    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    ushr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 237
    :cond_6
    return-object v1
.end method
