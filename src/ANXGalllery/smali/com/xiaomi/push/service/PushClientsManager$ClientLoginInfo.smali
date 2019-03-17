.class public Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
.super Ljava/lang/Object;
.source "PushClientsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/PushClientsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientLoginInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;,
        Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;,
        Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;
    }
.end annotation


# instance fields
.field public authMethod:Ljava/lang/String;

.field public chid:Ljava/lang/String;

.field public clientExtra:Ljava/lang/String;

.field public cloudExtra:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field private currentRetrys:I

.field private hasPeerSupport:Z

.field public kick:Z

.field public mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

.field private mPushService:Lcom/xiaomi/push/service/XMPushService;

.field notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field final notifyClientJob:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

.field peer:Landroid/os/Messenger;

.field peerWatcher:Landroid/os/IBinder$DeathRecipient;

.field public pkgName:Ljava/lang/String;

.field public security:Ljava/lang/String;

.field public session:Ljava/lang/String;

.field status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field private statusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private timeOutJob:Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 221
    iput v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->currentRetrys:I

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    .line 227
    iput-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 231
    iput-boolean v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    .line 233
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->timeOutJob:Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    .line 254
    iput-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peerWatcher:Landroid/os/IBinder$DeathRecipient;

    .line 374
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifyClientJob:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 3
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 221
    iput v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->currentRetrys:I

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    .line 227
    iput-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 231
    iput-boolean v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    .line 233
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->timeOutJob:Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    .line 254
    iput-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peerWatcher:Landroid/os/IBinder$DeathRecipient;

    .line 374
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifyClientJob:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

    .line 240
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    .line 241
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->addClientStatusListener(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;)V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->timeOutJob:Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->shouldNotifyClient(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifyClientStatus(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 543
    const-string v1, ""

    .line 544
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 551
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 547
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 548
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 549
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 551
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private isSpeicalErr(IILjava/lang/String;)Z
    .locals 4
    .param p1, "notifyType"    # I
    .param p2, "reason"    # I
    .param p3, "errorType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    packed-switch p1, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 479
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    goto :goto_0

    .line 481
    :pswitch_1
    const-string/jumbo v2, "wait"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 483
    :pswitch_2
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v3, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, v3, :cond_0

    .line 487
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const/16 v2, 0x15

    if-eq p2, v2, :cond_0

    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    const-string/jumbo v2, "wait"

    .line 491
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v1, v0

    .line 494
    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyClientStatus(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "notifyType"    # I
    .param p2, "reason"    # I
    .param p3, "reasonMessage"    # Ljava/lang/String;
    .param p4, "errorType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iput-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 430
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p2}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyChannelClosed(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;I)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 433
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p4, p3}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyKickedByServer(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_2
    if-ne p1, v3, :cond_0

    .line 435
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v1, v2, :cond_4

    .line 436
    .local v3, "succeeded":Z
    :goto_1
    if-nez v3, :cond_5

    const-string/jumbo v1, "wait"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    iget v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->currentRetrys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->currentRetrys:I

    .line 450
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/ClientEventDispatcher;->notifyChannelOpenResult(Landroid/content/Context;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;ZILjava/lang/String;)V

    goto :goto_0

    .end local v3    # "succeeded":Z
    :cond_4
    move v3, v0

    .line 435
    goto :goto_1

    .line 438
    .restart local v3    # "succeeded":Z
    :cond_5
    if-eqz v3, :cond_3

    .line 439
    iput v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->currentRetrys:I

    .line 440
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    .line 441
    const/4 v0, 0x0

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, v2, Lcom/xiaomi/push/service/XMPushService;->messenger:Landroid/os/Messenger;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 445
    .local v6, "message":Landroid/os/Message;
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    invoke-virtual {v0, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 446
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private shouldNotifyClient(IILjava/lang/String;)Z
    .locals 4
    .param p1, "notifyType"    # I
    .param p2, "reason"    # I
    .param p3, "errorType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 455
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 472
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v2, v3, :cond_2

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " status recovered, don\'t notify client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    if-eqz v2, :cond_3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peer alive notify status to client:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    move v0, v1

    .line 468
    goto :goto_0

    .line 471
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer died, ignore notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addClientStatusListener(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;)V
    .locals 2
    .param p1, "statusListener"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDesc(I)Ljava/lang/String;
    .locals 1
    .param p1, "notifyType"    # I

    .prologue
    .line 502
    packed-switch p1, :pswitch_data_0

    .line 510
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 504
    :pswitch_0
    const-string v0, "OPEN"

    goto :goto_0

    .line 506
    :pswitch_1
    const-string v0, "CLOSE"

    goto :goto_0

    .line 508
    :pswitch_2
    const-string v0, "KICK"

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNextRetryInterval()J
    .locals 6

    .prologue
    .line 529
    const-wide/16 v0, 0x3e8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    sub-double/2addr v2, v4

    double-to-long v2, v2

    iget v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->currentRetrys:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public removeClientStatusListener(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;)V
    .locals 2
    .param p1, "statusListener"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;

    .prologue
    .line 521
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 523
    monitor-exit v1

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "status"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p2, "notifyType"    # I
    .param p3, "reason"    # I
    .param p4, "reasonMessage"    # Ljava/lang/String;
    .param p5, "errorType"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 384
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->statusChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;

    .line 385
    .local v1, "listener":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;
    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-interface {v1, v4, p1, p3}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;->onChange(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V

    goto :goto_0

    .line 387
    .end local v1    # "listener":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq v2, p1, :cond_1

    .line 390
    const-string/jumbo v2, "update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 393
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->getDesc(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Lcom/xiaomi/push/service/PushConstants;->getErrorDesc(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    const/4 v4, 0x5

    aput-object p5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 390
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 394
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mClientEventDispatcher:Lcom/xiaomi/push/service/ClientEventDispatcher;

    if-nez v2, :cond_3

    .line 398
    const-string/jumbo v2, "status changed while the client dispatcher is missing"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 425
    :cond_2
    :goto_1
    return-void

    .line 402
    :cond_3
    sget-object v2, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eq p1, v2, :cond_2

    .line 407
    const/16 v0, 0x2774

    .line 409
    .local v0, "NOTIFY_TIME_OUT":I
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    if-nez v2, :cond_6

    .line 413
    :cond_4
    const/4 v0, 0x0

    .line 419
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifyClientJob:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 420
    invoke-direct {p0, p2, p3, p5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->isSpeicalErr(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 421
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifyClientStatus(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    if-eqz v2, :cond_5

    .line 416
    const/16 v0, 0x3e8

    goto :goto_2

    .line 423
    :cond_7
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->mPushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifyClientJob:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;

    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->build(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/XMPushService$Job;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    goto :goto_1
.end method

.method unwatch()V
    .locals 4

    .prologue
    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    .line 311
    .local v0, "client":Landroid/os/Messenger;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peerWatcher:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peerWatcher:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "client":Landroid/os/Messenger;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->notifiedStatus:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 317
    return-void

    .line 314
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method watch(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "peer"    # Landroid/os/Messenger;

    .prologue
    const/4 v4, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->unwatch()V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    .line 329
    new-instance v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;

    invoke-direct {v1, p0, p0, p1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$PeerWatcher;-><init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;Landroid/os/Messenger;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peerWatcher:Landroid/os/IBinder$DeathRecipient;

    .line 330
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peerWatcher:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 339
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer linked with old sdk chid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer linkToDeath err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->peer:Landroid/os/Messenger;

    .line 337
    iput-boolean v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->hasPeerSupport:Z

    goto :goto_0
.end method
