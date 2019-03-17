.class Lcom/xiaomi/push/service/SendMessageJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "SendMessageJob.java"


# instance fields
.field private mBlob:Lcom/xiaomi/slim/Blob;

.field private pushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/slim/Blob;)V
    .locals 1
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "blob"    # Lcom/xiaomi/slim/Blob;

    .prologue
    .line 17
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/SendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 18
    iput-object p1, p0, Lcom/xiaomi/push/service/SendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/push/service/SendMessageJob;->mBlob:Lcom/xiaomi/slim/Blob;

    .line 20
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "send a message."

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/SendMessageJob;->mBlob:Lcom/xiaomi/slim/Blob;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/xiaomi/push/service/SendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/SendMessageJob;->mBlob:Lcom/xiaomi/slim/Blob;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->sendPacket(Lcom/xiaomi/slim/Blob;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 30
    iget-object v1, p0, Lcom/xiaomi/push/service/SendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
