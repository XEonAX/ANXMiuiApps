.class public Lcom/xiaomi/slim/BlobWriter;
.super Ljava/lang/Object;
.source "BlobWriter.java"


# instance fields
.field mBuffer:Ljava/nio/ByteBuffer;

.field private mCRCBuf:Ljava/nio/ByteBuffer;

.field private mChecksumTool:Ljava/util/zip/Adler32;

.field private mConnection:Lcom/xiaomi/slim/SlimConnection;

.field private mDSTSavings:I

.field private mKey:[B

.field private mOut:Ljava/io/OutputStream;

.field private mTimeZone:I


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/xiaomi/slim/SlimConnection;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "conn"    # Lcom/xiaomi/slim/SlimConnection;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    .line 33
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/slim/BlobWriter;->mCRCBuf:Ljava/nio/ByteBuffer;

    .line 35
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/slim/BlobWriter;->mChecksumTool:Ljava/util/zip/Adler32;

    .line 48
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/xiaomi/slim/BlobWriter;->mOut:Ljava/io/OutputStream;

    .line 49
    iput-object p2, p0, Lcom/xiaomi/slim/BlobWriter;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    .line 51
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 52
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/slim/BlobWriter;->mTimeZone:I

    .line 53
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/xiaomi/slim/BlobWriter;->mDSTSavings:I

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public openStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x26

    const/4 v6, 0x0

    .line 106
    new-instance v2, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    invoke-direct {v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;-><init>()V

    .line 107
    .local v2, "msgConn":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;
    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 108
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setModel(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 109
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setOs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 110
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setUdid(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 111
    invoke-virtual {v2, v7}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setSdk(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 112
    iget-object v3, p0, Lcom/xiaomi/slim/BlobWriter;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v3}, Lcom/xiaomi/slim/SlimConnection;->getConnectionPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setConnpt(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 113
    iget-object v3, p0, Lcom/xiaomi/slim/BlobWriter;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v3}, Lcom/xiaomi/slim/SlimConnection;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setHost(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setLocale(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setAndver(I)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 117
    iget-object v3, p0, Lcom/xiaomi/slim/BlobWriter;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v3}, Lcom/xiaomi/slim/SlimConnection;->getConfiguration()Lcom/xiaomi/smack/ConnectionConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/smack/ConnectionConfiguration;->getConnectionBlob()[B

    move-result-object v1

    .line 118
    .local v1, "cfgPayload":[B
    if-eqz v1, :cond_0

    .line 119
    invoke-static {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->parseFrom([B)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->setPsc(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;

    .line 122
    :cond_0
    new-instance v0, Lcom/xiaomi/slim/Blob;

    invoke-direct {v0}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 123
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 124
    const-string v3, "CONN"

    invoke-virtual {v0, v3, v6}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-wide/16 v4, 0x0

    const-string/jumbo v3, "xiaomi.com"

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/xiaomi/slim/Blob;->setFrom(JLjava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgConn;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/BlobWriter;->write(Lcom/xiaomi/slim/Blob;)I

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[slim] open conn: andver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sdk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hash="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 131
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/slim/BlobWriter;->mTimeZone:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/slim/BlobWriter;->mDSTSavings:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " os="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/xiaomi/slim/Blob;

    invoke-direct {v0}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 138
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/BlobWriter;->write(Lcom/xiaomi/slim/Blob;)I

    .line 140
    iget-object v1, p0, Lcom/xiaomi/slim/BlobWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 141
    return-void
.end method

.method public write(Lcom/xiaomi/slim/Blob;)I
    .locals 7
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x8000

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getSerializedSize()I

    move-result v3

    .line 58
    .local v3, "size":I
    if-le v3, v6, :cond_0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blob size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " should be less than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Drop blob chid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 62
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 102
    :goto_0
    return v1

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    add-int/lit8 v4, v3, 0x8

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    const/16 v5, 0x1000

    if-le v4, v5, :cond_2

    .line 69
    :cond_1
    add-int/lit8 v4, v3, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, -0x3d02

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 75
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 78
    .local v2, "npos":I
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Lcom/xiaomi/slim/Blob;->toByteArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    .line 80
    const-string v4, "CONN"

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 81
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mKey:[B

    if-nez v4, :cond_3

    .line 82
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mConnection:Lcom/xiaomi/slim/SlimConnection;

    invoke-virtual {v4}, Lcom/xiaomi/slim/SlimConnection;->getKey()[B

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mKey:[B

    .line 84
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mKey:[B

    iget-object v5, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2, v3}, Lcom/xiaomi/push/service/RC4Cryption;->encrypt([B[BZII)[B

    .line 87
    :cond_4
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mChecksumTool:Ljava/util/zip/Adler32;

    invoke-virtual {v4}, Ljava/util/zip/Adler32;->reset()V

    .line 88
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mChecksumTool:Ljava/util/zip/Adler32;

    iget-object v5, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6}, Ljava/util/zip/Adler32;->update([BII)V

    .line 89
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mChecksumTool:Ljava/util/zip/Adler32;

    invoke-virtual {v4}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    long-to-int v0, v4

    .line 90
    .local v0, "checksum":I
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mCRCBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mOut:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mOut:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/xiaomi/slim/BlobWriter;->mCRCBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 99
    iget-object v4, p0, Lcom/xiaomi/slim/BlobWriter;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v1, v4, 0x4

    .line 100
    .local v1, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Slim] Wrote {cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getCmd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";chid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
