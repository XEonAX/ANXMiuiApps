.class Lcom/xiaomi/metoknlp/devicediscover/a;
.super Landroid/os/Handler;
.source "DiscoverService.java"


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/devicediscover/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/m;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->a(Lcom/xiaomi/metoknlp/devicediscover/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 81
    return-void

    .line 58
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 59
    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v2, v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->a(Lcom/xiaomi/metoknlp/devicediscover/m;Ljava/util/HashMap;)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/m;->a(Lcom/xiaomi/metoknlp/devicediscover/m;I)I

    .line 63
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->b(Lcom/xiaomi/metoknlp/devicediscover/m;)Lcom/xiaomi/metoknlp/devicediscover/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->b(Lcom/xiaomi/metoknlp/devicediscover/m;)Lcom/xiaomi/metoknlp/devicediscover/j;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/j;->cancel(Z)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->Q()V

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v2}, Lcom/xiaomi/metoknlp/devicediscover/m;->c(Lcom/xiaomi/metoknlp/devicediscover/m;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v2}, Lcom/xiaomi/metoknlp/devicediscover/m;->c(Lcom/xiaomi/metoknlp/devicediscover/m;)Lcom/xiaomi/metoknlp/devicediscover/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->g(Ljava/lang/String;)Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/a;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->Q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
