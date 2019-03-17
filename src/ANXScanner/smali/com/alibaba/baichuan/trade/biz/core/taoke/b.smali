.class Lcom/alibaba/baichuan/trade/biz/core/taoke/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

.field final synthetic c:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;

.field final synthetic d:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/util/HashMap;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->d:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->c:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->d:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->sendAsyncTaokeRPC(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess:Z

    if-nez v2, :cond_4

    :cond_0
    if-nez v0, :cond_3

    const-string v0, "null taokeTrace response"

    :goto_0
    const-string v2, "taoke"

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    invoke-static {v2, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->c:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->c:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6dd8\u5ba2\u6253\u70b9\u5931\u8d25\uff0c\u9519\u8bef\u4fe1\u606f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;->onFailure(ILjava/lang/String;)V

    :cond_2
    const-string v0, "taoke"

    const-string v1, "taoke\u5f02\u6b65\u6253\u70b9\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->c:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b;->c:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeAsyncCallback;->onSuccess()V

    :cond_5
    const-string v0, "taoke"

    const-string v1, "taoke\u5f02\u6b65\u6253\u70b9\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
