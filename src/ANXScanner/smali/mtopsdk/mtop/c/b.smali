.class public final Lmtopsdk/mtop/c/b;
.super Ljava/lang/Object;
.source "MtopTransformImpl.java"

# interfaces
.implements Lmtopsdk/mtop/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalCallFactory()Lmtopsdk/network/Call$Factory;

    move-result-object v0

    .line 133
    invoke-interface {v0, p0}, Lmtopsdk/network/Call$Factory;->newCall(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method private static c(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/network/domain/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/network/domain/Request;"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :cond_1
    new-instance v0, Lmtopsdk/mtop/c/a/b;

    invoke-direct {v0}, Lmtopsdk/mtop/c/a/b;-><init>()V

    .line 120
    invoke-interface {v0, p0, p1}, Lmtopsdk/mtop/c/a/d;->a(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/network/domain/Request;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/domain/MtopResponse;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 41
    :cond_0
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lmtopsdk/mtop/util/MtopProxyUtils;->getApiWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lmtopsdk/mtop/a/a;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    const-string v6, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {v0, v2, v4, v5, v6}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string v2, "mtopsdk.MtopTransformImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[syncTransform] ANDROID_SYS_API_FLOW_LIMIT_LOCKED apiKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    return-object v0

    .line 54
    :cond_2
    invoke-static {p1, p2}, Lmtopsdk/mtop/c/b;->c(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/network/domain/Request;

    move-result-object v0

    .line 58
    :try_start_0
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendStart()V

    .line 59
    invoke-static {v0}, Lmtopsdk/mtop/c/b;->a(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;

    move-result-object v0

    invoke-interface {v0}, Lmtopsdk/network/Call;->execute()Lmtopsdk/network/domain/Response;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :try_start_1
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendEnd()V

    .line 61
    if-eqz v0, :cond_3

    .line 62
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/network/domain/Response;->stat()Lmtopsdk/network/domain/NetworkStats;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmtopsdk/mtop/util/MtopStatistics;->onNetStat(Lmtopsdk/network/domain/NetworkStats;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_3
    :goto_1
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataStart()V

    .line 70
    if-nez v0, :cond_5

    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string v1, "ANDROID_SYS_NETWORK_ERROR"

    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 71
    :cond_4
    :goto_2
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataEnd()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 65
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[syncTransform] invoke call.execute error :apiKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    const-string v5, "mtopsdk.MtopTransformImpl"

    invoke-static {v5, v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 70
    :cond_5
    new-instance v1, Lcom/taobao/tao/remotebusiness/listener/c;

    invoke-virtual {v0}, Lmtopsdk/network/domain/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lmtopsdk/network/domain/Response;->headers()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lmtopsdk/network/domain/Response;->body()Lmtopsdk/network/domain/ResponseBody;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lcom/taobao/tao/remotebusiness/listener/c;-><init>(ILjava/util/Map;Lmtopsdk/network/domain/ResponseBody;)V

    invoke-static {v2, v2, p1, v1}, Lcom/taobao/tao/remotebusiness/listener/c;->a(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lcom/taobao/tao/remotebusiness/listener/c;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    goto :goto_2

    .line 64
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public final b(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/common/ApiID;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/common/ApiID;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 80
    :cond_0
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lmtopsdk/mtop/util/MtopProxyUtils;->getApiWhiteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lmtopsdk/mtop/a/a;->a(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    const-string v6, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {v2, v4, v3, v5, v6}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v2}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 89
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "mtopsdk.MtopTransformImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[asyncTransform] ANDROID_SYS_API_FLOW_LIMIT_LOCKED apiKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v1, p1}, Lmtopsdk/mtop/common/ApiID;-><init>(Lmtopsdk/network/Call;Lmtopsdk/mtop/MtopProxy;)V

    .line 111
    :goto_0
    return-object v0

    .line 95
    :cond_2
    invoke-static {p1, p2}, Lmtopsdk/mtop/c/b;->c(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/network/domain/Request;

    move-result-object v0

    .line 97
    invoke-static {p1}, Lmtopsdk/mtop/util/MtopProxyUtils;->convertCallbackListener(Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/common/a;

    move-result-object v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    iget-object v5, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object v5, v4, Lmtopsdk/mtop/common/a;->c:Lmtopsdk/mtop/util/MtopStatistics;

    .line 104
    :cond_3
    :try_start_0
    iget-object v5, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendStart()V

    .line 105
    invoke-static {v0}, Lmtopsdk/mtop/c/b;->a(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :try_start_1
    invoke-interface {v0, v4}, Lmtopsdk/network/Call;->enqueue(Lmtopsdk/network/NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :goto_1
    new-instance v1, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v1, v0, p1}, Lmtopsdk/mtop/common/ApiID;-><init>(Lmtopsdk/network/Call;Lmtopsdk/mtop/MtopProxy;)V

    move-object v0, v1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 108
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[asyncTransform] invoke call.enqueue error :apiKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string v4, "mtopsdk.MtopTransformImpl"

    invoke-static {v4, v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    :catch_1
    move-exception v1

    goto :goto_2
.end method
