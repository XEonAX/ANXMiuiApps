.class Lcom/xiaomi/stat/c/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/c/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/c/g;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {v2}, Lcom/xiaomi/stat/c/g;->a(Lcom/xiaomi/stat/c/g;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {v2}, Lcom/xiaomi/stat/c/g;->b(Lcom/xiaomi/stat/c/g;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 132
    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {v1}, Lcom/xiaomi/stat/c/g;->c(Lcom/xiaomi/stat/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 134
    iget-object v0, p0, Lcom/xiaomi/stat/c/h;->a:Lcom/xiaomi/stat/c/g;

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/stat/c/g;->a(Lcom/xiaomi/stat/c/g;J)J

    .line 136
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
