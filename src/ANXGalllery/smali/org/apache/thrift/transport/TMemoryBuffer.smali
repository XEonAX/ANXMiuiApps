.class public Lorg/apache/thrift/transport/TMemoryBuffer;
.super Lorg/apache/thrift/transport/TTransport;
.source "TMemoryBuffer.java"


# instance fields
.field private arr_:Lorg/apache/thrift/TByteArrayOutputStream;

.field private pos_:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/thrift/transport/TTransport;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/thrift/TByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->arr_:Lorg/apache/thrift/TByteArrayOutputStream;

    .line 36
    return-void
.end method


# virtual methods
.method public length()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->arr_:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/thrift/TByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 55
    iget-object v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->arr_:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v2}, Lorg/apache/thrift/TByteArrayOutputStream;->get()[B

    move-result-object v1

    .line 56
    .local v1, "src":[B
    iget-object v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->arr_:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v2}, Lorg/apache/thrift/TByteArrayOutputStream;->len()I

    move-result v2

    iget v3, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->pos_:I

    sub-int/2addr v2, v3

    if-le p3, v2, :cond_1

    iget-object v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->arr_:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v2}, Lorg/apache/thrift/TByteArrayOutputStream;->len()I

    move-result v2

    iget v3, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->pos_:I

    sub-int v0, v2, v3

    .line 57
    .local v0, "amtToRead":I
    :goto_0
    if-lez v0, :cond_0

    .line 58
    iget v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->pos_:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->pos_:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->pos_:I

    .line 61
    :cond_0
    return v0

    .end local v0    # "amtToRead":I
    :cond_1
    move v0, p3

    .line 56
    goto :goto_0
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/thrift/transport/TMemoryBuffer;->arr_:Lorg/apache/thrift/TByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/TByteArrayOutputStream;->write([BII)V

    .line 67
    return-void
.end method
