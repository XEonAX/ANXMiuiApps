.class public final Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChannelMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XMMsgBind"
.end annotation


# instance fields
.field private cachedSize:I

.field private clientAttrs_:Ljava/lang/String;

.field private cloudAttrs_:Ljava/lang/String;

.field private hasClientAttrs:Z

.field private hasCloudAttrs:Z

.field private hasKick:Z

.field private hasMethod:Z

.field private hasSig:Z

.field private hasToken:Z

.field private kick_:Ljava/lang/String;

.field private method_:Ljava/lang/String;

.field private sig_:Ljava/lang/String;

.field private token_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1238
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1243
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->token_:Ljava/lang/String;

    .line 1260
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->kick_:Ljava/lang/String;

    .line 1277
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->method_:Ljava/lang/String;

    .line 1294
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->clientAttrs_:Ljava/lang/String;

    .line 1311
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cloudAttrs_:Ljava/lang/String;

    .line 1328
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->sig_:Ljava/lang/String;

    .line 1380
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cachedSize:I

    .line 1238
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cachedSize:I

    if-gez v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getSerializedSize()I

    .line 1387
    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cachedSize:I

    return v0
.end method

.method public getClientAttrs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->clientAttrs_:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudAttrs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cloudAttrs_:Ljava/lang/String;

    return-object v0
.end method

.method public getKick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->kick_:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->method_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1397
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasKick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    const/4 v1, 0x2

    .line 1399
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getKick()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasMethod()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1402
    const/4 v1, 0x3

    .line 1403
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasClientAttrs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1406
    const/4 v1, 0x4

    .line 1407
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getClientAttrs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasCloudAttrs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1410
    const/4 v1, 0x5

    .line 1411
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getCloudAttrs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasSig()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1414
    const/4 v1, 0x6

    .line 1415
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getSig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1417
    :cond_5
    iput v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cachedSize:I

    .line 1418
    return v0
.end method

.method public getSig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->sig_:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientAttrs()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasClientAttrs:Z

    return v0
.end method

.method public hasCloudAttrs()Z
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasCloudAttrs:Z

    return v0
.end method

.method public hasKick()Z
    .locals 1

    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasKick:Z

    return v0
.end method

.method public hasMethod()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasMethod:Z

    return v0
.end method

.method public hasSig()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasSig:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasToken:Z

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
    .line 1235
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1427
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1431
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1432
    :sswitch_0
    return-object p0

    .line 1437
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setToken(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto :goto_0

    .line 1441
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setKick(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto :goto_0

    .line 1445
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setMethod(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto :goto_0

    .line 1449
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setClientAttrs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto :goto_0

    .line 1453
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setCloudAttrs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto :goto_0

    .line 1457
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setSig(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setClientAttrs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasClientAttrs:Z

    .line 1299
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->clientAttrs_:Ljava/lang/String;

    .line 1300
    return-object p0
.end method

.method public setCloudAttrs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasCloudAttrs:Z

    .line 1316
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->cloudAttrs_:Ljava/lang/String;

    .line 1317
    return-object p0
.end method

.method public setKick(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasKick:Z

    .line 1265
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->kick_:Ljava/lang/String;

    .line 1266
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasMethod:Z

    .line 1282
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->method_:Ljava/lang/String;

    .line 1283
    return-object p0
.end method

.method public setSig(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasSig:Z

    .line 1333
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->sig_:Ljava/lang/String;

    .line 1334
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasToken:Z

    .line 1248
    iput-object p1, p0, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->token_:Ljava/lang/String;

    .line 1249
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
    .line 1360
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasKick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1364
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getKick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasMethod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1369
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasClientAttrs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1370
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getClientAttrs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1372
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasCloudAttrs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1373
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getCloudAttrs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1375
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->hasSig()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1376
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->getSig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1378
    :cond_5
    return-void
.end method
