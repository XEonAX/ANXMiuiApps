.class Lmiui/util/async/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue<",
        "Lmiui/util/async/Task<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final Kt:Lmiui/util/async/TaskManager;

.field private final La:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Lb:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Lc:Lmiui/util/concurrent/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/Queue<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Ld:Ljava/util/concurrent/Semaphore;

.field private final Le:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lmiui/util/async/a;->Kt:Lmiui/util/async/TaskManager;

    .line 58
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/a;->La:Lmiui/util/concurrent/Queue;

    .line 59
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/a;->Lb:Lmiui/util/concurrent/Queue;

    .line 60
    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-direct {p1, p2, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/a;->Lc:Lmiui/util/concurrent/Queue;

    .line 61
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    return-void
.end method

.method private dM()Lmiui/util/async/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lmiui/util/async/a;->La:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 100
    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lmiui/util/async/a;->Lb:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 103
    :cond_0
    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lmiui/util/async/a;->Lc:Lmiui/util/concurrent/Queue;

    invoke-interface {v0}, Lmiui/util/concurrent/Queue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    .line 106
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lmiui/util/async/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    .line 165
    nop

    .line 166
    iget-object v0, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lmiui/util/async/a;->La:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lmiui/util/async/a;->Lb:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :cond_0
    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lmiui/util/async/a;->Lc:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    :cond_1
    if-nez v0, :cond_3

    .line 175
    iget-object p1, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public b(Lmiui/util/async/Task;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;)Z"
        }
    .end annotation

    .line 73
    nop

    .line 74
    sget-object v0, Lmiui/util/async/TaskQueue$1;->Kj:[I

    invoke-virtual {p1}, Lmiui/util/async/Task;->getPriority()Lmiui/util/async/Task$Priority;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    const-string v0, "async"

    const-string v1, "Realtime task must NOT be put in Queue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lmiui/util/async/a;->La:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    goto :goto_1

    .line 79
    :pswitch_2
    iget-object v0, p0, Lmiui/util/async/a;->Lb:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    goto :goto_1

    .line 76
    :pswitch_3
    iget-object v0, p0, Lmiui/util/async/a;->Lc:Lmiui/util/concurrent/Queue;

    invoke-interface {v0, p1}, Lmiui/util/concurrent/Queue;->put(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    goto :goto_1

    .line 91
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 92
    sget-object v1, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clear()I
    .locals 3

    .line 194
    nop

    .line 195
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-direct {p0}, Lmiui/util/async/a;->dM()Lmiui/util/async/Task;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_0
    goto :goto_0

    .line 201
    :cond_1
    return v0
.end method

.method public dN()Lmiui/util/async/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/Task<",
            "*>;"
        }
    .end annotation

    .line 115
    nop

    .line 117
    iget-object v0, p0, Lmiui/util/async/a;->Kt:Lmiui/util/async/TaskManager;

    invoke-virtual {v0}, Lmiui/util/async/TaskManager;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 118
    :goto_0
    move-object v0, v1

    :cond_0
    if-nez v0, :cond_5

    .line 120
    :try_start_0
    iget-object v0, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    nop

    .line 126
    iget-object v0, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 129
    :goto_1
    :try_start_1
    iget-object v2, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 136
    :cond_1
    nop

    .line 137
    :try_start_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 132
    :catch_0
    move-exception v2

    .line 134
    iget-object v2, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 135
    monitor-exit v0

    return-object v1

    .line 137
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 140
    :cond_2
    :goto_3
    invoke-direct {p0}, Lmiui/util/async/a;->dM()Lmiui/util/async/Task;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v2

    sget-object v3, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-ne v2, v3, :cond_0

    .line 142
    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    return-object v1

    .line 146
    :cond_3
    move-object v0, v1

    :cond_4
    iget-object v1, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-direct {p0}, Lmiui/util/async/a;->dM()Lmiui/util/async/Task;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lmiui/util/async/Task;->getStatus()Lmiui/util/async/Task$Status;

    move-result-object v1

    sget-object v2, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    if-eq v1, v2, :cond_4

    .line 149
    nop

    .line 154
    :cond_5
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lmiui/util/async/a;->dN()Lmiui/util/async/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lmiui/util/async/a;->Ld:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 3

    .line 224
    iget-object v0, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic put(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/a;->b(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate<",
            "Lmiui/util/async/Task<",
            "*>;>;)I"
        }
    .end annotation

    .line 189
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no support for this method"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lmiui/util/async/Task;

    invoke-virtual {p0, p1}, Lmiui/util/async/a;->a(Lmiui/util/async/Task;)Z

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 3

    .line 233
    iget-object v0, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    iget-object v1, p0, Lmiui/util/async/a;->Le:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
