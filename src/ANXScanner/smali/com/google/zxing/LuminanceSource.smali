.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/zxing/LuminanceSource;->width:I

    .line 35
    iput p2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    .line 36
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support cropping."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    return v0
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 134
    iget v6, p0, Lcom/google/zxing/LuminanceSource;->width:I

    new-array v3, v6, [B

    .line 135
    .local v3, "row":[B
    new-instance v2, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/google/zxing/LuminanceSource;->height:I

    iget v7, p0, Lcom/google/zxing/LuminanceSource;->width:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    iget v6, p0, Lcom/google/zxing/LuminanceSource;->height:I

    if-lt v5, v6, :cond_0

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 137
    :cond_0
    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v3

    .line 138
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    iget v6, p0, Lcom/google/zxing/LuminanceSource;->width:I

    if-lt v4, v6, :cond_1

    .line 152
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    :cond_1
    aget-byte v6, v3, v4

    and-int/lit16 v1, v6, 0xff

    .line 141
    .local v1, "luminance":I
    const/16 v6, 0x40

    if-ge v1, v6, :cond_2

    .line 142
    const/16 v0, 0x23

    .line 150
    .local v0, "c":C
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "c":C
    :cond_2
    const/16 v6, 0x80

    if-ge v1, v6, :cond_3

    .line 144
    const/16 v0, 0x2b

    .line 145
    .restart local v0    # "c":C
    goto :goto_2

    .end local v0    # "c":C
    :cond_3
    const/16 v6, 0xc0

    if-ge v1, v6, :cond_4

    .line 146
    const/16 v0, 0x2e

    .line 147
    .restart local v0    # "c":C
    goto :goto_2

    .line 148
    .end local v0    # "c":C
    :cond_4
    const/16 v0, 0x20

    .restart local v0    # "c":C
    goto :goto_2
.end method
