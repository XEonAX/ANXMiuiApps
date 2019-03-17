.class Lcom/xiaomi/push/service/ServiceClient$2;
.super Ljava/lang/Object;
.source "ServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/ServiceClient;->bindServiceSafely(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/ServiceClient;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ServiceClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/ServiceClient;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 455
    iget-object v3, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    monitor-enter v3

    .line 456
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v2, v4}, Lcom/xiaomi/push/service/ServiceClient;->access$002(Lcom/xiaomi/push/service/ServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 457
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xiaomi/push/service/ServiceClient;->access$102(Lcom/xiaomi/push/service/ServiceClient;Z)Z

    .line 458
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    invoke-static {v2}, Lcom/xiaomi/push/service/ServiceClient;->access$200(Lcom/xiaomi/push/service/ServiceClient;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .local v1, "msg":Landroid/os/Message;
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    invoke-static {v4}, Lcom/xiaomi/push/service/ServiceClient;->access$000(Lcom/xiaomi/push/service/ServiceClient;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 465
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    invoke-static {v2}, Lcom/xiaomi/push/service/ServiceClient;->access$200(Lcom/xiaomi/push/service/ServiceClient;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 466
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ServiceClient;->access$002(Lcom/xiaomi/push/service/ServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 472
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceClient$2;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ServiceClient;->access$102(Lcom/xiaomi/push/service/ServiceClient;Z)Z

    .line 474
    return-void
.end method
