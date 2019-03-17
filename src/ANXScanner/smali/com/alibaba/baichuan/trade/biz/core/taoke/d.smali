.class Lcom/alibaba/baichuan/trade/biz/core/taoke/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->e:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iput-object p5, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->e:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iget-object v4, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->sendAsyncTaokeRPC(Ljava/util/HashMap;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess:Z

    if-nez v1, :cond_3

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "null taokeTrace response"

    :goto_0
    const-string v1, "taoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dd8\u5ba2\u5f02\u6b65\u6253\u70b9\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/d;->e:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    const-string v1, "Taoke_Trace"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->a(Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;Ljava/lang/String;)V

    const-string v0, "taoke"

    const-string v1, "\u6dd8\u5ba2\u5f02\u6b65\u6253\u70b9\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
