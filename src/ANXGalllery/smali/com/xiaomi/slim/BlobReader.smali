.class Lcom/xiaomi/slim/BlobReader;
.super Ljava/lang/Object;
.source "BlobReader.java"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mCRCBuf:Ljava/nio/ByteBuffer;

.field private mChecksumTool:Ljava/util/zip/Adler32;

.field private mConnection:Lcom/xiaomi/slim/SlimConnection;

.field private volatile mDone:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mKey:[B

.field private mPacketParser:Lcom/xiaomi/slim/PacketParser;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/xiaomi/slim/SlimConnection;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "conn"    # Lcom/xiaomi/slim/SlimConnection;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    .line 30
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mCRCBuf:Ljava/nio/ByteBuffer;

    .line 32
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mChecksumTool:Ljava/util/zip/Adler32;

    .line 45
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mInputStream:Ljava/io/InputStream;

    .line 46
    iput-object p2, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    .line 47
    new-instance v0, Lcom/xiaomi/slim/PacketParser;

    invoke-direct {v0}, Lcom/xiaomi/slim/PacketParser;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mPacketParser:Lcom/xiaomi/slim/PacketParser;

    .line 48
    return-void
.end method

.method private loop()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/xiaomi/slim/BlobReader;->mDone:Z

    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, "connected":Z
    invoke-virtual {p0}, Lcom/xiaomi/slim/BlobReader;->read()Lcom/xiaomi/slim/Blob;

    move-result-object v0

    .line 65
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    const-string v10, "CONN"

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 66
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;

    move-result-object v7

    .line 67
    .local v7, "msg":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasChallenge()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 68
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getChallenge()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaomi/slim/SlimConnection;->setChallenge(Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x1

    .line 72
    :cond_0
    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->hasPsc()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 74
    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getPsc()Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v2

    .line 75
    .local v2, "config":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    new-instance v4, Lcom/xiaomi/slim/Blob;

    invoke-direct {v4}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 76
    .local v4, "ctrl":Lcom/xiaomi/slim/Blob;
    const-string v10, "SYNC"

    const-string v11, "CONF"

    invoke-virtual {v4, v10, v11}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    .line 78
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v4}, Lcom/xiaomi/slim/SlimConnection;->notifyDataArrived(Lcom/xiaomi/slim/Blob;)V

    .line 80
    .end local v2    # "config":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    .end local v4    # "ctrl":Lcom/xiaomi/slim/Blob;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Slim] CONN: host = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 82
    .end local v7    # "msg":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConnResp;
    :cond_2
    if-nez v3, :cond_3

    .line 83
    const-string v10, "[Slim] Invalid CONN"

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 84
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid Connection"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 87
    :cond_3
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10}, Lcom/xiaomi/slim/SlimConnection;->getKey()[B

    move-result-object v10

    iput-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mKey:[B

    .line 89
    :goto_0
    iget-boolean v10, p0, Lcom/xiaomi/slim/BlobReader;->mDone:Z

    if-nez v10, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/xiaomi/slim/BlobReader;->read()Lcom/xiaomi/slim/Blob;

    move-result-object v0

    .line 91
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10}, Lcom/xiaomi/slim/SlimConnection;->setReadAlive()V

    .line 93
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPayloadType()S

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Slim] unknow blob type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPayloadType()S

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v0}, Lcom/xiaomi/slim/SlimConnection;->notifyDataArrived(Lcom/xiaomi/slim/Blob;)V

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v10, "SECMSG"

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 102
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getSubcmd()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 105
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "chid":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getFullUserName()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "to":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v10

    invoke-virtual {v10, v1, v9}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 108
    .local v6, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mPacketParser:Lcom/xiaomi/slim/PacketParser;

    iget-object v11, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/xiaomi/slim/Blob;->getDecryptedPayload(Ljava/lang/String;)[B

    move-result-object v11

    iget-object v12, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v11, v12}, Lcom/xiaomi/slim/PacketParser;->parse([BLcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v8

    .line 109
    .local v8, "packet":Lcom/xiaomi/smack/packet/Packet;
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v8}, Lcom/xiaomi/slim/SlimConnection;->notifyDataArrived(Lcom/xiaomi/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 110
    .end local v1    # "chid":Ljava/lang/String;
    .end local v6    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v8    # "packet":Lcom/xiaomi/smack/packet/Packet;
    .end local v9    # "to":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 112
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Slim] Parse packet from Blob chid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 113
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failure:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v0}, Lcom/xiaomi/slim/SlimConnection;->notifyDataArrived(Lcom/xiaomi/slim/Blob;)V

    goto/16 :goto_0

    .line 122
    :pswitch_2
    :try_start_1
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mPacketParser:Lcom/xiaomi/slim/PacketParser;

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPayload()[B

    move-result-object v11

    iget-object v12, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v11, v12}, Lcom/xiaomi/slim/PacketParser;->parse([BLcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/packet/Packet;

    move-result-object v8

    .line 123
    .restart local v8    # "packet":Lcom/xiaomi/smack/packet/Packet;
    iget-object v10, p0, Lcom/xiaomi/slim/BlobReader;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v10, v8}, Lcom/xiaomi/slim/SlimConnection;->notifyDataArrived(Lcom/xiaomi/smack/packet/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 124
    .end local v8    # "packet":Lcom/xiaomi/smack/packet/Packet;
    :catch_1
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Slim] Parse packet from Blob chid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 127
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failure:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 126
    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    return-void

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private read(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 222
    .local v1, "offset":I
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/slim/BlobReader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 223
    .local v0, "len":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 224
    sub-int/2addr p2, v0

    .line 225
    add-int/2addr v1, v0

    .line 229
    if-gtz p2, :cond_0

    .line 230
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    return-void

    .line 227
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method private readOnePacket()Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x800

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 143
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lcom/xiaomi/slim/BlobReader;->read(Ljava/nio/ByteBuffer;I)V

    .line 146
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    .line 147
    .local v2, "magic":S
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    .line 149
    .local v5, "version":S
    const/16 v6, -0x3d02

    if-ne v2, v6, :cond_0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 150
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Malformed Input"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 154
    .local v4, "size":I
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 156
    .local v3, "npos":I
    const v6, 0x8000

    if-le v4, v6, :cond_2

    .line 157
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Blob size too large"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_2
    add-int/lit8 v6, v4, 0x4

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 161
    add-int/lit16 v6, v4, 0x800

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    iget-object v8, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v9, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 163
    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    .line 169
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v6, v4}, Lcom/xiaomi/slim/BlobReader;->read(Ljava/nio/ByteBuffer;I)V

    .line 171
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mCRCBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 172
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mCRCBuf:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v6, v10}, Lcom/xiaomi/slim/BlobReader;->read(Ljava/nio/ByteBuffer;I)V

    .line 173
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mCRCBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mCRCBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 175
    .local v1, "crc32":I
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mChecksumTool:Ljava/util/zip/Adler32;

    invoke-virtual {v6}, Ljava/util/zip/Adler32;->reset()V

    .line 176
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mChecksumTool:Ljava/util/zip/Adler32;

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6, v7, v9, v8}, Ljava/util/zip/Adler32;->update([BII)V

    .line 177
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mChecksumTool:Ljava/util/zip/Adler32;

    invoke-virtual {v6}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-eq v1, v6, :cond_5

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CRC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mChecksumTool:Ljava/util/zip/Adler32;

    invoke-virtual {v7}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 179
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Corrupted Blob bad CRC"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 164
    .end local v1    # "crc32":I
    :cond_4
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    const/16 v7, 0x1000

    if-le v6, v7, :cond_3

    if-ge v4, v8, :cond_3

    .line 165
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    iget-object v8, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v6, v9, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 167
    iput-object v0, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 182
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v1    # "crc32":I
    :cond_5
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mKey:[B

    if-eqz v6, :cond_6

    .line 183
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mKey:[B

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v3, v4}, Lcom/xiaomi/push/service/RC4Cryption;->encrypt([B[BZII)[B

    .line 186
    :cond_6
    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v6
.end method


# virtual methods
.method read()Lcom/xiaomi/slim/Blob;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    const/16 v7, 0x8

    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, "readLen":I
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/slim/BlobReader;->readOnePacket()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 193
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 194
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    if-ne v4, v7, :cond_0

    .line 199
    new-instance v0, Lcom/xiaomi/slim/Ping;

    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    invoke-direct {v0}, Lcom/xiaomi/slim/Ping;-><init>()V

    .line 203
    .restart local v0    # "blob":Lcom/xiaomi/slim/Blob;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Slim] Read {cmd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";chid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 204
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/slim/Blob;->from(Ljava/nio/ByteBuffer;)Lcom/xiaomi/slim/Blob;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/io/IOException;
    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 207
    :cond_1
    const/16 v2, 0x80

    .line 208
    .local v2, "debug":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Slim] read Blob ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/slim/BlobReader;->mBuffer:Ljava/nio/ByteBuffer;

    .line 210
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    if-le v4, v5, :cond_2

    move v4, v5

    .line 209
    .end local v4    # "readLen":I
    :cond_2
    invoke-static {v7, v8, v4}, Lcom/xiaomi/channel/commonutils/misc/DebugUtils;->bytes2Hex([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 214
    throw v3
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/slim/BlobReader;->mDone:Z

    .line 140
    return-void
.end method

.method start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/slim/BlobReader;->loop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lcom/xiaomi/slim/BlobReader;->mDone:Z

    if-nez v1, :cond_0

    .line 55
    throw v0
.end method
