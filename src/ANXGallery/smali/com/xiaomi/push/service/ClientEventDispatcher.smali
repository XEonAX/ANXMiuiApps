.class public Lcom/xiaomi/push/service/ClientEventDispatcher;
.super Ljava/lang/Object;
.source "ClientEventDispatcher.java"


# instance fields
.field private mPushEventProcessor:Lcom/xiaomi/push/service/MIPushEventProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaomi/push/service/MIPushEventProcessor;

    invoke-direct {v0}, Lcom/xiaomi/push/service/MIPushEventProcessor;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/ClientEventDispatcher;->mPushEventProcessor:Lcom/xiaomi/push/service/MIPushEventProcessor;

    return-void
.end method

.method public static getReceiverPermission(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 257
    const-string v0, "9"

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MIMC_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 249
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/push/service/ClientEventDispatcher;->getReceiverPermission(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getClientLoginInfo(Lcom/xiaomi/slim/Blob;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 7
    .param p1, "blob"    # Lcom/xiaomi/slim/Blob;

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v5

    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getChannelId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 202
    .local v1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object v4

    .line 206
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/slim/Blob;->getFullUserName()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "userId":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 213
    .local v0, "cur":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 214
    goto :goto_0
.end method

.method getClientLoginInfo(Lcom/xiaomi/smack/packet/Packet;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 8
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v6

    .line 179
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 180
    .local v2, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v5

    .line 184
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 185
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "from":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/Packet;->getTo()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "to":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 192
    .local v0, "cur":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v6, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    move-object v5, v0

    .line 193
    goto :goto_0
.end method

.method public notifyChannelClosed(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p3, "reason"    # I

    .prologue
    const/4 v5, 0x0

    .line 71
    const-string v3, "5"

    iget-object v4, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.xiaomi.push.channel_closed"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v3, "ext_reason"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    sget-object v3, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    const-string v3, "9"

    iget-object v4, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const/16 v3, 0x11

    invoke-static {v5, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 85
    .local v2, "message":Landroid/os/Message;
    :try_start_0
    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v5, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peer may died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    iget-object v5, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    invoke-static {p1, v1, p2}, Lcom/xiaomi/push/service/ClientEventDispatcher;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0
.end method

.method public notifyChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginInfo"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p3, "succeeded"    # Z
    .param p4, "reason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "5"

    iget-object v1, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaomi/push/service/ClientEventDispatcher;->mPushEventProcessor:Lcom/xiaomi/push/service/MIPushEventProcessor;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/MIPushEventProcessor;->processChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "com.xiaomi.push.channel_opened"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v0, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "ext_succeeded"

    invoke-virtual {v6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    if-nez p3, :cond_1

    .line 53
    const-string v0, "ext_reason"

    invoke-virtual {v6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    const-string v0, "ext_reason_msg"

    invoke-virtual {v6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_2
    const-string v0, "ext_chid"

    iget-object v1, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    sget-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {p1, v6, p2}, Lcom/xiaomi/push/service/ClientEventDispatcher;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0
.end method

.method public notifyKickedByServer(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v2, "5"

    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const-string v2, "mipush kicked by server"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "com.xiaomi.push.kicked"

    .line 235
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v2, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "ext_kick_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "ext_kick_reason"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "ext_chid"

    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    sget-object v2, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    sget-object v2, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-static {p1, v1, p2}, Lcom/xiaomi/push/service/ClientEventDispatcher;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0
.end method

.method public notifyPacketArrival(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/slim/Blob;)V
    .locals 10
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "chid"    # Ljava/lang/String;
    .param p3, "blob"    # Lcom/xiaomi/slim/Blob;

    .prologue
    const/4 v8, 0x0

    .line 139
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/ClientEventDispatcher;->getClientLoginInfo(Lcom/xiaomi/slim/Blob;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v2

    .line 140
    .local v2, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-nez v2, :cond_1

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error while notify channel closed! channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not registered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v6, "5"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/xiaomi/push/service/ClientEventDispatcher;->mPushEventProcessor:Lcom/xiaomi/push/service/MIPushEventProcessor;

    invoke-virtual {v6, p1, p3, v2}, Lcom/xiaomi/push/service/MIPushEventProcessor;->processNewPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v5, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    .line 149
    .local v5, "pkgName":Ljava/lang/String;
    const-string v0, "com.xiaomi.push.new_msg"

    .line 151
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v6, "ext_chid"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v6, "ext_raw_packet"

    iget-object v7, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {p3, v7}, Lcom/xiaomi/slim/Blob;->getDecryptedPayload(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 156
    sget-object v6, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v7, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v6, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    iget-object v7, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v6, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-eqz v6, :cond_3

    .line 160
    const/16 v6, 0x11

    invoke-static {v8, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 162
    .local v4, "message":Landroid/os/Message;
    :try_start_0
    iget-object v6, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    iput-object v8, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "peer may died: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    iget-object v8, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    const-string v6, "com.xiaomi.xmsf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    invoke-static {p1, v3, v2}, Lcom/xiaomi/push/service/ClientEventDispatcher;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0
.end method

.method public notifyPacketArrival(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lcom/xiaomi/smack/packet/Packet;)V
    .locals 6
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "chid"    # Ljava/lang/String;
    .param p3, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    .line 101
    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/ClientEventDispatcher;->getClientLoginInfo(Lcom/xiaomi/smack/packet/Packet;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v1

    .line 102
    .local v1, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-nez v1, :cond_0

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while notify channel closed! channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v4, "5"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/xiaomi/push/service/ClientEventDispatcher;->mPushEventProcessor:Lcom/xiaomi/push/service/MIPushEventProcessor;

    invoke-virtual {v4, p1, p3, v1}, Lcom/xiaomi/push/service/MIPushEventProcessor;->processNewPacket(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/Packet;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v3, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    .line 111
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, "action":Ljava/lang/String;
    instance-of v4, p3, Lcom/xiaomi/smack/packet/Message;

    if-eqz v4, :cond_2

    .line 113
    const-string v0, "com.xiaomi.push.new_msg"

    .line 122
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v4, "ext_chid"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v4, "ext_packet"

    invoke-virtual {p3}, Lcom/xiaomi/smack/packet/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    iget-object v5, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->session:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    sget-object v4, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    iget-object v5, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->security:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-static {p1, v2, v1}, Lcom/xiaomi/push/service/ClientEventDispatcher;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0

    .line 114
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    instance-of v4, p3, Lcom/xiaomi/smack/packet/IQ;

    if-eqz v4, :cond_3

    .line 115
    const-string v0, "com.xiaomi.push.new_iq"

    goto :goto_1

    .line 116
    :cond_3
    instance-of v4, p3, Lcom/xiaomi/smack/packet/Presence;

    if-eqz v4, :cond_4

    .line 117
    const-string v0, "com.xiaomi.push.new_pres"

    goto :goto_1

    .line 119
    :cond_4
    const-string/jumbo v4, "unknown packet type, drop it"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyServiceStarted(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
