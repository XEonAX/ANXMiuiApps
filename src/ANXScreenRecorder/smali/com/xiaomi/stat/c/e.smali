.class Lcom/xiaomi/stat/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/xiaomi/stat/c/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iput-object p2, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/xiaomi/stat/c/e;->a:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaomi/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/a/a/a/a;

    move-result-object v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v1, v1, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v3, v3, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v4, v4, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadMode connected, do remote http post "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v1, v1, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 88
    const-class v1, Lcom/xiaomi/stat/c/i;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    const-class v0, Lcom/xiaomi/stat/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 100
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadMode error while uploading the data by IPC."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaomi/stat/c/e;->b:Lcom/xiaomi/stat/c/d;

    iget-object v0, v0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v5

    goto :goto_1
.end method
