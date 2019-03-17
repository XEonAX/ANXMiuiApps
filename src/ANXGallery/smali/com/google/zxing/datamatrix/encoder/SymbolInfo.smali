.class public Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;
.source "SymbolInfo.java"


# static fields
.field static final PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

.field private static symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# instance fields
.field private final dataCapacity:I

.field private final dataRegions:I

.field private final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field private final rectangular:Z

.field private final rsBlockData:I

.field private final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 28
    const/16 v0, 0x1e

    new-array v9, v0, [Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v7, 0x0

    .line 29
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x1

    .line 30
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x2

    .line 31
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x3

    .line 32
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x4

    .line 33
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xb

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x5

    .line 34
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x6

    .line 35
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0x18

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x7

    .line 37
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x12

    const/16 v3, 0xe

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x8

    .line 38
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x9

    .line 39
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xa

    .line 40
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xb

    .line 41
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/16 v3, 0x18

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xc

    .line 42
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x24

    const/16 v3, 0x18

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xd

    .line 43
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x2c

    const/16 v3, 0x1c

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xe

    .line 44
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x31

    const/16 v3, 0x1c

    const/16 v4, 0x16

    const/16 v5, 0xe

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xf

    .line 46
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const/16 v3, 0x24

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x10

    .line 47
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x56

    const/16 v3, 0x2a

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x11

    .line 48
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x72

    const/16 v3, 0x30

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x12

    .line 49
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x90

    const/16 v3, 0x38

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x13

    .line 50
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xae

    const/16 v3, 0x44

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v10, 0x14

    .line 52
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xcc

    const/16 v3, 0x54

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x4

    const/16 v7, 0x66

    const/16 v8, 0x2a

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    .line 53
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x118

    const/16 v3, 0x70

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0x10

    const/16 v7, 0x8c

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    .line 54
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x170

    const/16 v3, 0x90

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x5c

    const/16 v8, 0x24

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    .line 55
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x1c8

    const/16 v3, 0xc0

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x10

    const/16 v7, 0x72

    const/16 v8, 0x30

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    .line 56
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x240

    const/16 v3, 0xe0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x10

    const/16 v7, 0x90

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    .line 57
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x2b8

    const/16 v3, 0x110

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x10

    const/16 v7, 0xae

    const/16 v8, 0x44

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a

    .line 58
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x330

    const/16 v3, 0x150

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/16 v7, 0x88

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b

    .line 59
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x41a

    const/16 v3, 0x198

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x24

    const/16 v7, 0xaf

    const/16 v8, 0x44

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c

    .line 60
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x518

    const/16 v3, 0x1f0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x24

    const/16 v7, 0xa3

    const/16 v8, 0x3e

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v0, 0x1d

    .line 61
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;-><init>()V

    aput-object v1, v9, v0

    .line 28
    sput-object v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 64
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9
    .param p1, "rectangular"    # Z
    .param p2, "dataCapacity"    # I
    .param p3, "errorCodewords"    # I
    .param p4, "matrixWidth"    # I
    .param p5, "matrixHeight"    # I
    .param p6, "dataRegions"    # I

    .prologue
    .line 86
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    .line 87
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 88
    return-void
.end method

.method constructor <init>(ZIIIIIII)V
    .locals 0
    .param p1, "rectangular"    # Z
    .param p2, "dataCapacity"    # I
    .param p3, "errorCodewords"    # I
    .param p4, "matrixWidth"    # I
    .param p5, "matrixHeight"    # I
    .param p6, "dataRegions"    # I
    .param p7, "rsBlockData"    # I
    .param p8, "rsBlockError"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 94
    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 95
    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 96
    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 97
    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 98
    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 99
    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 100
    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    .line 101
    return-void
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 6
    .param p0, "dataCodewords"    # I
    .param p1, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p2, "minSize"    # Lcom/google/zxing/Dimension;
    .param p3, "maxSize"    # Lcom/google/zxing/Dimension;
    .param p4, "fail"    # Z

    .prologue
    .line 126
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 147
    if-eqz p4, :cond_6

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find a symbol arrangement that matches the message. Data codewords: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    aget-object v0, v2, v1

    .line 127
    .local v0, "symbol":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_2

    iget-boolean v4, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v4, :cond_2

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_3

    iget-boolean v4, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v4, :cond_1

    .line 133
    :cond_3
    if-eqz p2, :cond_4

    .line 134
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 138
    :cond_4
    if-eqz p3, :cond_5

    .line 139
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 143
    :cond_5
    iget v4, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-gt p0, v4, :cond_1

    .line 152
    .end local v0    # "symbol":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    :goto_1
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final getDataCapacity()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    return v0
.end method

.method public getDataLengthForInterleavedBlock(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 222
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    return v0
.end method

.method public final getErrorCodewords()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    return v0
.end method

.method public final getErrorLengthForInterleavedBlock(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 226
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return v0
.end method

.method final getHorizontalDataRegions()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 156
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    sparse-switch v1, :sswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot handle this number of data regions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :sswitch_0
    const/4 v0, 0x1

    .line 166
    :goto_0
    :sswitch_1
    return v0

    .line 164
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 166
    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x24 -> :sswitch_3
    .end sparse-switch
.end method

.method public getInterleavedBlockCount()I
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataHeight()I
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataWidth()I
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolHeight()I
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolWidth()I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method final getVerticalDataRegions()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 173
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    sparse-switch v1, :sswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot handle this number of data regions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :sswitch_0
    const/4 v0, 0x2

    .line 183
    :goto_0
    :sswitch_1
    return v0

    .line 181
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 183
    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x24 -> :sswitch_3
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x78

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v1, :cond_0

    const-string v1, "Rectangular Symbol:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, " data region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", symbol size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ", symbol data size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", codewords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 232
    :cond_0
    const-string v1, "Square Symbol:"

    goto :goto_0
.end method
