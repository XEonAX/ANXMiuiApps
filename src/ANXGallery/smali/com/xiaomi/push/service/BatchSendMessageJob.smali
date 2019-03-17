.class Lcom/xiaomi/push/service/BatchSendMessageJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "BatchSendMessageJob.java"


# instance fields
.field private mBlobs:[Lcom/xiaomi/slim/Blob;

.field private pushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;[Lcom/xiaomi/slim/Blob;)V
    .locals 1
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "blobs"    # [Lcom/xiaomi/slim/Blob;

    .prologue
    .line 16
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 17
    iput-object p1, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->mBlobs:[Lcom/xiaomi/slim/Blob;

    .line 19
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "batch send message."

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->mBlobs:[Lcom/xiaomi/slim/Blob;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->mBlobs:[Lcom/xiaomi/slim/Blob;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->batchSendPacket([Lcom/xiaomi/slim/Blob;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 29
    iget-object v1, p0, Lcom/xiaomi/push/service/BatchSendMessageJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
