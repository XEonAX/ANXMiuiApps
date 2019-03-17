.class public final Lcom/xiaomi/slim/Ping;
.super Lcom/xiaomi/slim/Blob;
.source "Ping.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 14
    const-string v0, "PING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/slim/Ping;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/Ping;->setPacketID(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/slim/Ping;->setChannelId(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/xiaomi/slim/Ping;->getPayload()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/slim/Blob;->getSerializedSize()I

    move-result v0

    goto :goto_0
.end method

.method toByteArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/slim/Ping;->getPayload()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 31
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object p1

    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/slim/Blob;->toByteArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0
.end method
