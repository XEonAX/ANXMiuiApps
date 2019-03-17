.class Lcom/alibaba/baichuan/trade/common/webview/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

.field final synthetic b:Lcom/alibaba/baichuan/trade/common/webview/a/c;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/webview/a/c;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/webview/a/d;->b:Lcom/alibaba/baichuan/trade/common/webview/a/c;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/webview/a/d;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
    .locals 5

    new-instance v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>()V

    iget-object v0, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultMsg(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/a/d;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    return-void
.end method

.method public onSuccess(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
    .locals 5

    new-instance v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>()V

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setSuccess()V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/a/d;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->success(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    return-void
.end method
