.class Lcom/xiaomi/push/service/XMPushService$ReBindJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReBindJob"
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
    .line 1863
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1864
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1865
    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1866
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebind the client. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

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
    .line 1871
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v2, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/Connection;->unbind(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/Connection;->bind(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    :goto_0
    return-void

    .line 1877
    :catch_0
    move-exception v6

    .line 1878
    .local v6, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1879
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ReBindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
