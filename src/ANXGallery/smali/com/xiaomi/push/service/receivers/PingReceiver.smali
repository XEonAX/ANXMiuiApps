.class public Lcom/xiaomi/push/service/receivers/PingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is the package name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 24
    sget-object v2, Lcom/xiaomi/push/service/PushConstants;->ACTION_PING_TIMER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const-string v2, "Ping XMChannelService on timer"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 28
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    const-string v2, "com.xiaomi.push.timer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {p1}, Lcom/xiaomi/push/service/ServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/ServiceClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/service/ServiceClient;->startServiceSafely(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "cancel the old ping timer"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/xiaomi/push/service/timers/Alarm;->stop()V

    goto :goto_0
.end method
