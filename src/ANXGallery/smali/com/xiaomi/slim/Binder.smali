.class Lcom/xiaomi/slim/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# direct methods
.method public static bind(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Ljava/lang/String;Lcom/xiaomi/smack/Connection;)V
    .locals 7
    .param p0, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/xiaomi/smack/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 17
    new-instance v1, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    invoke-direct {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;-><init>()V

    .line 19
    .local v1, "msgBind":Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setToken(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    .line 23
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 24
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setClientAttrs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    .line 26
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 27
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setCloudAttrs(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    .line 30
    :cond_2
    iget-boolean v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->kick:Z

    if-eqz v4, :cond_5

    const-string v4, "1"

    :goto_0
    invoke-virtual {v1, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setKick(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    .line 31
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 32
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setMethod(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    .line 36
    :goto_1
    new-instance v0, Lcom/xiaomi/slim/Blob;

    invoke-direct {v0}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 37
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/xiaomi/slim/Blob;->setFrom(Ljava/lang/String;)V

    .line 38
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 39
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/xiaomi/slim/Blob;->setPackageName(Ljava/lang/String;)V

    .line 40
    const-string v4, "BIND"

    invoke-virtual {v0, v4, v6}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/slim/Blob;->setPacketID(Ljava/lang/String;)V

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Slim]: bind id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "challenge"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v4, "token"

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "chid"

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "from"

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "id"

    invoke-virtual {v0}, Lcom/xiaomi/slim/Blob;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v4, "to"

    const-string/jumbo v5, "xiaomi.com"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->kick:Z

    if-eqz v4, :cond_7

    .line 54
    const-string v4, "kick"

    const-string v5, "1"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :goto_2
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 60
    const-string v4, "client_attrs"

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->clientExtra:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_3
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 65
    const-string v4, "cloud_attrs"

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->cloudExtra:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_4
    const/4 v3, 0x0

    .line 70
    .local v3, "sig":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    const-string v5, "XIAOMI-PASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    const-string v5, "XMPUSH-PASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-static {v4, v6, v2, v5}, Lcom/xiaomi/channel/commonutils/string/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_4
    :goto_5
    invoke-virtual {v1, v3}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setSig(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    .line 89
    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/xiaomi/slim/Blob;->setPayload([BLjava/lang/String;)V

    .line 90
    invoke-virtual {p2, v0}, Lcom/xiaomi/smack/Connection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 91
    return-void

    .line 30
    .end local v0    # "blob":Lcom/xiaomi/slim/Blob;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "sig":Ljava/lang/String;
    :cond_5
    const-string v4, "0"

    goto/16 :goto_0

    .line 34
    :cond_6
    const-string v4, "XIAOMI-SASL"

    invoke-virtual {v1, v4}, Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;->setMethod(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/ChannelMessage$XMMsgBind;

    goto/16 :goto_1

    .line 56
    .restart local v0    # "blob":Lcom/xiaomi/slim/Blob;
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const-string v4, "kick"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 62
    :cond_8
    const-string v4, "client_attrs"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 67
    :cond_9
    const-string v4, "cloud_attrs"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 72
    .restart local v3    # "sig":Ljava/lang/String;
    :cond_a
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->authMethod:Ljava/lang/String;

    const-string v5, "XIAOMI-SASL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5
.end method

.method public static unbind(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/Connection;)V
    .locals 3
    .param p0, "chid"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/xiaomi/smack/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/xiaomi/slim/Blob;

    invoke-direct {v0}, Lcom/xiaomi/slim/Blob;-><init>()V

    .line 95
    .local v0, "blob":Lcom/xiaomi/slim/Blob;
    invoke-virtual {v0, p1}, Lcom/xiaomi/slim/Blob;->setFrom(Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/slim/Blob;->setChannelId(I)V

    .line 98
    const-string v1, "UBND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/slim/Blob;->setCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2, v0}, Lcom/xiaomi/smack/Connection;->send(Lcom/xiaomi/slim/Blob;)V

    .line 100
    return-void
.end method
