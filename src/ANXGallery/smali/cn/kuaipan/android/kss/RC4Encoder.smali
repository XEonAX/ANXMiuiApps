.class public Lcn/kuaipan/android/kss/RC4Encoder;
.super Ljava/lang/Object;
.source "RC4Encoder.java"

# interfaces
.implements Lcn/kuaipan/android/http/IKscDecoder;


# instance fields
.field private buf:[B

.field private bufUsed:I

.field private final key:[B

.field private final rc4:Lcn/kuaipan/android/utils/RC4;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    .line 19
    iput-object p1, p0, Lcn/kuaipan/android/kss/RC4Encoder;->key:[B

    .line 20
    new-instance v0, Lcn/kuaipan/android/utils/RC4;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/RC4;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->rc4:Lcn/kuaipan/android/utils/RC4;

    .line 21
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->rc4:Lcn/kuaipan/android/utils/RC4;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/utils/RC4;->makeKey([B)V

    .line 22
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    .line 23
    return-void
.end method


# virtual methods
.method public canEnd()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public clone()Lcn/kuaipan/android/kss/RC4Encoder;
    .locals 3

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Lcn/kuaipan/android/kss/RC4Encoder;

    iget-object v2, p0, Lcn/kuaipan/android/kss/RC4Encoder;->key:[B

    invoke-direct {v1, v2}, Lcn/kuaipan/android/kss/RC4Encoder;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/InvalidKeyException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/RC4Encoder;->clone()Lcn/kuaipan/android/kss/RC4Encoder;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    .line 54
    return-void
.end method

.method public declared-synchronized fillData([BII)V
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    add-int v6, v0, p3

    .line 65
    .local v6, "needSize":I
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    array-length v0, v0

    if-le v6, v0, :cond_1

    .line 66
    iget-object v8, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    .line 67
    .local v8, "old":[B
    array-length v0, v8

    shl-int/lit8 v7, v0, 0x1

    .line 68
    .local v7, "newSize":I
    :goto_0
    if-le v6, v7, :cond_0

    .line 69
    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 72
    :cond_0
    new-array v0, v7, [B

    iput-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    .line 73
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .end local v7    # "newSize":I
    .end local v8    # "old":[B
    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->rc4:Lcn/kuaipan/android/utils/RC4;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/kuaipan/android/utils/RC4;->genRC4([BII[BI)V

    .line 77
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    iget v1, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iput v6, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 63
    .end local v6    # "needSize":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->rc4:Lcn/kuaipan/android/utils/RC4;

    iget-object v1, p0, Lcn/kuaipan/android/kss/RC4Encoder;->key:[B

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/utils/RC4;->makeKey([B)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public needFill()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    rsub-int v0, v0, 0x2000

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized readDecodeData([BII)I
    .locals 5
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "outputLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return v0

    .line 87
    :cond_0
    :try_start_1
    iget v2, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 88
    .local v0, "len":I
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    iget-object v2, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v2, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    sub-int v1, v2, v0

    .line 92
    .local v1, "rel":I
    if-lez v1, :cond_1

    .line 93
    iget-object v2, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    iget-object v3, p0, Lcn/kuaipan/android/kss/RC4Encoder;->buf:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_1
    iput v1, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "len":I
    .end local v1    # "rel":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public skip(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->rc4:Lcn/kuaipan/android/utils/RC4;

    iget-object v1, p0, Lcn/kuaipan/android/kss/RC4Encoder;->key:[B

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/utils/RC4;->makeKey([B)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->bufUsed:I

    .line 45
    iget-object v0, p0, Lcn/kuaipan/android/kss/RC4Encoder;->rc4:Lcn/kuaipan/android/utils/RC4;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/utils/RC4;->skip(J)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public supportRepeat()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
