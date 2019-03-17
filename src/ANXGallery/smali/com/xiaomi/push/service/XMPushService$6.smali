.class Lcom/xiaomi/push/service/XMPushService$6;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService;->postOnCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "type"    # I

    .prologue
    .line 384
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$6;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, "prepare the mi push account."

    return-object v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$6;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushHelper;->prepareMIPushAccount(Lcom/xiaomi/push/service/XMPushService;)V

    .line 388
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$6;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$6;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    .line 391
    :cond_0
    return-void
.end method
