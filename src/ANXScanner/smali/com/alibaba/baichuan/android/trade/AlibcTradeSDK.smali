.class public Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;
.super Lcom/alibaba/baichuan/android/trade/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/a;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->b(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    return-void
.end method

.method public static declared-synchronized asyncInit(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 3

    const-class v1, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/android/trade/model/InitState;->setState(I)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->context:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v2, Lcom/alibaba/baichuan/android/trade/f;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/baichuan/android/trade/f;-><init>(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postHandlerTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 5

    const-class v2, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->init(Landroid/app/Application;)Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/AlibcContext;->initData()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/b/a;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->registerListener(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/b/b;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->registerListener(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/b;->a()V

    if-eqz v3, :cond_0

    iget-boolean v0, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->b(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v0, "\u672a\u77e5"

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    if-nez v4, :cond_1

    iget v1, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    iget-object v0, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    :cond_1
    invoke-static {v1, v0}, Lcom/alibaba/baichuan/android/trade/model/InitResult;->newFailureResult(ILjava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/InitResult;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->initResult:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->initResult:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    invoke-static {p1, v0}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lcom/alibaba/baichuan/android/trade/model/InitResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
