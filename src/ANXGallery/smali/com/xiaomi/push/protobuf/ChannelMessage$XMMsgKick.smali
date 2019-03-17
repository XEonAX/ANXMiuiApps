.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgKick"
.end annotation


# instance fields
.field private cachedSize:I

.field private desc_:Ljava/lang/String;

.field private hasDesc:Z

.field private hasReason:Z

.field private hasType:Z

.field private reason_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1800
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->type_:Ljava/lang/String;

    .line 1817
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->reason_:Ljava/lang/String;

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->desc_:Ljava/lang/String;

    .line 1874
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->cachedSize:I

    .line 1795
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1936
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->cachedSize:I

    if-gez v0, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getSerializedSize()I

    .line 1881
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->cachedSize:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->desc_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->reason_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    const/4 v1, 0x1

    .line 1889
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1891
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1892
    const/4 v1, 0x2

    .line 1893
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1895
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasDesc()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1896
    const/4 v1, 0x3

    .line 1897
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1899
    :cond_2
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->cachedSize:I

    .line 1900
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDesc()Z
    .locals 1

    .prologue
    .line 1836
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasDesc:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 1819
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasReason:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasType:Z

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1792
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1908
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1909
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1913
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1914
    :sswitch_0
    return-object p0

    .line 1919
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->setType(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    goto :goto_0

    .line 1923
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->setReason(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    goto :goto_0

    .line 1927
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->setDesc(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;

    goto :goto_0

    .line 1909
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setDesc(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasDesc:Z

    .line 1839
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->desc_:Ljava/lang/String;

    .line 1840
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasReason:Z

    .line 1822
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->reason_:Ljava/lang/String;

    .line 1823
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasType:Z

    .line 1805
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->type_:Ljava/lang/String;

    .line 1806
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1866
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1867
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1869
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->hasDesc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1870
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgKick;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1872
    :cond_2
    return-void
.end method
