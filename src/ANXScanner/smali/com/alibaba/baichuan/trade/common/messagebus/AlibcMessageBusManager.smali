.class public Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;
    }
.end annotation


# static fields
.field private static c:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a:Ljava/util/Map;

    new-instance v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;

    new-instance v1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;

    invoke-direct {v1, p0}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager$a;-><init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;)V

    invoke-direct {v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;-><init>(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue$MessageCallback;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->b:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->c:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->c:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->c:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized registerListener(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a:Ljava/util/Map;

    iget v1, p1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->eventId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a:Ljava/util/Map;

    iget v1, p1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->eventId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a:Ljava/util/Map;

    iget v1, p1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->eventId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListner(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->a:Ljava/util/Map;

    iget v1, p1, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;->eventId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->b:Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageQueue;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
