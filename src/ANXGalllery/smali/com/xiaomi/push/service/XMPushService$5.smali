.class Lcom/xiaomi/push/service/XMPushService$5;
.super Landroid/database/ContentObserver;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$5;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 300
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$5;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->access$200(Lcom/xiaomi/push/service/XMPushService;)Z

    move-result v0

    .line 301
    .local v0, "isXPowerMode":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtremePowerMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$5;->this$0:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;

    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService$5;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$5;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    goto :goto_0
.end method
