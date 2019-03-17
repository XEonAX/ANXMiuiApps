.class public Lcom/uploader/implement/e/b;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/e/b$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static volatile b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xa

    sput v0, Lcom/uploader/implement/e/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 76
    .local v0, "future":Ljava/util/concurrent/Future;
    :try_start_0
    invoke-static {}, Lcom/uploader/implement/e/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .prologue
    .line 50
    sget-object v0, Lcom/uploader/implement/e/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/uploader/implement/e/b;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/uploader/implement/e/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x1e

    const/16 v4, 0x80

    new-instance v5, Lcom/uploader/implement/e/b$a;

    sget v6, Lcom/uploader/implement/e/b;->a:I

    invoke-direct {v5, v6}, Lcom/uploader/implement/e/b$a;-><init>(I)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/uploader/implement/e/b;->a(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/uploader/implement/e/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    .line 56
    sget-object v0, Lcom/uploader/implement/e/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/uploader/implement/e/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(IIIILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0, "coreSize"    # I
    .param p1, "maxSize"    # I
    .param p2, "keepAliveTime"    # I
    .param p3, "queenSize"    # I
    .param p4, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 86
    if-lez p3, :cond_0

    .line 87
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 91
    .local v7, "queue":Ljava/util/concurrent/BlockingQueue;
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, p0

    move v3, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 89
    .end local v7    # "queue":Ljava/util/concurrent/BlockingQueue;
    :cond_0
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .restart local v7    # "queue":Ljava/util/concurrent/BlockingQueue;
    goto :goto_0
.end method
