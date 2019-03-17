.class Lcom/xiaomi/push/service/XMPushService$BindJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindJob"
.end annotation


# instance fields
.field mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1788
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1789
    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1790
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 7

    .prologue
    .line 1795
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1796
    const-string/jumbo v1, "trying bind while the connection is not created, quit!"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 1818
    :goto_0
    return-void

    .line 1800
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v2, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v3, v3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v0

    .line 1802
    .local v0, "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-nez v0, :cond_1

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore bind because the channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v2, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1813
    .end local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :catch_0
    move-exception v6

    .line 1814
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1815
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v6}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0

    .line 1804
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_2

    .line 1805
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/smack/Connection;->bind(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 1808
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$BindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/stats/StatsHelper;->statsBind(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    goto :goto_0

    .line 1816
    .end local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1810
    .restart local v0    # "cLoginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trying duplicate bind, ingore! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method
