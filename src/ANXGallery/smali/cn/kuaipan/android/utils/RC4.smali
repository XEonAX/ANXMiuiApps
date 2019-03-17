.class public Lcn/kuaipan/android/utils/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field private final sBox:[I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    .line 23
    return-void
.end method


# virtual methods
.method public genRC4([BII[BI)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOffset"    # I

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "xorIndex":I
    const/4 v3, 0x0

    .line 83
    .local v3, "t":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p5

    .end local p5    # "outOffset":I
    .local v2, "outOffset":I
    move v1, p2

    .end local p2    # "inOffset":I
    .local v1, "inOffset":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 84
    iget v5, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    .line 85
    iget-object v5, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    aget v5, v5, v6

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    .line 87
    iget-object v5, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    aget v3, v5, v6

    .line 88
    iget-object v5, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    iget-object v7, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v8, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    aget v7, v7, v8

    aput v7, v5, v6

    .line 89
    iget-object v5, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    aput v3, v5, v6

    .line 91
    iget-object v5, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    aget v5, v5, v6

    iget-object v6, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v7, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    aget v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v4, v5, 0xff

    .line 92
    add-int/lit8 p5, v2, 0x1

    .end local v2    # "outOffset":I
    .restart local p5    # "outOffset":I
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v5, p1, v1

    iget-object v6, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    aget v6, v6, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 83
    add-int/lit8 v0, v0, 0x1

    move v2, p5

    .end local p5    # "outOffset":I
    .restart local v2    # "outOffset":I
    move v1, p2

    .end local p2    # "inOffset":I
    .restart local v1    # "inOffset":I
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public makeKey([B)V
    .locals 9
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x100

    const/4 v6, 0x0

    .line 42
    move-object v5, p1

    .line 43
    .local v5, "userkey":[B
    if-nez v5, :cond_0

    .line 44
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Null user key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :cond_0
    array-length v3, v5

    .line 47
    .local v3, "len":I
    if-nez v3, :cond_1

    .line 48
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Invalid user key length"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_1
    iput v6, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    .line 51
    iput v6, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 53
    iget-object v6, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    aput v0, v6, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    .local v1, "i1":I
    const/4 v2, 0x0

    .line 57
    .local v2, "i2":I
    const/4 v4, 0x0

    .line 59
    .local v4, "t":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_3

    .line 60
    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    and-int/lit16 v2, v6, 0xff

    .line 62
    iget-object v6, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    aget v4, v6, v0

    .line 63
    iget-object v6, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget-object v7, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    aget v7, v7, v2

    aput v7, v6, v0

    .line 64
    iget-object v6, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    aput v4, v6, v2

    .line 66
    add-int/lit8 v6, v1, 0x1

    rem-int v1, v6, v3

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_3
    return-void
.end method

.method public skip(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "t":I
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 99
    iget v3, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    .line 100
    iget-object v3, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v4, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    aget v3, v3, v4

    iget v4, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    .line 102
    iget-object v3, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v4, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    aget v2, v3, v4

    .line 103
    iget-object v3, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v4, p0, Lcn/kuaipan/android/utils/RC4;->x:I

    iget-object v5, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v6, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    aget v5, v5, v6

    aput v5, v3, v4

    .line 104
    iget-object v3, p0, Lcn/kuaipan/android/utils/RC4;->sBox:[I

    iget v4, p0, Lcn/kuaipan/android/utils/RC4;->y:I

    aput v2, v3, v4

    .line 98
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method
