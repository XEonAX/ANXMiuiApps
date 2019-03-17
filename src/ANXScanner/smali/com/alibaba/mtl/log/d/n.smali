.class public Lcom/alibaba/mtl/log/d/n;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/d/n$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Lcom/alibaba/mtl/log/d/n$a;
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    new-instance v1, Lcom/alibaba/mtl/log/d/n$a;

    invoke-direct {v1, v0}, Lcom/alibaba/mtl/log/d/n$a;-><init>(Lcom/alibaba/mtl/log/d/n$1;)V

    move v3, v2

    .line 34
    :goto_0
    if-ge v3, v8, :cond_0

    .line 35
    iget-object v4, v1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aput v3, v4, v3

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iput v2, v1, Lcom/alibaba/mtl/log/d/n$a;->x:I

    .line 38
    iput v2, v1, Lcom/alibaba/mtl/log/d/n$a;->y:I

    move v3, v2

    move v4, v2

    .line 42
    :goto_1
    if-ge v2, v8, :cond_1

    .line 43
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0x100

    .line 44
    iget-object v5, v1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v5, v5, v2

    .line 45
    iget-object v6, v1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    iget-object v7, v1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v7, v7, v3

    aput v7, v6, v2

    .line 46
    iget-object v6, v1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aput v5, v6, v3

    .line 47
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/2addr v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 54
    :cond_2
    :goto_2
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static a([BLcom/alibaba/mtl/log/d/n$a;)[B
    .locals 6

    .prologue
    .line 58
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 63
    iget v2, p1, Lcom/alibaba/mtl/log/d/n$a;->x:I

    .line 64
    iget v1, p1, Lcom/alibaba/mtl/log/d/n$a;->y:I

    .line 66
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 68
    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x100

    .line 69
    iget-object v3, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    rem-int/lit16 v1, v1, 0x100

    .line 70
    iget-object v3, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v3, v3, v2

    .line 71
    iget-object v4, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    iget-object v5, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v5, v5, v1

    aput v5, v4, v2

    .line 72
    iget-object v4, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aput v3, v4, v1

    .line 73
    iget-object v3, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    .line 75
    aget-byte v4, p0, v0

    iget-object v5, p1, Lcom/alibaba/mtl/log/d/n$a;->d:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iput v2, p1, Lcom/alibaba/mtl/log/d/n$a;->x:I

    .line 78
    iput v1, p1, Lcom/alibaba/mtl/log/d/n$a;->y:I

    .line 81
    :goto_1
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 19
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 20
    invoke-static {p1}, Lcom/alibaba/mtl/log/d/n;->a(Ljava/lang/String;)Lcom/alibaba/mtl/log/d/n$a;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0, v0}, Lcom/alibaba/mtl/log/d/n;->a([BLcom/alibaba/mtl/log/d/n$a;)[B

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
