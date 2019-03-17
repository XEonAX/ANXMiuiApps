.class Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;

.field final synthetic b:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

.field final synthetic c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->b:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-static {v0, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->b:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    iget v1, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->requestType:I

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-static {v2, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->b(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;->onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errmsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,api = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-static {v0, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->b:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    iget v1, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->requestType:I

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-static {v2, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->b(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;->onSuccess(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V

    const-string v0, "InvokeMtop"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-static {v0, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->a:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->b:Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    iget v1, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->requestType:I

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-static {v2, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->b(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;->onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;->c:Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errmsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,api = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
