.class Lcom/xiaomi/push/service/XMPushService$UnbindJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnbindJob"
.end annotation


# instance fields
.field kickType:Ljava/lang/String;

.field mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

.field mNotifyType:I

.field reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p3, "notifyType"    # I
    .param p4, "kickType"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1899
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1900
    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 1901
    iput p3, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mNotifyType:I

    .line 1902
    iput-object p4, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->kickType:Ljava/lang/String;

    .line 1903
    iput-object p5, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->reason:Ljava/lang/String;

    .line 1904
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbind the channel. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

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
    .line 1908
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1910
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v2, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/Connection;->unbind(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mLoginInfo:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->mNotifyType:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->reason:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->kickType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V

    .line 1917
    return-void

    .line 1911
    :catch_0
    move-exception v6

    .line 1912
    .local v6, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1913
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$UnbindJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
