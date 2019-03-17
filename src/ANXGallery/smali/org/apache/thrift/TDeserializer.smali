.class public Lorg/apache/thrift/TDeserializer;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final protocol_:Lorg/apache/thrift/protocol/TProtocol;

.field private final trans_:Lorg/apache/thrift/transport/TMemoryInputTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/TBinaryProtocol$Factory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/TDeserializer;-><init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/TProtocolFactory;)V
    .locals 1
    .param p1, "protocolFactory"    # Lorg/apache/thrift/protocol/TProtocolFactory;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-direct {v0}, Lorg/apache/thrift/transport/TMemoryInputTransport;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/TDeserializer;->trans_:Lorg/apache/thrift/transport/TMemoryInputTransport;

    .line 57
    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->trans_:Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/TProtocolFactory;->getProtocol(Lorg/apache/thrift/transport/TTransport;)Lorg/apache/thrift/protocol/TProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/thrift/TDeserializer;->protocol_:Lorg/apache/thrift/protocol/TProtocol;

    .line 58
    return-void
.end method


# virtual methods
.method public deserialize(Lorg/apache/thrift/TBase;[B)V
    .locals 2
    .param p1, "base"    # Lorg/apache/thrift/TBase;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->trans_:Lorg/apache/thrift/transport/TMemoryInputTransport;

    invoke-virtual {v0, p2}, Lorg/apache/thrift/transport/TMemoryInputTransport;->reset([B)V

    .line 69
    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->protocol_:Lorg/apache/thrift/protocol/TProtocol;

    invoke-interface {p1, v0}, Lorg/apache/thrift/TBase;->read(Lorg/apache/thrift/protocol/TProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/apache/thrift/TDeserializer;->protocol_:Lorg/apache/thrift/protocol/TProtocol;

    invoke-virtual {v0}, Lorg/apache/thrift/protocol/TProtocol;->reset()V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/thrift/TDeserializer;->protocol_:Lorg/apache/thrift/protocol/TProtocol;

    invoke-virtual {v1}, Lorg/apache/thrift/protocol/TProtocol;->reset()V

    throw v0
.end method
