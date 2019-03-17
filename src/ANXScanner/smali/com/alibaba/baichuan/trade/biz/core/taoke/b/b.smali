.class public Lcom/alibaba/baichuan/trade/biz/core/taoke/b/b;
.super Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;-><init>()V

    const-string v0, "mtop.alibaba.baichuan.nbsdk.sclick.create"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/b/b;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
