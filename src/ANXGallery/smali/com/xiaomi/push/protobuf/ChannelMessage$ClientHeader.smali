.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientHeader"
.end annotation


# instance fields
.field private cachedSize:I

.field private chid_:I

.field private cipher_:I

.field private cmd_:Ljava/lang/String;

.field private dirFlag_:I

.field private errCode_:I

.field private errStr_:Ljava/lang/String;

.field private hasChid:Z

.field private hasCipher:Z

.field private hasCmd:Z

.field private hasDirFlag:Z

.field private hasErrCode:Z

.field private hasErrStr:Z

.field private hasId:Z

.field private hasResource:Z

.field private hasServer:Z

.field private hasSubcmd:Z

.field private hasUuid:Z

.field private id_:Ljava/lang/String;

.field private resource_:Ljava/lang/String;

.field private server_:Ljava/lang/String;

.field private subcmd_:Ljava/lang/String;

.field private uuid_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 207
    iput v2, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->chid_:I

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->uuid_:J

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->server_:Ljava/lang/String;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->resource_:Ljava/lang/String;

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cmd_:Ljava/lang/String;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->subcmd_:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->id_:Ljava/lang/String;

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->dirFlag_:I

    .line 343
    iput v2, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cipher_:I

    .line 360
    iput v2, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->errCode_:I

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->errStr_:Ljava/lang/String;

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cachedSize:I

    .line 194
    return-void
.end method


# virtual methods
.method public clearSubcmd()Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasSubcmd:Z

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->subcmd_:Ljava/lang/String;

    .line 303
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cachedSize:I

    if-gez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getSerializedSize()I

    .line 456
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cachedSize:I

    return v0
.end method

.method public getChid()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->chid_:I

    return v0
.end method

.method public getCipher()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cipher_:I

    return v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cmd_:Ljava/lang/String;

    return-object v0
.end method

.method public getDirFlag()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->dirFlag_:I

    return v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->errCode_:I

    return v0
.end method

.method public getErrStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->errStr_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->resource_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasChid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getChid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasUuid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    const/4 v1, 0x2

    .line 468
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getUuid()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasServer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    const/4 v1, 0x3

    .line 472
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    const/4 v1, 0x4

    .line 476
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getResource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCmd()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    const/4 v1, 0x5

    .line 480
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasSubcmd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 483
    const/4 v1, 0x6

    .line 484
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getSubcmd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 487
    const/4 v1, 0x7

    .line 488
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasDirFlag()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 491
    const/16 v1, 0x8

    .line 492
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getDirFlag()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCipher()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 495
    const/16 v1, 0x9

    .line 496
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCipher()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrCode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 499
    const/16 v1, 0xa

    .line 500
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getErrCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrStr()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 503
    const/16 v1, 0xb

    .line 504
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getErrStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_a
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cachedSize:I

    .line 507
    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->server_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->subcmd_:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->uuid_:J

    return-wide v0
.end method

.method public hasChid()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasChid:Z

    return v0
.end method

.method public hasCipher()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCipher:Z

    return v0
.end method

.method public hasCmd()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCmd:Z

    return v0
.end method

.method public hasDirFlag()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasDirFlag:Z

    return v0
.end method

.method public hasErrCode()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrCode:Z

    return v0
.end method

.method public hasErrStr()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrStr:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasId:Z

    return v0
.end method

.method public hasResource()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasResource:Z

    return v0
.end method

.method public hasServer()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasServer:Z

    return v0
.end method

.method public hasSubcmd()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasSubcmd:Z

    return v0
.end method

.method public hasUuid()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasUuid:Z

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
    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 516
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 520
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    :sswitch_0
    return-object p0

    .line 526
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setChid(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 530
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setUuid(J)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 534
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setServer(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 538
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setResource(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 542
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setCmd(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 546
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setSubcmd(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 550
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setId(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 554
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setDirFlag(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 558
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setCipher(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 562
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setErrCode(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 566
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setErrStr(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    goto :goto_0

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public setChid(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasChid:Z

    .line 212
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->chid_:I

    .line 213
    return-object p0
.end method

.method public setCipher(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCipher:Z

    .line 348
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cipher_:I

    .line 349
    return-object p0
.end method

.method public setCmd(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCmd:Z

    .line 280
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->cmd_:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setDirFlag(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasDirFlag:Z

    .line 331
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->dirFlag_:I

    .line 332
    return-object p0
.end method

.method public setErrCode(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrCode:Z

    .line 365
    iput p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->errCode_:I

    .line 366
    return-object p0
.end method

.method public setErrStr(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrStr:Z

    .line 382
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->errStr_:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasId:Z

    .line 314
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->id_:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasResource:Z

    .line 263
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->resource_:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasServer:Z

    .line 246
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->server_:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public setSubcmd(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasSubcmd:Z

    .line 297
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->subcmd_:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setUuid(J)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasUuid:Z

    .line 229
    iput-wide p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->uuid_:J

    .line 230
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
    .line 414
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasChid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getChid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getUuid()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasServer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 426
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasSubcmd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getSubcmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 435
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasDirFlag()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getDirFlag()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 438
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasCipher()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 439
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCipher()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 441
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrCode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getErrCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 444
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrStr()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 445
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getErrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 447
    :cond_a
    return-void
.end method
