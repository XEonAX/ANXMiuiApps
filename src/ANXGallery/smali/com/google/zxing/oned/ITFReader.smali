.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 54
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 66
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 72
    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 73
    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 74
    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    .line 75
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    .line 76
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    .line 77
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    .line 78
    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 79
    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 80
    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 81
    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    .line 71
    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 82
    return-void

    .line 54
    :array_0
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 66
    :array_2
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    .line 72
    :array_3
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    .line 73
    :array_4
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    .line 74
    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    .line 75
    :array_6
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    .line 76
    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    .line 77
    :array_8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    .line 78
    :array_9
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    .line 79
    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    .line 80
    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    .line 81
    :array_c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method
