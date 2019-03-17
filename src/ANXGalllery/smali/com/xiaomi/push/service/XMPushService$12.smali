.class Lcom/xiaomi/push/service/XMPushService$12;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService;->onDestroy()V
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
    .line 1431
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$12;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1443
    const-string v0, "disconnect for service destroy."

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1435
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$12;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$12;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/Connection;->disconnect(ILjava/lang/Exception;)V

    .line 1437
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$12;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->access$502(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/Connection;)Lcom/xiaomi/smack/Connection;

    .line 1439
    :cond_0
    return-void
.end method
