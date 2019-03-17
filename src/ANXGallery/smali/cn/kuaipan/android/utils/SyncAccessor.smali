.class public Lcn/kuaipan/android/utils/SyncAccessor;
.super Landroid/os/Handler;
.source "SyncAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/SyncAccessor$Args;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    return-void
.end method

.method private isAlive()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/SyncAccessor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 90
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 94
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs declared-synchronized access(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "what"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/kuaipan/android/utils/SyncAccessor$Args;->obtain()Lcn/kuaipan/android/utils/SyncAccessor$Args;

    move-result-object v0

    .line 61
    .local v0, "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    iput-object p2, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->params:[Ljava/lang/Object;

    .line 63
    invoke-virtual {p0, p1, v0}, Lcn/kuaipan/android/utils/SyncAccessor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/kuaipan/android/utils/SyncAccessor;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    :goto_0
    iget-boolean v3, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->handled:Z

    if-nez v3, :cond_2

    .line 65
    invoke-direct {p0}, Lcn/kuaipan/android/utils/SyncAccessor;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "SyncAccessor has dead."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 69
    .restart local v0    # "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const-wide/16 v4, 0x32

    :try_start_2
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 71
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v3

    .line 74
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "SyncAccessor has dead."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_2
    iget-object v2, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->result:Ljava/lang/Object;

    .line 78
    .local v2, "result":Ljava/lang/Object;
    iget-object v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->err:Ljava/lang/RuntimeException;

    .line 79
    .local v1, "err":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/SyncAccessor$Args;->recycle()V

    .line 81
    if-eqz v1, :cond_3

    .line 82
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :cond_3
    monitor-exit p0

    return-object v2
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 105
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcn/kuaipan/android/utils/SyncAccessor$Args;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 107
    check-cast v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 110
    .local v0, "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->params:[Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcn/kuaipan/android/utils/SyncAccessor;->handleAccess(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 114
    iput-boolean v5, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->handled:Z

    .line 115
    monitor-enter v0

    .line 116
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v0

    .line 122
    .end local v0    # "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :goto_0
    return-void

    .line 117
    .restart local v0    # "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iput-object v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->err:Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    iput-boolean v5, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->handled:Z

    .line 115
    monitor-enter v0

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 114
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    iput-boolean v5, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->handled:Z

    .line 115
    monitor-enter v0

    .line 116
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    :catchall_3
    move-exception v3

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 120
    .end local v0    # "args":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public varargs handleAccess(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "what"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method
