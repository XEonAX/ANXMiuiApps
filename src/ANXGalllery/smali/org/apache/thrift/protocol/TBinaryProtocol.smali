.class public Lorg/apache/thrift/protocol/TBinaryProtocol;
.super Lorg/apache/thrift/protocol/TProtocol;
.source "TBinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_STRUCT:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field private bin:[B

.field private bout:[B

.field protected checkReadLength_:Z

.field private i16out:[B

.field private i16rd:[B

.field private i32out:[B

.field private i32rd:[B

.field private i64out:[B

.field private i64rd:[B

.field protected readLength_:I

.field protected strictRead_:Z

.field protected strictWrite_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/TStruct;-><init>()V

    sput-object v0, Lorg/apache/thrift/protocol/TBinaryProtocol;->ANONYMOUS_STRUCT:Lorg/apache/thrift/protocol/TStruct;

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/TTransport;ZZ)V
    .locals 5
    .param p1, "trans"    # Lorg/apache/thrift/transport/TTransport;
    .param p2, "strictRead"    # Z
    .param p3, "strictWrite"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/TProtocol;-><init>(Lorg/apache/thrift/transport/TTransport;)V

    .line 38
    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictRead_:Z

    .line 39
    iput-boolean v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictWrite_:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->checkReadLength_:Z

    .line 144
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->bout:[B

    .line 150
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16out:[B

    .line 157
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32out:[B

    .line 166
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    .line 257
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->bin:[B

    .line 268
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16rd:[B

    .line 287
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32rd:[B

    .line 306
    new-array v0, v4, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64rd:[B

    .line 84
    iput-boolean p2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictRead_:Z

    .line 85
    iput-boolean p3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->strictWrite_:Z

    .line 86
    return-void
.end method

.method private readAll([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0, p3}, Lorg/apache/thrift/protocol/TBinaryProtocol;->checkReadLength(I)V

    .line 378
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/transport/TTransport;->readAll([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkReadLength(I)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 387
    if-gez p1, :cond_0

    .line 388
    new-instance v0, Lorg/apache/thrift/TException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->checkReadLength_:Z

    if-eqz v0, :cond_1

    .line 391
    iget v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    .line 392
    iget v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    if-gez v0, :cond_1

    .line 393
    new-instance v0, Lorg/apache/thrift/TException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    return-void
.end method

.method public readBinary()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v2

    .line 363
    .local v2, "size":I
    invoke-virtual {p0, v2}, Lorg/apache/thrift/protocol/TBinaryProtocol;->checkReadLength(I)V

    .line 365
    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 366
    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v4}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v4

    invoke-static {v3, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3, v2}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V

    .line 373
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 371
    :cond_0
    new-array v1, v2, [B

    .line 372
    .local v1, "buf":[B
    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lorg/apache/thrift/transport/TTransport;->readAll([BII)I

    .line 373
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 254
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 259
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 260
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v2

    aget-byte v0, v1, v2

    .line 261
    .local v0, "b":B
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v1, v3}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V

    .line 265
    .end local v0    # "b":B
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->bin:[B

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readAll([BII)I

    .line 265
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->bin:[B

    aget-byte v0, v1, v2

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFieldBegin()Lorg/apache/thrift/protocol/TField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    .line 229
    .local v1, "type":B
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 230
    .local v0, "id":S
    :goto_0
    new-instance v2, Lorg/apache/thrift/protocol/TField;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    return-object v2

    .line 229
    .end local v0    # "id":S
    :cond_0
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI16()S

    move-result v0

    goto :goto_0
.end method

.method public readFieldEnd()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public readI16()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 270
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16rd:[B

    .line 271
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 273
    .local v1, "off":I
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 274
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    .line 275
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v1

    .line 276
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2, v4}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V

    .line 281
    :goto_0
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2

    .line 278
    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16rd:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readAll([BII)I

    goto :goto_0
.end method

.method public readI32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 289
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32rd:[B

    .line 290
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 292
    .local v1, "off":I
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 293
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    .line 294
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v1

    .line 295
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2, v4}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V

    .line 299
    :goto_0
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2

    .line 297
    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32rd:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readAll([BII)I

    goto :goto_0
.end method

.method public readI64()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 308
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64rd:[B

    .line 309
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 311
    .local v1, "off":I
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 312
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v0

    .line 313
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v1

    .line 314
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v2, v7}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V

    .line 319
    :goto_0
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    return-wide v2

    .line 316
    :cond_0
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64rd:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v7}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readAll([BII)I

    goto :goto_0
.end method

.method public readListBegin()Lorg/apache/thrift/protocol/TList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lorg/apache/thrift/protocol/TList;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    return-object v0
.end method

.method public readListEnd()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public readMapBegin()Lorg/apache/thrift/protocol/TMap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lorg/apache/thrift/protocol/TMap;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v2

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    return-object v0
.end method

.method public readMapEnd()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public readSetBegin()Lorg/apache/thrift/protocol/TSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lorg/apache/thrift/protocol/TSet;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/TSet;-><init>(BI)V

    return-object v0
.end method

.method public readSetEnd()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readI32()I

    move-result v2

    .line 337
    .local v2, "size":I
    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 339
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v4}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v4

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 340
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3, v2}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/thrift/TException;

    const-string v4, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v3, v4}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 347
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/thrift/protocol/TBinaryProtocol;->readStringBody(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readStringBody(I)Ljava/lang/String;
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->checkReadLength(I)V

    .line 353
    new-array v0, p1, [B

    .line 354
    .local v0, "buf":[B
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p1}, Lorg/apache/thrift/transport/TTransport;->readAll([BII)I

    .line 355
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 356
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 357
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/thrift/TException;

    const-string v3, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v2, v3}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readStructBegin()Lorg/apache/thrift/protocol/TStruct;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/apache/thrift/protocol/TBinaryProtocol;->ANONYMOUS_STRUCT:Lorg/apache/thrift/protocol/TStruct;

    return-object v0
.end method

.method public readStructEnd()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public setReadLength(I)V
    .locals 1
    .param p1, "readLength"    # I

    .prologue
    .line 382
    iput p1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->readLength_:I

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->checkReadLength_:Z

    .line 384
    return-void
.end method

.method public writeBinary(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "bin"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    sub-int v0, v1, v2

    .line 195
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    .line 196
    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/thrift/transport/TTransport;->write([BII)V

    .line 197
    return-void
.end method

.method public writeBool(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->bout:[B

    aput-byte p1, v0, v3

    .line 147
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->bout:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/TTransport;->write([BII)V

    .line 148
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "dub"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI64(J)V

    .line 181
    return-void
.end method

.method public writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V
    .locals 1
    .param p1, "field"    # Lorg/apache/thrift/protocol/TField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 108
    iget-byte v0, p1, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 109
    iget-short v0, p1, Lorg/apache/thrift/protocol/TField;->id:S

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI16(S)V

    .line 110
    return-void
.end method

.method public writeFieldEnd()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public writeFieldStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 116
    return-void
.end method

.method public writeI16(S)V
    .locals 4
    .param p1, "i16"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16out:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 153
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16out:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i16out:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/TTransport;->write([BII)V

    .line 155
    return-void
.end method

.method public writeI32(I)V
    .locals 4
    .param p1, "i32"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32out:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 160
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32out:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32out:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32out:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i32out:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/TTransport;->write([BII)V

    .line 164
    return-void
.end method

.method public writeI64(J)V
    .locals 9
    .param p1, "i64"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 168
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 169
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 171
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    iget-object v1, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->i64out:[B

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/thrift/transport/TTransport;->write([BII)V

    .line 177
    return-void
.end method

.method public writeListBegin(Lorg/apache/thrift/protocol/TList;)V
    .locals 1
    .param p1, "list"    # Lorg/apache/thrift/protocol/TList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 127
    iget-byte v0, p1, Lorg/apache/thrift/protocol/TList;->elemType:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 128
    iget v0, p1, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    .line 129
    return-void
.end method

.method public writeListEnd()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V
    .locals 1
    .param p1, "map"    # Lorg/apache/thrift/protocol/TMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 119
    iget-byte v0, p1, Lorg/apache/thrift/protocol/TMap;->keyType:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 120
    iget-byte v0, p1, Lorg/apache/thrift/protocol/TMap;->valueType:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 121
    iget v0, p1, Lorg/apache/thrift/protocol/TMap;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    .line 122
    return-void
.end method

.method public writeMapEnd()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public writeSetBegin(Lorg/apache/thrift/protocol/TSet;)V
    .locals 1
    .param p1, "set"    # Lorg/apache/thrift/protocol/TSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 134
    iget-byte v0, p1, Lorg/apache/thrift/protocol/TSet;->elemType:B

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeByte(B)V

    .line 135
    iget v0, p1, Lorg/apache/thrift/protocol/TSet;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    .line 136
    return-void
.end method

.method public writeSetEnd()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 186
    .local v0, "dat":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/thrift/protocol/TBinaryProtocol;->writeI32(I)V

    .line 187
    iget-object v2, p0, Lorg/apache/thrift/protocol/TBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/thrift/transport/TTransport;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 188
    .end local v0    # "dat":[B
    :catch_0
    move-exception v1

    .line 189
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/thrift/TException;

    const-string v3, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v2, v3}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V
    .locals 0
    .param p1, "struct"    # Lorg/apache/thrift/protocol/TStruct;

    .prologue
    .line 103
    return-void
.end method

.method public writeStructEnd()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
