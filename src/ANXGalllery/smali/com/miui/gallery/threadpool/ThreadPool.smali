.class public Lcom/miui/gallery/threadpool/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/threadpool/ThreadPool$Worker;,
        Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;,
        Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;,
        Lcom/miui/gallery/threadpool/ThreadPool$JobContextStub;,
        Lcom/miui/gallery/threadpool/ThreadPool$JobContext;,
        Lcom/miui/gallery/threadpool/ThreadPool$Job;
    }
.end annotation


# static fields
.field public static final JOB_CONTEXT_STUB:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;


# instance fields
.field mCpuCounter:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field mNetworkCounter:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContextStub;-><init>(Lcom/miui/gallery/threadpool/ThreadPool$1;)V

    sput-object v0, Lcom/miui/gallery/threadpool/ThreadPool;->JOB_CONTEXT_STUB:Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;-><init>(II)V

    .line 87
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mCpuCounter:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .line 43
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mNetworkCounter:Lcom/miui/gallery/threadpool/ThreadPool$ResourceCounter;

    .line 90
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/miui/gallery/threadpool/PriorityThreadFactory;

    const-string/jumbo v0, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v8, v0, v2}, Lcom/miui/gallery/threadpool/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 95
    return-void
.end method


# virtual methods
.method public isShutdown()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "ThreadPool"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shutdownNow()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "ThreadPool"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/threadpool/ThreadPool$Job",
            "<TT;>;",
            "Lcom/miui/gallery/threadpool/FutureListener",
            "<TT;>;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/miui/gallery/threadpool/FutureListener;, "Lcom/miui/gallery/threadpool/FutureListener<TT;>;"
    new-instance v0, Lcom/miui/gallery/threadpool/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/threadpool/ThreadPool$Worker;-><init>(Lcom/miui/gallery/threadpool/ThreadPool;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)V

    .line 121
    .local v0, "w":Lcom/miui/gallery/threadpool/ThreadPool$Worker;, "Lcom/miui/gallery/threadpool/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-object v0
.end method
