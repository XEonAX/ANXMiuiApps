.class Lcom/miui/gallery/threadpool/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/Future;
.implements Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/threadpool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/Future",
        "<TT;>;",
        "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mCancelListener:Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

.field private mCancelType:I

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/gallery/threadpool/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/miui/gallery/threadpool/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<TT;>;",
            "Lcom/miui/gallery/threadpool/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    .local p2, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->this$0:Lcom/miui/gallery/threadpool/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelType:I

    .line 142
    iput-object p2, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    .line 143
    iput-object p3, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mListener:Lcom/miui/gallery/threadpool/FutureListener;

    .line 144
    return-void
.end method

.method private acquireResource(Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;)Z
    .locals 1
    .param p1, "counter"    # Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .prologue
    .line 260
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    :goto_0
    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .line 263
    const/4 v0, 0x0

    monitor-exit p0

    .line 286
    :goto_1
    return v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .line 266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-enter p1

    .line 269
    :try_start_1
    iget v0, p1, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 270
    iget v0, p1, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;->value:I

    .line 271
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    monitor-enter p0

    .line 283
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .line 284
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 286
    const/4 v0, 0x1

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 274
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 279
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 284
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 249
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->this$0:Lcom/miui/gallery/threadpool/ThreadPool;

    iget-object v0, v0, Lcom/miui/gallery/threadpool/ThreadPool;->mCpuCounter:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->this$0:Lcom/miui/gallery/threadpool/ThreadPool;

    iget-object v0, v0, Lcom/miui/gallery/threadpool/ThreadPool;->mNetworkCounter:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .prologue
    .line 290
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 291
    :try_start_0
    iget v0, p1, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;->value:I

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit p1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 171
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 176
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized cancel(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 184
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelType:I

    .line 185
    invoke-virtual {p0}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 214
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getCancelType()I
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    iget v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelType:I

    return v0
.end method

.method public getJob()Lcom/miui/gallery/threadpool/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v2, 0x1

    .line 148
    const/4 v1, 0x0

    .line 152
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mJob:Lcom/miui/gallery/threadpool/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/miui/gallery/threadpool/ThreadPool$Job;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 161
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->setMode(I)Z

    .line 162
    iput-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsDone:Z

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iget-object v2, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mListener:Lcom/miui/gallery/threadpool/FutureListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mListener:Lcom/miui/gallery/threadpool/FutureListener;

    invoke-interface {v2, p0}, Lcom/miui/gallery/threadpool/FutureListener;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V

    .line 167
    :cond_1
    return-void

    .line 155
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized setCancelListener(Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

    .prologue
    .line 224
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

    .line 225
    iget-boolean v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x0

    .line 232
    iget v2, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->modeToCounter(I)Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 233
    .local v0, "rc":Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->releaseResource(Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;)V

    .line 234
    :cond_0
    iput v1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mMode:I

    .line 237
    invoke-direct {p0, p1}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->modeToCounter(I)Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    invoke-direct {p0, v0}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->acquireResource(Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :goto_0
    return v1

    .line 242
    :cond_1
    iput p1, p0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;->mMode:I

    .line 245
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
