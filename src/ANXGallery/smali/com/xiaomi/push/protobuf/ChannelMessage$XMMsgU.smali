.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgU"
.end annotation


# instance fields
.field private cachedSize:I

.field private end_:J

.field private force_:Z

.field private hasEnd:Z

.field private hasForce:Z

.field private hasMaxlen:Z

.field private hasStart:Z

.field private hasToken:Z

.field private hasUrl:Z

.field private maxlen_:I

.field private start_:J

.field private token_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1950
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1955
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->url_:Ljava/lang/String;

    .line 1972
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->token_:Ljava/lang/String;

    .line 1989
    iput-wide v2, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->start_:J

    .line 2006
    iput-wide v2, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->end_:J

    .line 2023
    iput-boolean v1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->force_:Z

    .line 2040
    iput v1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->maxlen_:I

    .line 2092
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->cachedSize:I

    .line 1950
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2178
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2095
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->cachedSize:I

    if-gez v0, :cond_0

    .line 2097
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getSerializedSize()I

    .line 2099
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->cachedSize:I

    return v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 2007
    iget-wide v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->end_:J

    return-wide v0
.end method

.method public getForce()Z
    .locals 1

    .prologue
    .line 2024
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->force_:Z

    return v0
.end method

.method public getMaxlen()I
    .locals 1

    .prologue
    .line 2041
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->maxlen_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2104
    const/4 v0, 0x0

    .line 2105
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2106
    const/4 v1, 0x1

    .line 2107
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2110
    const/4 v1, 0x2

    .line 2111
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2113
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2114
    const/4 v1, 0x3

    .line 2115
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getStart()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2117
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2118
    const/4 v1, 0x4

    .line 2119
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getEnd()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2121
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasForce()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2122
    const/4 v1, 0x5

    .line 2123
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getForce()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2125
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasMaxlen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2126
    const/4 v1, 0x6

    .line 2127
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getMaxlen()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2129
    :cond_5
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->cachedSize:I

    .line 2130
    return v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 1990
    iget-wide v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->start_:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 2008
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasEnd:Z

    return v0
.end method

.method public hasForce()Z
    .locals 1

    .prologue
    .line 2025
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasForce:Z

    return v0
.end method

.method public hasMaxlen()Z
    .locals 1

    .prologue
    .line 2042
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasMaxlen:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 1991
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasStart:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasToken:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1957
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasUrl:Z

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
    .line 1947
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2139
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2143
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2144
    :sswitch_0
    return-object p0

    .line 2149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->setUrl(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    goto :goto_0

    .line 2153
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->setToken(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    goto :goto_0

    .line 2157
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->setStart(J)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    goto :goto_0

    .line 2161
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->setEnd(J)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    goto :goto_0

    .line 2165
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->setForce(Z)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    goto :goto_0

    .line 2169
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->setMaxlen(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;

    goto :goto_0

    .line 2139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setEnd(J)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasEnd:Z

    .line 2011
    iput-wide p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->end_:J

    .line 2012
    return-object p0
.end method

.method public setForce(Z)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasForce:Z

    .line 2028
    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->force_:Z

    .line 2029
    return-object p0
.end method

.method public setMaxlen(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasMaxlen:Z

    .line 2045
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->maxlen_:I

    .line 2046
    return-object p0
.end method

.method public setStart(J)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasStart:Z

    .line 1994
    iput-wide p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->start_:J

    .line 1995
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasToken:Z

    .line 1977
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->token_:Ljava/lang/String;

    .line 1978
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasUrl:Z

    .line 1960
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->url_:Ljava/lang/String;

    .line 1961
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2072
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2078
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2079
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getStart()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 2081
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2082
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getEnd()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 2084
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasForce()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2085
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getForce()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2087
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->hasMaxlen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2088
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgU;->getMaxlen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2090
    :cond_5
    return-void
.end method
