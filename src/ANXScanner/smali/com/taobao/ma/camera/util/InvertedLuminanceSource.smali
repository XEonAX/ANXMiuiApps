.class public final Lcom/taobao/ma/camera/util/InvertedLuminanceSource;
.super Lcom/taobao/ma/camera/util/LuminanceSource;
.source "InvertedLuminanceSource.java"


# instance fields
.field private final delegate:Lcom/taobao/ma/camera/util/LuminanceSource;


# direct methods
.method public constructor <init>(Lcom/taobao/ma/camera/util/LuminanceSource;)V
    .locals 2
    .param p1, "delegate"    # Lcom/taobao/ma/camera/util/LuminanceSource;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/taobao/ma/camera/util/LuminanceSource;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/ma/camera/util/LuminanceSource;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/ma/camera/util/LuminanceSource;-><init>(II)V

    .line 31
    iput-object p1, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    .line 32
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/taobao/ma/camera/util/LuminanceSource;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/taobao/ma/camera/util/LuminanceSource;->crop(IIII)Lcom/taobao/ma/camera/util/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;-><init>(Lcom/taobao/ma/camera/util/LuminanceSource;)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 6

    .prologue
    .line 46
    iget-object v4, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v4}, Lcom/taobao/ma/camera/util/LuminanceSource;->getMatrix()[B

    move-result-object v3

    .line 47
    .local v3, "matrix":[B
    invoke-virtual {p0}, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->getHeight()I

    move-result v5

    mul-int v2, v4, v5

    .line 48
    .local v2, "length":I
    new-array v1, v2, [B

    .line 49
    .local v1, "invertedMatrix":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 50
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-object v1
.end method

.method public getRow(I[B)[B
    .locals 3
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 36
    iget-object v2, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v2, p1, p2}, Lcom/taobao/ma/camera/util/LuminanceSource;->getRow(I[B)[B

    move-result-object p2

    .line 37
    invoke-virtual {p0}, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->getWidth()I

    move-result v1

    .line 38
    .local v1, "width":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 39
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-object p2
.end method

.method public invert()Lcom/taobao/ma/camera/util/LuminanceSource;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v0}, Lcom/taobao/ma/camera/util/LuminanceSource;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v0}, Lcom/taobao/ma/camera/util/LuminanceSource;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/taobao/ma/camera/util/LuminanceSource;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v1}, Lcom/taobao/ma/camera/util/LuminanceSource;->rotateCounterClockwise()Lcom/taobao/ma/camera/util/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;-><init>(Lcom/taobao/ma/camera/util/LuminanceSource;)V

    return-object v0
.end method

.method public rotateCounterClockwise45()Lcom/taobao/ma/camera/util/LuminanceSource;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;->delegate:Lcom/taobao/ma/camera/util/LuminanceSource;

    invoke-virtual {v1}, Lcom/taobao/ma/camera/util/LuminanceSource;->rotateCounterClockwise45()Lcom/taobao/ma/camera/util/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/ma/camera/util/InvertedLuminanceSource;-><init>(Lcom/taobao/ma/camera/util/LuminanceSource;)V

    return-object v0
.end method
