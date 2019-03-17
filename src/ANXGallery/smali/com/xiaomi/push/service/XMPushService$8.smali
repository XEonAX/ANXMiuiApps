.class Lcom/xiaomi/push/service/XMPushService$8;
.super Landroid/content/BroadcastReceiver;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$8;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 427
    const-string v3, "com.xiaomi.metoknlp.geofencing.state_change_protected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    const-string v3, "Describe"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "geoId":Ljava/lang/String;
    const-string v3, "State"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "state":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    .end local v1    # "geoId":Ljava/lang/String;
    .end local v2    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v1    # "geoId":Ljava/lang/String;
    .restart local v2    # "state":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService$8;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3, v2, v1, p1}, Lcom/xiaomi/push/service/XMPushService;->access$300(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 434
    const-string v2, "Unknown"

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updated geofence statue about geo_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " falied. current_statue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 437
    :cond_2
    move-object v0, v2

    .line 438
    .local v0, "finalState":Ljava/lang/String;
    new-instance v3, Lcom/xiaomi/push/service/XMPushService$8$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/xiaomi/push/service/XMPushService$8$1;-><init>(Lcom/xiaomi/push/service/XMPushService$8;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaomi/smack/util/TaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ownresilt\u7ed3\u679c:state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n describe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
