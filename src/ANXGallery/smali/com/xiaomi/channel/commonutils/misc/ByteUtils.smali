.class public Lcom/xiaomi/channel/commonutils/misc/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public static parseInt(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 12
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 14
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 15
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 16
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 17
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 19
    return-object v0
.end method

.method public static toInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 23
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "the length of bytes must be 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .local v0, "result":I
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 28
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 29
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 30
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 31
    return v0
.end method
