.class Lcom/xiaomi/analytics/internal/SdkManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/SdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/SdkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/internal/SdkManager;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 384
    if-nez p2, :cond_0

    .line 404
    :goto_0
    return-void

    .line 387
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1702(Lcom/xiaomi/analytics/internal/SdkManager;J)J

    .line 390
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1802(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z

    .line 391
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1900(Lcom/xiaomi/analytics/internal/SdkManager;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2000(Lcom/xiaomi/analytics/internal/SdkManager;J)V

    .line 400
    :cond_1
    :goto_1
    const-string v2, "SdkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen off : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1800(Lcom/xiaomi/analytics/internal/SdkManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SdkManager"

    const-string v3, "mScreenReceiver onReceive e"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/SdkManager;->access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$2100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    const-string v2, "SdkManager"

    const-string v3, "pending dex is null, unregister"

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_3
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager$4;->this$0:Lcom/xiaomi/analytics/internal/SdkManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/SdkManager;->access$1802(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
