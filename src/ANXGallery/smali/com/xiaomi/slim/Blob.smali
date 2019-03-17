.class public Lcom/xiaomi/slim/Blob;
.super Ljava/lang/Object;
.source "Blob.java"


# static fields
.field private static final EMPTY:[B

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

.field mPackageName:Ljava/lang/String;

.field private mPayload:[B

.field private mPayloadType:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/slim/Blob;->prefix:Ljava/lang/String;

    .line 164
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/slim/Blob;->id:J

    .line 170
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/xiaomi/slim/Blob;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/slim/Blob;->mPayloadType:S

    .line 172
    sget-object v0, Lcom/xiaomi/slim/Blob;->EMPTY:[B

    iput-object v0, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/slim/Blob;->mPackageName:Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;S[B)V
    .locals 1
    .param p1, "header"    # Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .param p2, "playloadType"    # S
    .param p3, "payload"    # [B

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/xiaomi/slim/Blob;->mPayloadType:S

    .line 172
    sget-object v0, Lcom/xiaomi/slim/Blob;->EMPTY:[B

    iput-object v0, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/slim/Blob;->mPackageName:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 182
    iput-short p2, p0, Lcom/xiaomi/slim/Blob;->mPayloadType:S

    .line 183
    iput-object p3, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    .line 184
    return-void
.end method

.method public static from(Lcom/xiaomi/smack/packet/Packet;Ljava/lang/String;)Lcom/xiaomi/slim/Blob;
    .locals 6
    .param p0, "packet"    # Lcom/xiaomi/smack/packet/Packet;
    .param p1, "security"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 374
    new-instance v0, Lcom/xiaomi/slim/Blob;

    invoke-direct {v0}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 375
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    const/4 v1, 0x1

    .line 377
    .local v1, "chid":I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 383
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/slim/Blob;->setPacketID(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/slim/Blob;->setFrom(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Packet;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/slim/Blob;->setPackageName(Ljava/lang/String;)V

    .line 386
    const-string v3, "XMLMSG"

    invoke-virtual {v0, v3, v5}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/xiaomi/slim/Blob;->setPayloadType(S)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    :goto_1
    return-object v0

    .line 378
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob parse chid err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x2

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/xiaomi/slim/Blob;->setPayloadType(S)V

    .line 394
    const-string v3, "SECMSG"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 396
    :catch_1
    move-exception v2

    .line 397
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob setPayload err\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static from(Ljava/nio/ByteBuffer;)Lcom/xiaomi/slim/Blob;
    .locals 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 438
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 439
    .local v6, "payloadType":S
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    .line 440
    .local v2, "headSize":S
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 442
    .local v5, "payloadSize":I
    new-instance v3, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-direct {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;-><init>()V

    .line 443
    .local v3, "header":Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v3, v7, v8, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->mergeFrom([BII)Lcom/google/protobuf/micro/MessageMicro;

    .line 444
    new-array v4, v5, [B

    .line 445
    .local v4, "payload":[B
    add-int/lit8 v7, v2, 0x8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 446
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 447
    new-instance v7, Lcom/xiaomi/slim/Blob;

    invoke-direct {v7, v3, v6, v4}, Lcom/xiaomi/slim/Blob;-><init>(Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;S[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 448
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "headSize":S
    .end local v3    # "header":Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    .end local v4    # "payload":[B
    .end local v5    # "payloadSize":I
    .end local v6    # "payloadType":S
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read Blob err :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 451
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Malformed Input"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 241
    const-class v1, Lcom/xiaomi/slim/Blob;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/slim/Blob;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/slim/Blob;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/slim/Blob;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getChid()I

    move-result v0

    return v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v2, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCipher()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaomi/push/service/RC4Cryption;->generateKeyForRC4(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 357
    .local v1, "key":[B
    iget-object v2, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/RC4Cryption;->encrypt([B[B)[B

    move-result-object v0

    .line 363
    .end local v1    # "key":[B
    :goto_0
    return-object v0

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCipher()I

    move-result v2

    if-nez v2, :cond_1

    .line 360
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    goto :goto_0

    .line 362
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknow cipher = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCipher()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    goto :goto_0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getErrCode()I

    move-result v0

    return v0
.end method

.method public getErrStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getErrStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getUuid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 321
    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getId()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "id":Ljava/lang/String;
    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 261
    :goto_0
    return-object v1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-static {}, Lcom/xiaomi/slim/Blob;->nextID()Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setId(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    :cond_1
    move-object v1, v0

    .line 261
    goto :goto_0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    return-object v0
.end method

.method public getPayloadType()S
    .locals 1

    .prologue
    .line 455
    iget-short v0, p0, Lcom/xiaomi/slim/Blob;->mPayloadType:S

    return v0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getSerializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSubcmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getSubcmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasErr()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->hasErrCode()Z

    move-result v0

    return v0
.end method

.method public setChannelId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setChid(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 212
    return-void
.end method

.method public setCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "subCmd"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setCmd(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 196
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->clearSubcmd()Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setSubcmd(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 200
    :cond_1
    return-void
.end method

.method public setFrom(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # J
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "resource"    # Ljava/lang/String;

    .prologue
    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setUuid(J)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 305
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setServer(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 309
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setResource(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 312
    :cond_2
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 9
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    const-string v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "pos":I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 282
    .local v6, "uuid":J
    const-string v5, "/"

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 283
    .local v4, "slash":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "server":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "resource":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setUuid(J)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 286
    iget-object v5, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v5, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setServer(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 287
    iget-object v5, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v5, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setResource(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "pos":I
    .end local v2    # "resource":Ljava/lang/String;
    .end local v3    # "server":Ljava/lang/String;
    .end local v4    # "slash":I
    .end local v6    # "uuid":J
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local v1    # "pos":I
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Blob parse user err "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xiaomi/slim/Blob;->mPackageName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 1
    .param p1, "packetID"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setId(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 220
    return-void
.end method

.method public setPayload([BLjava/lang/String;)V
    .locals 3
    .param p1, "payload"    # [B
    .param p2, "security"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setCipher(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 336
    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/xiaomi/push/service/RC4Cryption;->generateKeyForRC4(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 337
    .local v0, "key":[B
    invoke-static {v0, p1}, Lcom/xiaomi/push/service/RC4Cryption;->encrypt([B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    .line 342
    .end local v0    # "key":[B
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->setCipher(I)Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    .line 340
    iput-object p1, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    goto :goto_0
.end method

.method public setPayloadType(S)V
    .locals 0
    .param p1, "type"    # S

    .prologue
    .line 459
    iput-short p1, p0, Lcom/xiaomi/slim/Blob;->mPayloadType:S

    .line 460
    return-void
.end method

.method toByteArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getSerializedSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 416
    :cond_0
    iget-short v1, p0, Lcom/xiaomi/slim/Blob;->mPayloadType:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 417
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCachedSize()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 418
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 421
    .local v0, "offset":I
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCachedSize()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->toByteArray([BII)V

    .line 422
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mHeader:Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;

    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$ClientHeader;->getCachedSize()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    iget-object v1, p0, Lcom/xiaomi/slim/Blob;->mPayload:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 426
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob [chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getPayloadType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Lcom/xiaomi/slim/Blob;->getFullUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    return-object v0
.end method
