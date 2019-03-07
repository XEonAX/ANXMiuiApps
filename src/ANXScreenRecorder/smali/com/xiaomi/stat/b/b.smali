.class Lcom/xiaomi/stat/b/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/b/a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-static {v0}, Lcom/xiaomi/stat/b/a;->a(Lcom/xiaomi/stat/b/a;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-static {v0}, Lcom/xiaomi/stat/b/a;->b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/xiaomi/stat/b/b;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Lcom/xiaomi/stat/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stat/b/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/stat/b/c;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/stat/b/c;-><init>(Lcom/xiaomi/stat/b/b;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "ConfigManager"

    const-string v2, "mNetReceiver exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
