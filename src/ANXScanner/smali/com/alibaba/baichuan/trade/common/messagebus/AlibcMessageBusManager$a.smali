.class Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;
.super Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;->a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Message;)V
    .locals 7

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-class v3, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;->a:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;

    iget-boolean v5, v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->isRunOnUIThread:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v5

    new-instance v6, Lcom/alibaba/baichuan/trade/common/messagebus/a;

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/messagebus/a;-><init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->onMessageEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
