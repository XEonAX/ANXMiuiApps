.class public Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;
.super Lorg/apache/thrift/protocol/TBinaryProtocol;
.source "XmPushTBinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/thrift/protocol/XmPushTBinaryProtocol$Factory;
    }
.end annotation


# static fields
.field private static MAX_THRIFT_BINARY_SIZE:I

.field private static MAX_THRIFT_LIST_SIZE:I

.field private static MAX_THRIFT_MAP_SIZE:I

.field private static MAX_THRIFT_SET_SIZE:I

.field private static MAX_THRIFT_STRING_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 50
    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_MAP_SIZE:I

    .line 51
    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_LIST_SIZE:I

    .line 52
    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_SET_SIZE:I

    .line 53
    const/high16 v0, 0xa00000

    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_STRING_SIZE:I

    .line 54
    const/high16 v0, 0x6400000

    sput v0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_BINARY_SIZE:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/TTransport;ZZ)V
    .locals 0
    .param p1, "trans"    # Lorg/apache/thrift/transport/TTransport;
    .param p2, "strictRead"    # Z
    .param p3, "strictWrite"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/thrift/protocol/TBinaryProtocol;-><init>(Lorg/apache/thrift/transport/TTransport;ZZ)V

    .line 25
    return-void
.end method


# virtual methods
.method public readBinary()Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readI32()I

    move-result v2

    .line 110
    .local v2, "size":I
    sget v3, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_BINARY_SIZE:I

    if-le v2, v3, :cond_0

    .line 111
    new-instance v3, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thrift binary size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->checkReadLength(I)V

    .line 115
    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 116
    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v4}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v4

    invoke-static {v3, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 117
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3, v2}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V

    .line 123
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 121
    :cond_1
    new-array v1, v2, [B

    .line 122
    .local v1, "buf":[B
    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lorg/apache/thrift/transport/TTransport;->readAll([BII)I

    .line 123
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public readListBegin()Lorg/apache/thrift/protocol/TList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v1

    .line 70
    .local v1, "type":B
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readI32()I

    move-result v0

    .line 71
    .local v0, "size":I
    sget v2, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_LIST_SIZE:I

    if-le v0, v2, :cond_0

    .line 72
    new-instance v2, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thrift list size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    new-instance v2, Lorg/apache/thrift/protocol/TList;

    invoke-direct {v2, v1, v0}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    return-object v2
.end method

.method public readMapBegin()Lorg/apache/thrift/protocol/TMap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v0

    .line 59
    .local v0, "keyType":B
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v2

    .line 60
    .local v2, "valueType":B
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readI32()I

    move-result v1

    .line 61
    .local v1, "size":I
    sget v3, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_MAP_SIZE:I

    if-le v1, v3, :cond_0

    .line 62
    new-instance v3, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thrift map size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    new-instance v3, Lorg/apache/thrift/protocol/TMap;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    return-object v3
.end method

.method public readSetBegin()Lorg/apache/thrift/protocol/TSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readByte()B

    move-result v1

    .line 80
    .local v1, "type":B
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readI32()I

    move-result v0

    .line 81
    .local v0, "size":I
    sget v2, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_SET_SIZE:I

    if-le v0, v2, :cond_0

    .line 82
    new-instance v2, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thrift set size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 84
    :cond_0
    new-instance v2, Lorg/apache/thrift/protocol/TSet;

    invoke-direct {v2, v1, v0}, Lorg/apache/thrift/protocol/TSet;-><init>(BI)V

    return-object v2
.end method

.method public readString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readI32()I

    move-result v2

    .line 90
    .local v2, "size":I
    sget v3, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->MAX_THRIFT_STRING_SIZE:I

    if-le v2, v3, :cond_0

    .line 91
    new-instance v3, Lorg/apache/thrift/protocol/TProtocolException;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thrift string size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 93
    :cond_0
    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBytesRemainingInBuffer()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 95
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/TTransport;->getBuffer()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v4}, Lorg/apache/thrift/transport/TTransport;->getBufferPosition()I

    move-result v4

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 96
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->trans_:Lorg/apache/thrift/transport/TTransport;

    invoke-virtual {v3, v2}, Lorg/apache/thrift/transport/TTransport;->consumeBuffer(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/thrift/TException;

    const-string v4, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v3, v4}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/thrift/protocol/XmPushTBinaryProtocol;->readStringBody(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
