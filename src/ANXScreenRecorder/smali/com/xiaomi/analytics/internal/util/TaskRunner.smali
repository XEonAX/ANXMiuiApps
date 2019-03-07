.class public Lcom/xiaomi/analytics/internal/util/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# static fields
.field private static NUMBER_OF_CORES:I = 0x0

.field public static final SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String; = "TaskRunner"

.field private static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->NUMBER_OF_CORES:I

    .line 27
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/xiaomi/analytics/internal/util/TaskRunner;->NUMBER_OF_CORES:I

    sget v3, Lcom/xiaomi/analytics/internal/util/TaskRunner;->NUMBER_OF_CORES:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/analytics/internal/util/TaskRunner;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    sget-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/internal/util/TaskRunner;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TaskRunner"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "execute e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
