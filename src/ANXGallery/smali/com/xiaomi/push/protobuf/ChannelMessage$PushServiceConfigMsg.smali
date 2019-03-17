.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushServiceConfigMsg"
.end annotation


# instance fields
.field private cachedSize:I

.field private clientVersion_:I

.field private cloudVersion_:I

.field private dots_:I

.field private fetchBucket_:Z

.field private hasClientVersion:Z

.field private hasCloudVersion:Z

.field private hasDots:Z

.field private hasFetchBucket:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->fetchBucket_:Z

    .line 32
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->clientVersion_:I

    .line 49
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cloudVersion_:I

    .line 66
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->dots_:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getSerializedSize()I

    .line 117
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cachedSize:I

    return v0
.end method

.method public getClientVersion()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->clientVersion_:I

    return v0
.end method

.method public getCloudVersion()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cloudVersion_:I

    return v0
.end method

.method public getDots()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->dots_:I

    return v0
.end method

.method public getFetchBucket()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->fetchBucket_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasFetchBucket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getFetchBucket()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasClientVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x3

    .line 129
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getClientVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasCloudVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x4

    .line 133
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getCloudVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasDots()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const/4 v1, 0x5

    .line 137
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getDots()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_3
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cachedSize:I

    .line 140
    return v0
.end method

.method public hasClientVersion()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasClientVersion:Z

    return v0
.end method

.method public hasCloudVersion()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasCloudVersion:Z

    return v0
.end method

.method public hasDots()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasDots:Z

    return v0
.end method

.method public hasFetchBucket()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasFetchBucket:Z

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
    .line 7
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 149
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->setFetchBucket(Z)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->setClientVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->setCloudVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->setDots(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method public setClientVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasClientVersion:Z

    .line 37
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->clientVersion_:I

    .line 38
    return-object p0
.end method

.method public setCloudVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasCloudVersion:Z

    .line 54
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->cloudVersion_:I

    .line 55
    return-object p0
.end method

.method public setDots(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasDots:Z

    .line 71
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->dots_:I

    .line 72
    return-object p0
.end method

.method public setFetchBucket(Z)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasFetchBucket:Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->fetchBucket_:Z

    .line 21
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
    .line 96
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasFetchBucket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getFetchBucket()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getClientVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasCloudVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getCloudVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->hasDots()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->getDots()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 108
    :cond_3
    return-void
.end method
