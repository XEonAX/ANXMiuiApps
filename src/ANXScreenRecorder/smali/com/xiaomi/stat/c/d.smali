.class final Lcom/xiaomi/stat/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 119
    const-class v1, Lcom/xiaomi/stat/c/i;

    monitor-enter v1

    .line 121
    :try_start_0
    const-class v0, Lcom/xiaomi/stat/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Lcom/xiaomi/stat/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/c/e;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/stat/c/e;-><init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    const-string v0, "UploadMode error while perform IPC connection."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-class v1, Lcom/xiaomi/stat/c/i;

    monitor-enter v1

    .line 109
    :try_start_0
    const-class v0, Lcom/xiaomi/stat/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
