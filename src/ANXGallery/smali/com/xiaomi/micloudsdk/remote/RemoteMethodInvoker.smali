.class public abstract Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected abstract bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
.end method

.method public invoke()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<TR;>;"
    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/ThreadUtil;->ensureWorkerThread()V

    .line 41
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, p0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    invoke-virtual {v3}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 44
    .local v1, "service":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    .end local v1    # "service":Landroid/os/IBinder;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "RemoteMethodInvoker"

    const-string v4, "error while invoking service methods"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2

    .line 57
    :cond_0
    const-string v3, "RemoteMethodInvoker"

    const-string v4, "Cannot bind remote service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 35
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<TR;>;"
    const-string v0, "RemoteMethodInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteMethodInvoker connects remote service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->future:Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;

    invoke-virtual {v0, p2}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 31
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<TR;>;"
    return-void
.end method
