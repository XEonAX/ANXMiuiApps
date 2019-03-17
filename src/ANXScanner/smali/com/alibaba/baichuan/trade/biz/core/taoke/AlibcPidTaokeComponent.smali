.class public Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;
.super Ljava/lang/Object;


# static fields
.field public static final ASYNC_TAOKE_TYPE:I = 0x0

.field public static final ERRCODE_NO_NETWORK:I = -0x1

.field public static final ERRCODE_PARAM_ERROR:I = -0x2

.field public static final ERRMSG_NO_NETWORK:Ljava/lang/String; = "\u6ca1\u6709\u7f51\u7edc,\u6dd8\u5ba2\u6253\u70b9\u5931\u8d25"

.field public static final ERRMSG_PARAM_ERROR:Ljava/lang/String; = "\u53c2\u6570\u9519\u8bef,\u6dd8\u5ba2\u6253\u70b9\u5931\u8d25"

.field public static final INSTANCE:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

.field public static final SYNC_TAOKE_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->INSTANCE:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Taoke_Trace"

    invoke-static {v0, p1, p2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v1, "taoke"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dd8\u5ba2\u5f02\u6b65\u6253\u70b9,\u5177\u4f53\u53c2\u6570 taokeInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n rpcReferer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v6

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;-><init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postHandlerTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "taoke"

    const-string v2, "\u6dfb\u52a0\u6dd8\u5ba2\u53c2\u6570"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "url"

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appKey"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utdid"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->subPid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "subPid"

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->subPid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->unionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "unionId"

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->unionId:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, "pid"

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dd8\u5ba2\u53c2\u6570\u8bbe\u7f6e\u540e taokeInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "subPid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v1, "unionId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public asyncTaokeTrace(Ljava/util/HashMap;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    const-string v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taoke\u5f02\u6b65\u6253\u70b9\u5f00\u59cb\uff0c\u53c2\u6570\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;-><init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/util/HashMap;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postHandlerTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public genUrlAndTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "taoke"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dd8\u5ba2\u6253\u70b9\u6d41\u7a0b,\u4f20\u5165\u53c2\u6570\u4e3a taokeInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n isGenSclick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n taokeParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n rpcReferer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n taokeTraceCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/network/NetworkUtils;->isNetworkAvaiable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taoke"

    const-string v1, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v3, p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;->getTaokeUrl(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez p4, :cond_2

    :cond_1
    const-string v0, "taoke"

    const-string v1, "\u6dd8\u5ba2\u53c2\u6570\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v3, p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;->getTaokeUrl(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p4, p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Ljava/util/Map;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    if-nez p3, :cond_3

    const-string v0, "taoke"

    const-string v1, "\u4e0d\u9700\u8981\u6362sclick,\u8d70rpc\u53d1\u9001\u6dd8\u5ba2\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->taokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    invoke-interface {p6, v3, p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;->getTaokeUrl(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;-><init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/util/HashMap;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postHandlerTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendAsyncTaokeRPC(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/a;-><init>()V

    iget-object v1, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    const-string v2, "mm_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "taoke"

    const-string v2, "\u6dd8\u5ba2pid\u53c2\u6570\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/a;->sendRequest(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1701"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "taoke"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dd8\u5ba2\u6253\u70b9rpc\u8bf7\u6c42\u7ed3\u679c: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    goto :goto_1
.end method

.method public taokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    return-void
.end method
