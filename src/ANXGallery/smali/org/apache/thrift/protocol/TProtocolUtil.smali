.class public Lorg/apache/thrift/protocol/TProtocolUtil;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static maxSkipDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7fffffff

    sput v0, Lorg/apache/thrift/protocol/TProtocolUtil;->maxSkipDepth:I

    return-void
.end method

.method public static skip(Lorg/apache/thrift/protocol/TProtocol;B)V
    .locals 1
    .param p0, "prot"    # Lorg/apache/thrift/protocol/TProtocol;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 60
    sget v0, Lorg/apache/thrift/protocol/TProtocolUtil;->maxSkipDepth:I

    invoke-static {p0, p1, v0}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;BI)V

    .line 61
    return-void
.end method

.method public static skip(Lorg/apache/thrift/protocol/TProtocol;BI)V
    .locals 7
    .param p0, "prot"    # Lorg/apache/thrift/protocol/TProtocol;
    .param p1, "type"    # B
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 73
    if-gtz p2, :cond_0

    .line 74
    new-instance v5, Lorg/apache/thrift/TException;

    const-string v6, "Maximum skip depth exceeded"

    invoke-direct {v5, v6}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readByte()B

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readI16()S

    goto :goto_0

    .line 94
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    goto :goto_0

    .line 99
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    goto :goto_0

    .line 104
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readDouble()D

    goto :goto_0

    .line 109
    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readBinary()Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 114
    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 116
    :goto_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 117
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v5, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v5, :cond_1

    .line 123
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    goto :goto_0

    .line 120
    :cond_1
    iget-byte v5, v0, Lorg/apache/thrift/protocol/TField;->type:B

    add-int/lit8 v6, p2, -0x1

    invoke-static {p0, v5, v6}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;BI)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_1

    .line 128
    .end local v0    # "field":Lorg/apache/thrift/protocol/TField;
    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v3

    .line 129
    .local v3, "map":Lorg/apache/thrift/protocol/TMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v5, v3, Lorg/apache/thrift/protocol/TMap;->size:I

    if-ge v1, v5, :cond_2

    .line 130
    iget-byte v5, v3, Lorg/apache/thrift/protocol/TMap;->keyType:B

    add-int/lit8 v6, p2, -0x1

    invoke-static {p0, v5, v6}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;BI)V

    .line 131
    iget-byte v5, v3, Lorg/apache/thrift/protocol/TMap;->valueType:B

    add-int/lit8 v6, p2, -0x1

    invoke-static {p0, v5, v6}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;BI)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    :cond_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    .end local v3    # "map":Lorg/apache/thrift/protocol/TMap;
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readSetBegin()Lorg/apache/thrift/protocol/TSet;

    move-result-object v4

    .line 139
    .local v4, "set":Lorg/apache/thrift/protocol/TSet;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v5, v4, Lorg/apache/thrift/protocol/TSet;->size:I

    if-ge v1, v5, :cond_3

    .line 140
    iget-byte v5, v4, Lorg/apache/thrift/protocol/TSet;->elemType:B

    add-int/lit8 v6, p2, -0x1

    invoke-static {p0, v5, v6}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;BI)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readSetEnd()V

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    .end local v4    # "set":Lorg/apache/thrift/protocol/TSet;
    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 148
    .local v2, "list":Lorg/apache/thrift/protocol/TList;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v5, :cond_4

    .line 149
    iget-byte v5, v2, Lorg/apache/thrift/protocol/TList;->elemType:B

    add-int/lit8 v6, p2, -0x1

    invoke-static {p0, v5, v6}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;BI)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 151
    :cond_4
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
