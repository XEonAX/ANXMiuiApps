.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    .line 43
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void

    .line 33
    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 8
    .param p1, "versionNumber"    # I
    .param p2, "alignmentPatternCenters"    # [I
    .param p3, "ecBlocks"    # [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 54
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    .line 55
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "total":I
    aget-object v5, p3, v4

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v1

    .line 58
    .local v1, "ecCodewords":I
    aget-object v5, p3, v4

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v2

    .line 59
    .local v2, "ecbArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    array-length v5, v2

    :goto_0
    if-lt v4, v5, :cond_0

    .line 62
    iput v3, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 63
    return-void

    .line 59
    :cond_0
    aget-object v0, v2, v4

    .line 60
    .local v0, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v7

    add-int/2addr v7, v1

    mul-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 14

    .prologue
    .line 246
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v1, 0x0

    .line 247
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 248
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v8, 0x7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 249
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 250
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xd

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 251
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x11

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 247
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 252
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 253
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x22

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 254
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x1c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 255
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 256
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 252
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 257
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 258
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xf

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x37

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 259
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 260
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 261
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 257
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 262
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 263
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x50

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 264
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x20

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 265
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 266
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 262
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 267
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 268
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 269
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 270
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 271
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 270
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 272
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 273
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 272
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 267
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 274
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 275
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 276
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 277
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 278
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 274
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 279
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 280
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x4e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 281
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 282
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 283
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 282
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 284
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 285
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 284
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 279
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 286
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x8

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 287
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x61

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 288
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 289
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x27

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 288
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 290
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x12

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 291
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 290
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 292
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 293
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 292
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 286
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 294
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x9

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 295
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 296
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 297
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 296
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 298
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 299
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 298
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 300
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 301
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 300
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 294
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 302
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xa

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 303
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 304
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x45

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 303
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 305
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 306
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 305
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 307
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 308
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 307
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 309
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 310
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 309
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 302
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 311
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xb

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 312
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x51

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 313
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 314
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x33

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 313
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 315
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 316
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 315
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 317
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 318
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 317
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 311
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 319
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xc

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 320
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 321
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 320
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 322
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 323
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 322
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 324
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 325
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 324
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 326
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 327
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 326
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 319
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 328
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xd

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 329
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 330
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 331
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 330
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 332
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 333
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 332
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 334
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 335
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 334
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 328
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 336
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xe

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 337
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 338
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 337
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 339
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x28

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 340
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 339
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 341
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 342
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 341
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 343
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 344
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 343
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 336
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 345
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xf

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 346
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x57

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 347
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x58

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 346
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 348
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 349
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 348
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 350
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 351
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 350
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 352
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 353
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 352
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 345
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 354
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x10

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 355
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x62

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 356
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x63

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 355
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 357
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 358
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 357
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 359
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 360
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 359
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 361
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 362
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 361
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 354
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 363
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x11

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 364
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 365
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 364
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 366
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 367
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 366
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 368
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 369
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 368
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 370
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 371
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 370
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 363
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 372
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x12

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_10

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 373
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x78

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 374
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 373
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 375
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 376
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 375
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 377
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 378
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 377
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 379
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 380
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 379
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 372
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 381
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x13

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_11

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 382
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x71

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 383
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 382
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 384
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 385
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 384
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 386
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 387
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 386
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 388
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 389
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 388
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 381
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 390
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x14

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_12

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 391
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 392
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 391
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 393
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 394
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 393
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 395
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 396
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 395
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 397
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 398
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 397
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 390
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 399
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x15

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_13

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 400
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 401
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 400
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 402
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 403
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 404
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 403
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 405
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 406
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 405
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 399
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 407
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x16

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_14

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 408
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x6f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 409
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x70

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 408
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 410
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 411
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 412
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 411
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 413
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 407
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 414
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x17

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_15

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 415
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 416
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 415
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 417
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 418
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 417
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 419
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 420
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 419
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 421
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 422
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 421
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 414
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 423
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x18

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_16

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 424
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 425
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 424
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 426
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 427
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 426
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 428
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 429
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 428
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 430
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 431
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 430
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 423
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 432
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x19

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_17

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 433
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x6a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 434
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 433
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 435
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 436
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 435
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 437
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 438
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 437
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 439
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 440
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 439
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 432
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 441
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1a

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 442
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 443
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 442
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 444
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 445
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 444
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 446
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 447
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 446
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 448
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x21

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 449
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 448
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 441
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 450
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1b

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_19

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 451
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 452
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 451
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 453
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 454
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 453
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 455
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 456
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 455
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 457
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 458
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 457
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 450
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 459
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1c

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1a

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 460
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 461
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 460
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 462
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 463
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 462
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 464
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 465
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 464
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 466
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 467
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 466
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 459
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 468
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1d

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1b

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 469
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 470
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 469
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 471
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 472
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 471
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 473
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 474
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 473
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 475
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 476
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 475
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 468
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 477
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1e

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 478
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 479
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 478
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 480
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 481
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 480
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 482
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 483
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 482
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 484
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 485
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 484
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 477
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 486
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1f

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1d

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 487
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 488
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 487
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 489
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 490
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 489
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 491
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 492
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 491
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 493
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 494
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 493
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 486
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 495
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x20

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 496
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 497
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 498
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 497
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 499
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 500
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 499
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 501
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 502
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 501
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 495
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 503
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x21

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1f

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 504
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 505
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 504
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 506
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 507
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 506
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 508
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 509
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 508
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 510
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 511
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 510
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 503
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 512
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x22

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_20

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 513
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 514
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 513
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 515
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 516
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 515
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 517
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 518
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 517
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 519
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3b

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 520
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 519
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 512
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 521
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x23

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_21

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 522
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 523
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 522
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 524
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 525
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 524
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 526
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x27

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 527
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 526
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 528
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 529
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x29

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 528
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 521
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 530
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x24

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_22

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 531
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 532
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 531
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 533
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 534
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 533
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 535
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 536
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 535
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 537
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 538
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x40

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 537
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 530
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 539
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x25

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_23

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 540
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 541
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 540
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 542
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 543
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 542
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 544
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x31

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 545
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 544
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 546
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x18

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 547
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 546
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 539
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 548
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x26

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_24

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 549
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 550
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 549
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 551
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 552
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 551
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 553
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x30

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 554
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 553
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 555
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 556
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 555
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 548
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 557
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x27

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_25

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 558
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 559
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 558
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 560
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x28

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 561
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 560
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 562
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2b

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 563
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 562
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 564
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 565
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x43

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 564
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 557
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 566
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x28

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_26

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    .line 567
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 568
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x77

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 567
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 569
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 570
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 569
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 571
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 572
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 571
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 573
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 574
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3d

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    .line 573
    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    .line 566
    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    .line 246
    return-object v0

    .line 252
    nop

    :array_0
    .array-data 4
        0x6
        0x12
    .end array-data

    .line 257
    :array_1
    .array-data 4
        0x6
        0x16
    .end array-data

    .line 262
    :array_2
    .array-data 4
        0x6
        0x1a
    .end array-data

    .line 267
    :array_3
    .array-data 4
        0x6
        0x1e
    .end array-data

    .line 274
    :array_4
    .array-data 4
        0x6
        0x22
    .end array-data

    .line 279
    :array_5
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    .line 286
    :array_6
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    .line 294
    :array_7
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    .line 302
    :array_8
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    .line 311
    :array_9
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    .line 319
    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    .line 328
    :array_b
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    .line 336
    :array_c
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    .line 345
    :array_d
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    .line 354
    :array_e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    .line 363
    :array_f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    .line 372
    :array_10
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    .line 381
    :array_11
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    .line 390
    :array_12
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    .line 399
    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    .line 407
    :array_14
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    .line 414
    :array_15
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    .line 423
    :array_16
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    .line 432
    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    .line 441
    :array_18
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    .line 450
    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    .line 459
    :array_1a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    .line 468
    :array_1b
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    .line 477
    :array_1c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    .line 486
    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    .line 495
    :array_1e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    .line 503
    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    .line 512
    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    .line 521
    :array_21
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    .line 530
    :array_22
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    .line 539
    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    .line 548
    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    .line 557
    :array_25
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    .line 566
    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .param p0, "versionNumber"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x28

    if-le p0, v0, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getDimensionForVersion()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 2
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCodewords()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
