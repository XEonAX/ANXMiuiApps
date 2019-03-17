.class Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;
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
    .line 269
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "clear peer job"

    return-object v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->peer:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-ne v0, v1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clean peer, chid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;->this$1:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    iget-object v0, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    .line 276
    :cond_0
    return-void
.end method
