.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgP"
.end annotation


# instance fields
.field private cachedSize:I

.field private cookie_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasCookie:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2192
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2197
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cookie_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 2229
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cachedSize:I

    .line 2192
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2275
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2232
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cachedSize:I

    if-gez v0, :cond_0

    .line 2234
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->getSerializedSize()I

    .line 2236
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cachedSize:I

    return v0
.end method

.method public getCookie()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cookie_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2241
    const/4 v0, 0x0

    .line 2242
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->hasCookie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    const/4 v1, 0x1

    .line 2244
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->getCookie()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    :cond_0
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cachedSize:I

    .line 2247
    return v0
.end method

.method public hasCookie()Z
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->hasCookie:Z

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
    .line 2189
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2256
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2260
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2261
    :sswitch_0
    return-object p0

    .line 2266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->setCookie(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;

    goto :goto_0

    .line 2256
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setCookie(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 2201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->hasCookie:Z

    .line 2202
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->cookie_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 2203
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
    .line 2224
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->hasCookie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgP;->getCookie()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 2227
    :cond_0
    return-void
.end method
