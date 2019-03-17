.class public Lmtopsdk/mtop/MtopProxy;
.super Lmtopsdk/mtop/MtopProxyBase;
.source "MtopProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProxy"


# instance fields
.field private paramBuilder:Lmtopsdk/mtop/b/a/a;

.field private transformer:Lmtopsdk/mtop/c/a;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v0, v0}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0, p2}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lmtopsdk/mtop/MtopProxyBase;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 35
    new-instance v0, Lmtopsdk/mtop/b/a/a;

    invoke-direct {v0}, Lmtopsdk/mtop/b/a/a;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/b/a/a;

    .line 40
    new-instance v0, Lmtopsdk/mtop/c/b;

    invoke-direct {v0}, Lmtopsdk/mtop/c/b;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/c/a;

    .line 72
    return-void
.end method

.method private initCommonConfig()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lmtopsdk/mtop/MtopProxy;->checkInit()V

    .line 185
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->onPrepareStat()V

    .line 187
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySslSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v1, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 190
    :cond_0
    return-void
.end method

.method private onPrepareStat()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 170
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 171
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public asyncApiCall()Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->initCommonConfig()V

    .line 138
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->validateBusinessInit()Lmtopsdk/mtop/util/Result;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 148
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v5, p0}, Lmtopsdk/mtop/common/ApiID;-><init>(Lmtopsdk/network/Call;Lmtopsdk/mtop/MtopProxy;)V

    .line 161
    :goto_1
    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/b/a/a;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/b/a/a;->a(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    .line 153
    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const-string v4, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 156
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v5, p0}, Lmtopsdk/mtop/common/ApiID;-><init>(Lmtopsdk/network/Call;Lmtopsdk/mtop/MtopProxy;)V

    goto :goto_1

    .line 159
    :cond_2
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/c/a;

    invoke-interface {v1, p0, v0}, Lmtopsdk/mtop/c/a;->b(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    goto :goto_1
.end method

.method public getParamBuilder()Lmtopsdk/mtop/b/a/a;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/b/a/a;

    return-object v0
.end method

.method public getTransformer()Lmtopsdk/mtop/c/a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/c/a;

    return-object v0
.end method

.method public syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 5

    .prologue
    .line 91
    invoke-direct {p0}, Lmtopsdk/mtop/MtopProxy;->initCommonConfig()V

    .line 93
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->validateBusinessInit()Lmtopsdk/mtop/util/Result;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 117
    :goto_1
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxy;->paramBuilder:Lmtopsdk/mtop/b/a/a;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/b/a/a;->a(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const-string v4, "\u751f\u6210Mtop\u7b7e\u540dsign\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->transformer:Lmtopsdk/mtop/c/a;

    invoke-interface {v1, p0, v0}, Lmtopsdk/mtop/c/a;->a(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 116
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    goto :goto_1
.end method
