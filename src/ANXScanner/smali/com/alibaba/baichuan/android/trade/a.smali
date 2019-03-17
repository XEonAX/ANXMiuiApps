.class public Lcom/alibaba/baichuan/android/trade/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field public static initResult:Lcom/alibaba/baichuan/android/trade/model/InitResult;

.field public static initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

.field public static pendingInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/a;->pendingInitCallbacks:Ljava/util/List;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/InitState;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/model/InitState;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/a;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/a;->b()V

    return-void
.end method

.method static synthetic a(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alibaba/baichuan/android/trade/a;->b(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    return-void
.end method

.method protected static a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lcom/alibaba/baichuan/android/trade/model/InitResult;)V
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/model/InitState;->setState(I)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/e;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/baichuan/android/trade/e;-><init>(Lcom/alibaba/baichuan/android/trade/model/InitResult;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/baichuan/android/trade/a;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/model/InitState;->isInitializing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/baichuan/android/trade/a;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/alibaba/baichuan/android/trade/a;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/model/InitState;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v1

    new-instance v2, Lcom/alibaba/baichuan/android/trade/c;

    invoke-direct {v2, p0}, Lcom/alibaba/baichuan/android/trade/c;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized asyncInit(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 3

    const-class v1, Lcom/alibaba/baichuan/android/trade/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/baichuan/android/trade/a;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/android/trade/model/InitState;->setState(I)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->context:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v2, Lcom/alibaba/baichuan/android/trade/b;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/baichuan/android/trade/b;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postHandlerTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "appkey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "ttid"

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->getTTID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkType"

    const-string v2, "standard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SDK_INIT:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/usertracker/AlibcTradeBizUT;->sendInitHit4DAU()V

    return-void
.end method

.method private static declared-synchronized b(Landroid/app/Application;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 5

    const-class v2, Lcom/alibaba/baichuan/android/trade/a;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/b;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/b;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;->translator:Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/SpmTranslator;

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->systemVersion:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->init()Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->getTTID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->setTTID(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/AlibcContext;->initData()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v1

    new-instance v4, Lcom/alibaba/baichuan/android/trade/b/a;

    invoke-direct {v4}, Lcom/alibaba/baichuan/android/trade/b/a;-><init>()V

    invoke-virtual {v1, v4}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->registerListener(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v1

    new-instance v4, Lcom/alibaba/baichuan/android/trade/b/b;

    invoke-direct {v4}, Lcom/alibaba/baichuan/android/trade/b/b;-><init>()V

    invoke-virtual {v1, v4}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->registerListener(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v0, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/alibaba/baichuan/android/trade/a;->b(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
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

    sput-object v0, Lcom/alibaba/baichuan/android/trade/a;->initResult:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->initResult:Lcom/alibaba/baichuan/android/trade/model/InitResult;

    invoke-static {p2, v0}, Lcom/alibaba/baichuan/android/trade/a;->a(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lcom/alibaba/baichuan/android/trade/model/InitResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected static b(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->a:Ljava/lang/String;

    const-string v1, "AlibcTradeSDK\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/a;->initState:Lcom/alibaba/baichuan/android/trade/model/InitState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/model/InitState;->setState(I)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/android/trade/d;

    invoke-direct {v1, p0}, Lcom/alibaba/baichuan/android/trade/d;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postUITask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static destory()V
    .locals 0

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->cleanMap()V

    return-void
.end method

.method public static setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/alibaba/baichuan/trade/biz/utils/AlibcParamUtils;->getChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnvironment(Lcom/alibaba/baichuan/trade/common/Environment;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->setEnvironment(Lcom/alibaba/baichuan/trade/common/Environment;)V

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/AlibcContext;->updateUrl()V

    return-void
.end method

.method public static setForceH5(Z)Z
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setIsForceH5(Z)Z

    move-result v0

    return v0
.end method

.method public static setISVCode(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setIsvCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setISVVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->setIsvVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setIsAuthVip(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->isVip:Z

    return-void
.end method

.method public static setShouldUseAlipay(Z)Z
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setShouldUseAlipay(Z)Z

    move-result v0

    return v0
.end method

.method public static setSyncForTaoke(Z)Z
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setIsSyncForTaoke(Z)Z

    move-result v0

    return v0
.end method

.method public static setTaokeParams(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->setTaokeParams(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;)V

    return-void
.end method
