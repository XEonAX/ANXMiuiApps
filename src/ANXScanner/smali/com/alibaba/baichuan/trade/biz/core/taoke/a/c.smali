.class public Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getMtopEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;->a:Z

    return v0
.end method

.method public sendRequest(Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;-><init>()V

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopAccessToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->accessToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopApiName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopApiVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopAuthParams()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->authParams:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopExtHeaders()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->isPost()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isPost:Z

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->isMtopIsVip()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isVip:Z

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->isMtopNeedAuth()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needAuth:Z

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->isMtopNeedCache()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needCache:Z

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->isMtopNeedLogin()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needLogin:Z

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->isMtopNeedWua()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needWua:Z

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopOpenAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->openAppKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getMtopRequestType()I

    move-result v1

    iput v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->requestType:I

    invoke-virtual {p1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->getTimeOut()I

    move-result v1

    iput v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->timeOut:I

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v1

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;-><init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;)V

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z

    goto :goto_0
.end method
