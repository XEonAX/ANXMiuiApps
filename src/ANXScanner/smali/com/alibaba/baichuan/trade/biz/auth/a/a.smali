.class public Lcom/alibaba/baichuan/trade/biz/auth/a/a;
.super Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkBusiness;-><init>()V

    const-string v0, "mtop.alibaba.baichuan.auth.token.get"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/a/a;->API_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/a/a;->IS_NEED_LOGINE:Z

    const v0, 0x15f90

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/a/a;->TIME_OUT:I

    return-void
.end method

.method private a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "hintArray"

    if-nez p1, :cond_1

    const-string v0, "[]"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oldToken"

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->toJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Set;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/auth/a/a;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/alibaba/baichuan/trade/biz/auth/a/a;->sendRequest(Ljava/util/Map;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;)Z

    move-result v0

    return v0
.end method
