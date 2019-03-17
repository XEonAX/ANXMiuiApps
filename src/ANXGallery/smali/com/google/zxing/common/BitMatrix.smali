.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 53
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 54
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 56
    return-void
.end method

.method private constructor <init>(III[I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowSize"    # I
    .param p4, "bits"    # [I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 61
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    .line 104
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .prologue
    .line 332
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 300
    instance-of v2, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 303
    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 304
    .local v0, "other":Lcom/google/zxing/common/BitMatrix;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_0

    .line 305
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 73
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 74
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 310
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 311
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int v0, v1, v2

    .line 312
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int v0, v1, v2

    .line 313
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int v0, v1, v2

    .line 314
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 315
    return v0
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 84
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 85
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 86
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v9, 0x1

    .line 118
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 119
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 122
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    :cond_3
    add-int v2, p1, p3

    .line 125
    .local v2, "right":I
    add-int v0, p2, p4

    .line 126
    .local v0, "bottom":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 127
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_5
    move v4, p2

    .local v4, "y":I
    :goto_0
    if-lt v4, v0, :cond_6

    .line 135
    return-void

    .line 130
    :cond_6
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 131
    .local v1, "offset":I
    move v3, p1

    .local v3, "x":I
    :goto_1
    if-lt v3, v2, :cond_7

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_7
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v6, v3, 0x20

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-lt v2, v3, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 322
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-lt v1, v3, :cond_1

    .line 325
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_2
    const-string v3, "  "

    goto :goto_2
.end method
