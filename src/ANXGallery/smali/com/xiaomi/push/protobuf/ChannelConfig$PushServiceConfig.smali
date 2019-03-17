.class public final Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushServiceConfig"
.end annotation


# instance fields
.field private cachedSize:I

.field private configVersion_:I

.field private connectTimeoutMs_:I

.field private enableDynamicPing_:Z

.field private hasConfigVersion:Z

.field private hasConnectTimeoutMs:Z

.field private hasEnableDynamicPing:Z

.field private hasUseBucketV2:Z

.field private testHosts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useBucketV2_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->configVersion_:I

    .line 32
    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->useBucketV2_:Z

    .line 49
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->connectTimeoutMs_:I

    .line 66
    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->enableDynamicPing_:Z

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->testHosts_:Ljava/util/List;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    return-object v0
.end method


# virtual methods
.method public addTestHosts(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->testHosts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->testHosts_:Ljava/util/List;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->testHosts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->cachedSize:I

    if-gez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getSerializedSize()I

    .line 154
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->cachedSize:I

    return v0
.end method

.method public getConfigVersion()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->configVersion_:I

    return v0
.end method

.method public getConnectTimeoutMs()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->connectTimeoutMs_:I

    return v0
.end method

.method public getEnableDynamicPing()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->enableDynamicPing_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConfigVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/4 v3, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getConfigVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasUseBucketV2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    const/4 v3, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getUseBucketV2()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConnectTimeoutMs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    const/4 v3, 0x3

    .line 170
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getConnectTimeoutMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasEnableDynamicPing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const/4 v3, 0x4

    .line 174
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getEnableDynamicPing()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 177
    :cond_3
    const/4 v0, 0x0

    .line 178
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getTestHostsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 181
    goto :goto_0

    .line 182
    .end local v1    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v2, v0

    .line 183
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getTestHostsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 185
    iput v2, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->cachedSize:I

    .line 186
    return v2
.end method

.method public getTestHostsCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->testHosts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTestHostsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->testHosts_:Ljava/util/List;

    return-object v0
.end method

.method public getUseBucketV2()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->useBucketV2_:Z

    return v0
.end method

.method public hasConfigVersion()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConfigVersion:Z

    return v0
.end method

.method public hasConnectTimeoutMs()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConnectTimeoutMs:Z

    return v0
.end method

.method public hasEnableDynamicPing()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasEnableDynamicPing:Z

    return v0
.end method

.method public hasUseBucketV2()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasUseBucketV2:Z

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
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 195
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    :sswitch_0
    return-object p0

    .line 205
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->setConfigVersion(I)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->setUseBucketV2(Z)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    goto :goto_0

    .line 213
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->setConnectTimeoutMs(I)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    goto :goto_0

    .line 217
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->setEnableDynamicPing(Z)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    goto :goto_0

    .line 221
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->addTestHosts(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setConfigVersion(I)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConfigVersion:Z

    .line 20
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->configVersion_:I

    .line 21
    return-object p0
.end method

.method public setConnectTimeoutMs(I)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConnectTimeoutMs:Z

    .line 54
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->connectTimeoutMs_:I

    .line 55
    return-object p0
.end method

.method public setEnableDynamicPing(Z)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasEnableDynamicPing:Z

    .line 71
    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->enableDynamicPing_:Z

    .line 72
    return-object p0
.end method

.method public setUseBucketV2(Z)Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasUseBucketV2:Z

    .line 37
    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->useBucketV2_:Z

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConfigVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getConfigVersion()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasUseBucketV2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getUseBucketV2()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasConnectTimeoutMs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getConnectTimeoutMs()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->hasEnableDynamicPing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getEnableDynamicPing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;->getTestHostsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "element":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0    # "element":Ljava/lang/String;
    :cond_4
    return-void
.end method
