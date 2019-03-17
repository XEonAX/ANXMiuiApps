.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgBindResp"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorDesc_:Ljava/lang/String;

.field private errorReason_:Ljava/lang/String;

.field private errorType_:Ljava/lang/String;

.field private hasErrorDesc:Z

.field private hasErrorReason:Z

.field private hasErrorType:Z

.field private hasResult:Z

.field private result_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1480
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->result_:Z

    .line 1502
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorType_:Ljava/lang/String;

    .line 1519
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorReason_:Ljava/lang/String;

    .line 1536
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorDesc_:Ljava/lang/String;

    .line 1580
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->cachedSize:I

    .line 1480
    return-void
.end method

.method public static parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1650
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    check-cast v0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1583
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->cachedSize:I

    if-gez v0, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getSerializedSize()I

    .line 1587
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->cachedSize:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorDesc_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorType_:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->result_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    const/4 v1, 0x1

    .line 1595
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getResult()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1597
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1598
    const/4 v1, 0x2

    .line 1599
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1601
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorReason()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1602
    const/4 v1, 0x3

    .line 1603
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1605
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorDesc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1606
    const/4 v1, 0x4

    .line 1607
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1609
    :cond_3
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->cachedSize:I

    .line 1610
    return v0
.end method

.method public hasErrorDesc()Z
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorDesc:Z

    return v0
.end method

.method public hasErrorReason()Z
    .locals 1

    .prologue
    .line 1521
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorReason:Z

    return v0
.end method

.method public hasErrorType()Z
    .locals 1

    .prologue
    .line 1504
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorType:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 1487
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasResult:Z

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
    .line 1477
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1619
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1623
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    :sswitch_0
    return-object p0

    .line 1629
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->setResult(Z)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    goto :goto_0

    .line 1633
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->setErrorType(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    goto :goto_0

    .line 1637
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->setErrorReason(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    goto :goto_0

    .line 1641
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->setErrorDesc(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;

    goto :goto_0

    .line 1619
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setErrorDesc(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorDesc:Z

    .line 1541
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorDesc_:Ljava/lang/String;

    .line 1542
    return-object p0
.end method

.method public setErrorReason(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorReason:Z

    .line 1524
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorReason_:Ljava/lang/String;

    .line 1525
    return-object p0
.end method

.method public setErrorType(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorType:Z

    .line 1507
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->errorType_:Ljava/lang/String;

    .line 1508
    return-object p0
.end method

.method public setResult(Z)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasResult:Z

    .line 1490
    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->result_:Z

    .line 1491
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
    .line 1566
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getResult()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1570
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1572
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorReason()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1573
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1575
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->hasErrorDesc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1576
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBindResp;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1578
    :cond_3
    return-void
.end method
