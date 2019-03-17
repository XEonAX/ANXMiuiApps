.class Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResetConnectionJob"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1968
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1969
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1980
    const-string v0, "reset the connection."

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 1973
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ResetConnectionJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$1000(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1976
    :cond_0
    return-void
.end method
