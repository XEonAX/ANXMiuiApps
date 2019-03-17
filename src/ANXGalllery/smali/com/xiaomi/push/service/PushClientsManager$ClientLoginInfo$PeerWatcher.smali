.class Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;
.super Ljava/lang/Object;
.source "PushClientsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PeerWatcher"
.end annotation


# instance fields
.field final info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

.field final peer:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p2, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p3, "peer"    # Landroid/os/Messenger;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 262
    iput-object p3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->peer:Landroid/os/Messenger;

    .line 263
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peer died, chid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;

    invoke-direct {v1, p0, v4}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$1;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 285
    const-string v0, "9"

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->info:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 286
    invoke-static {v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;

    invoke-direct {v1, p0, v4}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher$2;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;I)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 305
    :cond_0
    return-void
.end method
