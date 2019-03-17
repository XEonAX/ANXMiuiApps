.class Lcom/xiaomi/metoknlp/b/d;
.super Landroid/os/Handler;
.source "ConnectivityMonitor.java"


# instance fields
.field final synthetic af:Lcom/xiaomi/metoknlp/b/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/metoknlp/b/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xiaomi/metoknlp/b/d;->af:Lcom/xiaomi/metoknlp/b/c;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/d;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/b/c;->a(Lcom/xiaomi/metoknlp/b/c;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/d;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/b/c;->a(Lcom/xiaomi/metoknlp/b/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/metoknlp/b/a;

    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/metoknlp/b/a;->a(Landroid/net/NetworkInfo;)V

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/d;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/b/c;->a(Lcom/xiaomi/metoknlp/b/c;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/d;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/b/c;->a(Lcom/xiaomi/metoknlp/b/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/metoknlp/b/a;

    .line 92
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/metoknlp/b/a;->b(Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 94
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
