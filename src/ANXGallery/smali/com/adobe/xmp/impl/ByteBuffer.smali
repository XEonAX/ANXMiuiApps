.class public Lcom/adobe/xmp/impl/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field private buffer:[B

.field private encoding:Ljava/lang/String;

.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 39
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 78
    const/16 v0, 0x4000

    .line 79
    .local v0, "chunk":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 80
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "read":I
    if-lez v1, :cond_0

    .line 85
    iget v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 86
    if-ne v1, v0, :cond_0

    .line 88
    iget v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 50
    array-length v0, p1

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 51
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "requestedLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 322
    .local v0, "oldBuf":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    .line 323
    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    .end local v0    # "oldBuf":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 3
    .param p1, "b"    # B

    .prologue
    .line 184
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    .line 185
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    aput-byte p1, v0, v1

    .line 186
    return-void
.end method

.method public append([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 210
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    .line 211
    return-void
.end method

.method public append([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    .line 199
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    .line 201
    return-void
.end method

.method public charAt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 167
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The index exceeds the valid buffer area"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xfe

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 236
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge v0, v3, :cond_1

    .line 239
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    .line 307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    return-object v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_5

    .line 248
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v5

    if-eqz v0, :cond_3

    .line 250
    :cond_2
    const-string v0, "UTF-16BE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    .line 254
    const-string v0, "UTF-32BE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_4
    const-string v0, "UTF-32"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_9

    .line 267
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v5

    if-eqz v0, :cond_6

    .line 269
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_6
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lt v0, v4, :cond_7

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_8

    .line 273
    :cond_7
    const-string v0, "UTF-16LE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_8
    const-string v0, "UTF-32LE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_9
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xef

    if-ne v0, v1, :cond_a

    .line 290
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_a
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_b

    .line 294
    const-string v0, "UTF-16"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_b
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lt v0, v4, :cond_c

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_d

    .line 298
    :cond_c
    const-string v0, "UTF-16"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    :cond_d
    const-string v0, "UTF-32"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return v0
.end method
