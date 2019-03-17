.class Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;
.super Ljava/lang/Object;
.source "PushClientsManager.java"

# interfaces
.implements Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;-><init>(Lcom/xiaomi/push/service/XMPushService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 4
    .param p1, "oldStatus"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p2, "newStatus"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p3, "reason"    # I

    .prologue
    .line 245
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binding:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$000(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->executeJobDelayed(Lcom/xiaomi/push/service/XMPushService$Job;J)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$100(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$1;->this$0:Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    invoke-static {v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->access$000(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)Lcom/xiaomi/push/service/XMPushService$BindTimeoutJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->removeJobs(Lcom/xiaomi/push/service/XMPushService$Job;)V

    goto :goto_0
.end method
