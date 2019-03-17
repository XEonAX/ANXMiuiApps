.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgConn"
.end annotation


# instance fields
.field private andver_:I

.field private cachedSize:I

.field private connpt_:Ljava/lang/String;

.field private hasAndver:Z

.field private hasConnpt:Z

.field private hasHost:Z

.field private hasLocale:Z

.field private hasModel:Z

.field private hasOs:Z

.field private hasPsc:Z

.field private hasSdk:Z

.field private hasUdid:Z

.field private hasVersion:Z

.field private host_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private model_:Ljava/lang/String;

.field private os_:Ljava/lang/String;

.field private psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

.field private sdk_:I

.field private udid_:Ljava/lang/String;

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 594
    iput v1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->version_:I

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->model_:Ljava/lang/String;

    .line 628
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->os_:Ljava/lang/String;

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->udid_:Ljava/lang/String;

    .line 662
    iput v1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->sdk_:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->connpt_:Ljava/lang/String;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->host_:Ljava/lang/String;

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->locale_:Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .line 750
    iput v1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->andver_:I

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->cachedSize:I

    .line 589
    return-void
.end method


# virtual methods
.method public getAndver()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->andver_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->cachedSize:I

    if-gez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getSerializedSize()I

    .line 825
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->cachedSize:I

    return v0
.end method

.method public getConnpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->connpt_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->os_:Ljava/lang/String;

    return-object v0
.end method

.method public getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    return-object v0
.end method

.method public getSdk()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->sdk_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x1

    .line 833
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    const/4 v1, 0x2

    .line 837
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 839
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasOs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    const/4 v1, 0x3

    .line 841
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getOs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasUdid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 844
    const/4 v1, 0x4

    .line 845
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasSdk()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    const/4 v1, 0x5

    .line 849
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getSdk()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasConnpt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 852
    const/4 v1, 0x6

    .line 853
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getConnpt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasHost()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 856
    const/4 v1, 0x7

    .line 857
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 860
    const/16 v1, 0x8

    .line 861
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasPsc()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 864
    const/16 v1, 0x9

    .line 865
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasAndver()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 868
    const/16 v1, 0xa

    .line 869
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getAndver()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_9
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->cachedSize:I

    .line 872
    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->udid_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->version_:I

    return v0
.end method

.method public hasAndver()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasAndver:Z

    return v0
.end method

.method public hasConnpt()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasConnpt:Z

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasHost:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasLocale:Z

    return v0
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasModel:Z

    return v0
.end method

.method public hasOs()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasOs:Z

    return v0
.end method

.method public hasPsc()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasPsc:Z

    return v0
.end method

.method public hasSdk()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasSdk:Z

    return v0
.end method

.method public hasUdid()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasUdid:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasVersion:Z

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
    .line 586
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 881
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 885
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 886
    :sswitch_0
    return-object p0

    .line 891
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 895
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setModel(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 899
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setOs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 903
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setUdid(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 907
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setSdk(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 911
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setConnpt(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 915
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 919
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setLocale(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 923
    :sswitch_9
    new-instance v1, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    invoke-direct {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;-><init>()V

    .line 924
    .local v1, "value":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 925
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setPsc(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 929
    .end local v1    # "value":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setAndver(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    goto :goto_0

    .line 881
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method public setAndver(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasAndver:Z

    .line 755
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->andver_:I

    .line 756
    return-object p0
.end method

.method public setConnpt(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasConnpt:Z

    .line 684
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->connpt_:Ljava/lang/String;

    .line 685
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasHost:Z

    .line 701
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->host_:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasLocale:Z

    .line 718
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->locale_:Ljava/lang/String;

    .line 719
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasModel:Z

    .line 616
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->model_:Ljava/lang/String;

    .line 617
    return-object p0
.end method

.method public setOs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasOs:Z

    .line 633
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->os_:Ljava/lang/String;

    .line 634
    return-object p0
.end method

.method public setPsc(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 737
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasPsc:Z

    .line 738
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->psc_:Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .line 739
    return-object p0
.end method

.method public setSdk(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasSdk:Z

    .line 667
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->sdk_:I

    .line 668
    return-object p0
.end method

.method public setUdid(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasUdid:Z

    .line 650
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->udid_:Ljava/lang/String;

    .line 651
    return-object p0
.end method

.method public setVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasVersion:Z

    .line 599
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->version_:I

    .line 600
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
    .line 786
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasUdid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 796
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasSdk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 799
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getSdk()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasConnpt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 802
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getConnpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 804
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasHost()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 805
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 807
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 810
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasPsc()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 811
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 813
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->hasAndver()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 814
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->getAndver()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 816
    :cond_9
    return-void
.end method
