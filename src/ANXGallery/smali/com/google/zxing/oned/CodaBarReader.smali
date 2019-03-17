.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    .line 50
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 61
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method static arrayContains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .prologue
    const/4 v1, 0x0

    .line 282
    if-eqz p0, :cond_0

    .line 283
    array-length v3, p0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    .line 289
    :cond_0
    :goto_1
    return v1

    .line 283
    :cond_1
    aget-char v0, p0, v2

    .line 284
    .local v0, "c":C
    if-ne v0, p1, :cond_2

    .line 285
    const/4 v1, 0x1

    goto :goto_1

    .line 283
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
