.class public Lorg/apache/thrift/transport/TIOStreamTransport;
.super Lorg/apache/thrift/transport/TTransport;
.source "TIOStreamTransport.java"


# instance fields
.field protected inputStream_:Ljava/io/InputStream;

.field protected outputStream_:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/thrift/transport/TTransport;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->inputStream_:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->outputStream_:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lorg/apache/thrift/transport/TTransport;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->inputStream_:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->outputStream_:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->outputStream_:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public read([BII)I
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
    .line 117
    iget-object v2, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->inputStream_:Ljava/io/InputStream;

    if-nez v2, :cond_0

    .line 118
    new-instance v2, Lorg/apache/thrift/transport/TTransportException;

    const/4 v3, 0x1

    const-string v4, "Cannot read from null inputStream"

    invoke-direct {v2, v3, v4}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->inputStream_:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    .local v0, "bytesRead":I
    if-gez v0, :cond_1

    .line 127
    new-instance v2, Lorg/apache/thrift/transport/TTransportException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/thrift/transport/TTransportException;-><init>(I)V

    throw v2

    .line 123
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 124
    .local v1, "iox":Ljava/io/IOException;
    new-instance v2, Lorg/apache/thrift/transport/TTransportException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 129
    .end local v1    # "iox":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    :cond_1
    return v0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/transport/TTransportException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->outputStream_:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lorg/apache/thrift/transport/TTransportException;

    const/4 v2, 0x1

    const-string v3, "Cannot write to null outputStream"

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/thrift/transport/TIOStreamTransport;->outputStream_:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "iox":Ljava/io/IOException;
    new-instance v1, Lorg/apache/thrift/transport/TTransportException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/transport/TTransportException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
