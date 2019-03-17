.class public Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ExecutorServiceUtils"

.field private static volatile d:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->d:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SDK Looper Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExecutorServiceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efahandlerThread\u9519\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/utils/b;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/utils/b;-><init>(Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->c:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->d:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->d:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->d:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->d:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->a:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->c:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    return-void
.end method

.method public postDelayTask(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postHandlerTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postUITask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
