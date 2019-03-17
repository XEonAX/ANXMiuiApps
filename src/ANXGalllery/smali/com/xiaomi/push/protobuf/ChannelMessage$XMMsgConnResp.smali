.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgConnResp"
.end annotation


# instance fields
.field private cachedSize:I

.field private challenge_:Ljava/lang/String;

.field private hasChallenge:Z

.field private hasHost:Z

.field private hasPsc:Z

.field private host_:Ljava/lang/String;

.field private psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->challenge_:Ljava/lang/String;

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->host_:Ljava/lang/String;

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .line 1034
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->cachedSize:I

    .line 952
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1098
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->cachedSize:I

    if-gez v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getSerializedSize()I

    .line 1041
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->cachedSize:I

    return v0
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->challenge_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasChallenge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    const/4 v1, 0x1

    .line 1049
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasHost()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    const/4 v1, 0x2

    .line 1053
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasPsc()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    const/4 v1, 0x3

    .line 1057
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1059
    :cond_2
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->cachedSize:I

    .line 1060
    return v0
.end method

.method public hasChallenge()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasChallenge:Z

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasHost:Z

    return v0
.end method

.method public hasPsc()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasPsc:Z

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
    .line 949
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1069
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1073
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    :sswitch_0
    return-object p0

    .line 1079
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->setChallenge(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    goto :goto_0

    .line 1083
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    goto :goto_0

    .line 1087
    :sswitch_3
    new-instance v1, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    invoke-direct {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;-><init>()V

    .line 1088
    .local v1, "value":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1089
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->setPsc(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    goto :goto_0

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setChallenge(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasChallenge:Z

    .line 962
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->challenge_:Ljava/lang/String;

    .line 963
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasHost:Z

    .line 979
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->host_:Ljava/lang/String;

    .line 980
    return-object p0
.end method

.method public setPsc(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    .locals 1
    .param p1, "value"    # Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasPsc:Z

    .line 999
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .line 1000
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
    .line 1023
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasPsc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1032
    :cond_2
    return-void
.end method
