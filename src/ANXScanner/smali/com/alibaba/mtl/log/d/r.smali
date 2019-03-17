.class public Lcom/alibaba/mtl/log/d/r;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/d/r$a;
    }
.end annotation


# static fields
.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field public static a:Lcom/alibaba/mtl/log/d/r;

.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/mtl/log/d/r;->F:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/mtl/log/d/r;->G:I

    .line 28
    const/16 v0, 0xa

    sput v0, Lcom/alibaba/mtl/log/d/r;->H:I

    .line 29
    const/16 v0, 0x3c

    sput v0, Lcom/alibaba/mtl/log/d/r;->I:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/d/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/r;->b:Landroid/os/HandlerThread;

    .line 93
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/r;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/alibaba/mtl/log/d/r$1;

    iget-object v1, p0, Lcom/alibaba/mtl/log/d/r;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/mtl/log/d/r$1;-><init>(Lcom/alibaba/mtl/log/d/r;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/r;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/mtl/log/d/r;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/alibaba/mtl/log/d/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/log/d/r;->a:Lcom/alibaba/mtl/log/d/r;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/alibaba/mtl/log/d/r;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/d/r;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/d/r;->a:Lcom/alibaba/mtl/log/d/r;

    .line 88
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/d/r;->a:Lcom/alibaba/mtl/log/d/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    .prologue
    .line 78
    const-class v1, Lcom/alibaba/mtl/log/d/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/log/d/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 79
    sget v0, Lcom/alibaba/mtl/log/d/r;->F:I

    sget v2, Lcom/alibaba/mtl/log/d/r;->G:I

    sget v3, Lcom/alibaba/mtl/log/d/r;->H:I

    sget v4, Lcom/alibaba/mtl/log/d/r;->I:I

    const/16 v5, 0x1f4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/log/d/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 81
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/d/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 66
    .line 67
    if-lez p4, :cond_0

    .line 68
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, p4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 72
    :goto_0
    new-instance v8, Lcom/alibaba/mtl/log/d/r$a;

    invoke-direct {v8, p0}, Lcom/alibaba/mtl/log/d/r$a;-><init>(I)V

    .line 73
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 74
    return-object v1

    .line 70
    :cond_0
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/mtl/log/d/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/r;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 112
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/alibaba/mtl/log/d/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    return-void
.end method
