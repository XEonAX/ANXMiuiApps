.class public Lorg/jcodec/common/Fourcc;
.super Ljava/lang/Object;
.source "Fourcc.java"


# static fields
.field public static final free:I

.field public static final ftyp:I

.field public static final mdat:I

.field public static final moov:I

.field public static final wide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "ftyp"

    invoke-static {v0}, Lorg/jcodec/common/Fourcc;->intFourcc(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/jcodec/common/Fourcc;->ftyp:I

    .line 20
    const-string v0, "free"

    invoke-static {v0}, Lorg/jcodec/common/Fourcc;->intFourcc(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/jcodec/common/Fourcc;->free:I

    .line 21
    const-string v0, "moov"

    invoke-static {v0}, Lorg/jcodec/common/Fourcc;->intFourcc(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/jcodec/common/Fourcc;->moov:I

    .line 22
    const-string v0, "mdat"

    invoke-static {v0}, Lorg/jcodec/common/Fourcc;->intFourcc(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/jcodec/common/Fourcc;->mdat:I

    .line 23
    const-string/jumbo v0, "wide"

    invoke-static {v0}, Lorg/jcodec/common/Fourcc;->intFourcc(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/jcodec/common/Fourcc;->wide:I

    return-void
.end method

.method public static intFourcc(Ljava/lang/String;)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lorg/jcodec/platform/Platform;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 16
    .local v0, "b":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Lorg/jcodec/common/Fourcc;->makeInt(BBBB)I

    move-result v1

    return v1
.end method

.method public static makeInt(BBBB)I
    .locals 2
    .param p0, "b3"    # B
    .param p1, "b2"    # B
    .param p2, "b1"    # B
    .param p3, "b0"    # B

    .prologue
    .line 8
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method
