.class Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;


# instance fields
.field final synthetic a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->b:Lcom/alibaba/baichuan/trade/biz/core/taoke/a/c;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, p1, v2, v0}, Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;->onError(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    const/4 v1, 0x0

    const-string v2, "jsonData\u89e3\u6790\u51fa\u9519"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;->onError(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSuccess(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/core/taoke/a/d;->a:Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;->onSuccess(ILorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
