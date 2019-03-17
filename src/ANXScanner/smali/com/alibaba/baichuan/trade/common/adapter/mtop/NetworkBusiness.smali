.class public abstract Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;
.super Ljava/lang/Object;


# instance fields
.field protected API_NAME:Ljava/lang/String;

.field protected API_VERSION:Ljava/lang/String;

.field protected IS_AUTH:Z

.field protected IS_NEED_LOGINE:Z

.field protected IS_POST:Z

.field protected IS_WUA:Ljava/lang/Boolean;

.field protected TIME_OUT:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->API_VERSION:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_NEED_LOGINE:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_WUA:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_AUTH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_POST:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->TIME_OUT:I

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;-><init>()V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->API_NAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->API_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_NEED_LOGINE:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needLogin:Z

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_WUA:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needWua:Z

    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_AUTH:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needAuth:Z

    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->IS_POST:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isPost:Z

    iget v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->TIME_OUT:I

    iput v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->timeOut:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->requestType:I

    iput-object p1, v0, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public sendRequest(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Ljava/util/Map;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z

    move-result v0

    return v0
.end method
