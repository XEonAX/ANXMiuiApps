.class Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "PushClientsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyClientJob"
.end annotation


# instance fields
.field errorType:Ljava/lang/String;

.field notifyType:I

.field reason:I

.field reasonMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 349
    return-void
.end method


# virtual methods
.method public build(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/XMPushService$Job;
    .locals 0
    .param p1, "notifyType"    # I
    .param p2, "reason"    # I
    .param p3, "reasonMessage"    # Ljava/lang/String;
    .param p4, "errorType"    # Ljava/lang/String;

    .prologue
    .line 366
    iput p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->notifyType:I

    .line 367
    iput p2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->reason:I

    .line 368
    iput-object p4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->errorType:Ljava/lang/String;

    .line 369
    iput-object p3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->reasonMessage:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, "notify job"

    return-object v0
.end method

.method public process()V
    .locals 5

    .prologue
    .line 353
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->notifyType:I

    iget v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->reason:I

    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->errorType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$200(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->notifyType:I

    iget v2, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->reason:I

    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->reasonMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->errorType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$300(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;IILjava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ignore notify client :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$NotifyClientJob;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    iget-object v1, v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
