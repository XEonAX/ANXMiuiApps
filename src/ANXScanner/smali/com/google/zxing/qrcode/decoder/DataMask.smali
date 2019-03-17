.class abstract Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Object;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;
    }
.end annotation


# static fields
.field private static final DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    const/4 v1, 0x0

    .line 38
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 39
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 40
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 41
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 42
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 43
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 44
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 45
    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;)V

    aput-object v2, v0, v1

    .line 37
    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>()V

    return-void
.end method

.method static forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1
    .param p0, "reference"    # I

    .prologue
    .line 76
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
    .locals 3
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimension"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 66
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p2, :cond_1

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 60
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
