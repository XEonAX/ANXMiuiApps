.class public Lcom/alibaba/baichuan/trade/biz/alipay/f;
.super Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;-><init>()V

    const-string v0, "mtop.alibaba.baichuan.nbsdk.pay.query"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/alipay/f;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/alipay/AlibcAlipay;->parseAliPayResult(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/alipay/AliPayResult;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orderIdList"

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/alipay/f;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/biz/alipay/f;->sendRequest(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    return-object v0
.end method
