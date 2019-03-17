.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgNotify"
.end annotation


# instance fields
.field private cachedSize:I

.field private errCode_:I

.field private errStr_:Ljava/lang/String;

.field private hasErrCode:Z

.field private hasErrStr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1117
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->errCode_:I

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->errStr_:Ljava/lang/String;

    .line 1170
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->cachedSize:I

    .line 1112
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1224
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->cachedSize:I

    if-gez v0, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getSerializedSize()I

    .line 1177
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->cachedSize:I

    return v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->errCode_:I

    return v0
.end method

.method public getErrStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->errStr_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    const/4 v1, 0x1

    .line 1185
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getErrCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1187
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrStr()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1188
    const/4 v1, 0x2

    .line 1189
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getErrStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1191
    :cond_1
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->cachedSize:I

    .line 1192
    return v0
.end method

.method public hasErrCode()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrCode:Z

    return v0
.end method

.method public hasErrStr()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrStr:Z

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
    .line 1109
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1201
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1205
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1206
    :sswitch_0
    return-object p0

    .line 1211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->setErrCode(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    goto :goto_0

    .line 1215
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->setErrStr(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;

    goto :goto_0

    .line 1201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setErrCode(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrCode:Z

    .line 1122
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->errCode_:I

    .line 1123
    return-object p0
.end method

.method public setErrStr(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrStr:Z

    .line 1139
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->errStr_:Ljava/lang/String;

    .line 1140
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
    .line 1162
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getErrCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->hasErrStr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgNotify;->getErrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_1
    return-void
.end method
