.class public abstract Lorg/apache/thrift/transport/TTransport;
.super Ljava/lang/Object;
.source "TTransport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeBuffer(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 153
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferPosition()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesRemainingInBuffer()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, -0x1

    return v0
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/transport/TTransportException;
        }
    .end annotation
.end method

.method public readAll([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "got":I
    const/4 v1, 0x0

    .line 83
    .local v1, "ret":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 84
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/thrift/transport/TTransport;->read([BII)I

    move-result v1

    .line 85
    if-gtz v1, :cond_0

    .line 86
    new-instance v2, Lorg/apache/thrift/transport/TTransportException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read. Remote side has closed. Tried to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, but only got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/thrift/transport/TTransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 90
    :cond_1
    return v0
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/transport/TTransportException;
        }
    .end annotation
.end method
