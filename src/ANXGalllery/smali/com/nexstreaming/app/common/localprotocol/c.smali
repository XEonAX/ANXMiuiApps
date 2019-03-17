.class public Lcom/nexstreaming/app/common/localprotocol/c;
.super Ljava/lang/Object;
.source "nexProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/localprotocol/c$a;,
        Lcom/nexstreaming/app/common/localprotocol/c$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/ByteBuffer;IZ)Lcom/nexstreaming/app/common/localprotocol/c$b;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/c$b;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/localprotocol/c$b;-><init>()V

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 102
    const v2, 0x4e657850    # 9.6246682E8f

    if-eq v1, v2, :cond_0

    .line 103
    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidHDR:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    .line 133
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    .line 107
    const/16 v2, 0x51

    if-ne v1, v2, :cond_1

    .line 108
    iput-boolean v3, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->c:Z

    .line 109
    if-nez p2, :cond_2

    .line 110
    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRQ:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    goto :goto_0

    .line 113
    :cond_1
    const/16 v2, 0x53

    if-ne v1, v2, :cond_2

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->c:Z

    .line 115
    if-eqz p2, :cond_2

    .line 116
    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRS:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->d:I

    .line 122
    if-eqz p2, :cond_3

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->e:I

    .line 124
    if-eqz p2, :cond_4

    iget v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->e:I

    if-eq v1, p1, :cond_4

    .line 125
    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidSSID:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    .line 131
    :cond_4
    iput-boolean v3, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->b:Z

    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->g:I

    goto :goto_0
.end method

.method public static a(Landroid/net/LocalSocket;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    if-eq v0, p2, :cond_1

    .line 75
    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 76
    if-gez v2, :cond_0

    .line 77
    new-instance v0, Ljava/io/IOException;

    const-string v1, "I/O failure while receiving SDK controller data from socket."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    add-int/2addr v0, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public static a(SII)[B
    .locals 2

    .prologue
    .line 51
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    const v1, 0x4e657850    # 9.6246682E8f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
