.class public final Lcom/google/zxing/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# instance fields
.field private final height:I

.field private final width:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 45
    instance-of v2, p1, Lcom/google/zxing/Dimension;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/google/zxing/Dimension;

    .line 47
    .local v0, "d":Lcom/google/zxing/Dimension;
    iget v2, p0, Lcom/google/zxing/Dimension;->width:I

    iget v3, v0, Lcom/google/zxing/Dimension;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/Dimension;->height:I

    iget v3, v0, Lcom/google/zxing/Dimension;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 49
    .end local v0    # "d":Lcom/google/zxing/Dimension;
    :cond_0
    return v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/Dimension;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/zxing/Dimension;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/zxing/Dimension;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/zxing/Dimension;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/Dimension;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
