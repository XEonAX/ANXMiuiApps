.class Lcom/alibaba/baichuan/trade/biz/core/taoke/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/util/HashMap;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->f:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->b:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->d:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iput-object p6, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getIsSyncForTaoke()Z

    move-result v0

    const-string v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSyncForTaoke\u72b6\u6001\u503c\u4e3a = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v0, "taoke"

    const-string v1, "\u6dd8\u5ba2\u540c\u6b65\u6253\u70b9"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/b;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->a:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/b;->sendRequest(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "taoke"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6dd8\u5ba2\u540c\u6b65\u6253\u70b9\u6210\u529f,sclickUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->f:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    const-string v2, "Taoke_Trace"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->b:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;->getTaokeUrl(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "taoke"

    const-string v1, "\u6dd8\u5ba2\u540c\u6b65\u6253\u70b9\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    const-string v0, "NetworkResponse_is_null"

    move-object v1, v0

    :goto_1
    if-nez v2, :cond_3

    const-string v0, "NetworkResponse_is_null"

    :goto_2
    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->f:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1702"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "taoke"

    const-string v1, "\u6dd8\u5ba2\u5f02\u6b65\u6253\u70b9\u6d41\u7a0b"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->f:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->d:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v4, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->taokeTrace(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->b:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;->getTaokeUrl(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    goto :goto_2
.end method
