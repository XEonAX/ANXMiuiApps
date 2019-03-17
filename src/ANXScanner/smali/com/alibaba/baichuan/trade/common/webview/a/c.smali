.class public Lcom/alibaba/baichuan/trade/common/webview/a/c;
.super Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;"
        }
    .end annotation

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;-><init>()V

    const-string v0, "api"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    const-string v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    const-string v0, "needLogin"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needLogin:Z

    const-string v0, "needWua"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needWua:Z

    const-string v0, "needAuth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needAuth:Z

    const-string v0, "isPost"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isPost:Z

    const-string v0, "ext_headers"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2MapString(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    const-string v0, "timeout"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->timeOut:I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->requestType:I

    const-string v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "isPost"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-object v3, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    :cond_3
    return-object v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    new-instance v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v2, "6"

    invoke-direct {v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2MapObject(Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/baichuan/trade/common/webview/a/c;->a(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->check()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    const-string v2, "6"

    invoke-direct {v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "AliBCNetWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInstall parse params error, params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v0

    new-instance v2, Lcom/alibaba/baichuan/trade/common/webview/a/d;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/baichuan/trade/common/webview/a/d;-><init>(Lcom/alibaba/baichuan/trade/common/webview/a/c;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)V

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method
