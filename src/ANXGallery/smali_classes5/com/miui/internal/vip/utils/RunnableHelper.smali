.class public Lcom/miui/internal/vip/utils/RunnableHelper;
.super Ljava/lang/Object;
.source "RunnableHelper.java"


# static fields
.field private static final sBgThread:Ljava/util/concurrent/Executor;

.field private static final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/internal/vip/utils/RunnableHelper;->sUIHandler:Landroid/os/Handler;

    .line 40
    invoke-static {}, Lcom/miui/internal/vip/utils/RunnableHelper;->createSingleThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/RunnableHelper;->sBgThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSingleThreadPool()Ljava/util/concurrent/Executor;
    .locals 10

    .line 29
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 32
    invoke-static {}, Lcom/miui/internal/vip/utils/RunnableHelper;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Lcom/miui/internal/vip/utils/RunnableHelper$2;

    invoke-direct {v8}, Lcom/miui/internal/vip/utils/RunnableHelper$2;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 29
    return-object v9
.end method

.method private static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 18
    new-instance v0, Lcom/miui/internal/vip/utils/RunnableHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/vip/utils/RunnableHelper$1;-><init>()V

    return-object v0
.end method

.method public static runInBackground(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 47
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/miui/internal/vip/utils/RunnableHelper;->sBgThread:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 52
    :goto_0
    return-void
.end method

.method public static runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 43
    sget-object v0, Lcom/miui/internal/vip/utils/RunnableHelper;->sUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
