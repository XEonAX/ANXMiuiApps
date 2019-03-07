.class Lcom/xiaomi/stat/C;
.super Landroid/os/FileObserver;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/A;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xiaomi/stat/C;->a:Lcom/xiaomi/stat/A;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/stat/C;->a:Lcom/xiaomi/stat/A;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/C;->a:Lcom/xiaomi/stat/A;

    invoke-static {v0}, Lcom/xiaomi/stat/A;->b(Lcom/xiaomi/stat/A;)V

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
