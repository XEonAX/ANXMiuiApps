.class public Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcNetWork;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 5

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.0"

    iput-object v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    :cond_0
    new-instance v3, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needLogin:Z

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    :goto_0
    iget-object v0, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlibcMtop"

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AlibcMtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session \u5931\u6548\uff0c do autologin or login business msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "AlibcMtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7cfb\u7edf\u9519\u8bef\uff0c\u7f51\u7edc\u9519\u8bef\uff0c\u9632\u5237\uff0c\u9632\u96ea\u5d29 msg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "AlibcMtop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1a\u52a1\u9519\u8bef msg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session \u5931\u6548\uff0c do autologin or login business"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InvokeMtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1501"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "\u7cfb\u7edf\u9519\u8bef\uff0c\u7f51\u7edc\u9519\u8bef\uff0c\u9632\u5237\uff0c\u9632\u96ea\u5d29 "

    goto :goto_0

    :cond_2
    const-string v0, "\u4e1a\u52a1\u9519\u8bef "

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->b(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    return-object v0
.end method

.method private b(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 3

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->byteData:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->httpCode:Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess:Z

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v0, Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    iput-object v2, v1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->jsonData:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public changeEnvMode(Lcom/alibaba/baichuan/trade/common/Environment;)V
    .locals 2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/Environment;->ONLINE:Lcom/alibaba/baichuan/trade/common/Environment;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/Environment;->PRE:Lcom/alibaba/baichuan/trade/common/Environment;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/baichuan/trade/common/Environment;->TEST:Lcom/alibaba/baichuan/trade/common/Environment;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    goto :goto_0
.end method

.method public init()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "AlibcMtop"

    const-string v2, "mtop init start"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->checkCommon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {v0, v0}, Lmtopsdk/mtop/intf/MtopSetting;->setAppKeyIndex(II)V

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->systemVersion:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/mtop/intf/MtopSetting;->setAppVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->changeEnvMode(Lcom/alibaba/baichuan/trade/common/Environment;)V

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    sget-object v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->ttid:Ljava/lang/String;

    invoke-static {v1, v2}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    const-string v1, "AlibcMtop"

    const-string v2, "mtop init end"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->ttid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needWua:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needAuth:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isVip:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->authParams:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setNeedAuth(Ljava/lang/String;Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_2
    iget-boolean v1, p1, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isPost:Z

    if-eqz v1, :cond_3

    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_3
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errmsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,api = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->b(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "InvokeMtop"

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendRequest(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Z
    .locals 4

    const/16 v3, 0x3a98

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;->onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "AlibcMtop"

    const-string v2, "sendRequest \u5931\u8d25\uff0crequest & listener \u4e3a null"

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;->a(Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    sget-object v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->ttid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    iget-boolean v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needWua:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_2
    iget-boolean v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->needAuth:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isVip:Z

    if-nez v2, :cond_3

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->authParams:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setNeedAuth(Ljava/lang/String;Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_3
    iget-boolean v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->isPost:Z

    if-eqz v2, :cond_4

    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_4
    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;->extHeaders:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_5
    invoke-virtual {v0, v3}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0, v3}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    new-instance v2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/c;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/mtop/a/b;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkRequest;)V

    invoke-virtual {v0, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->registeListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    move v0, v1

    goto :goto_0
.end method

.method public setTTID(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lmtopsdk/mtop/global/SDKUtils;->registerTtid(Ljava/lang/String;)V

    return-void
.end method

.method public turnOffDebug()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setTLogEnabled(Z)V

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setTLogEnabled(Z)V

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    return-void
.end method
