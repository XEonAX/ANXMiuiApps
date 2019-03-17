.class Lcom/alibaba/baichuan/trade/common/utils/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/utils/b;->a:Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExecutorServiceUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
