.class Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "PushClientsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;
    .param p2, "type"    # I

    .prologue
    .line 287
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "check peer job"

    return-object v0
.end method

.method public process()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v7

    .line 291
    .local v7, "mgr":Lcom/xiaomi/push/service/PushClientsManager;
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/xiaomi/push/service/PushClientsManager;->getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v6

    .line 292
    .local v6, "current":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v0, v6, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v2, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v2, v2, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    const/4 v3, 0x2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/XMPushService;->closeChannel(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method
