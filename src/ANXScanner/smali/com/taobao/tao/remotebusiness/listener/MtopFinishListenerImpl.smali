.class Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;
.super Lcom/taobao/tao/remotebusiness/listener/b;
.source "MtopFinishListenerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtop.rb-FinishListener"


# direct methods
.method public constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/listener/b;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 42
    const-string v0, "mtop.rb-FinishListener"

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mtop onFinish event received."

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "mtop.rb-FinishListener"

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The request of RemoteBusiness is canceled."

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v5

    .line 51
    if-nez v5, :cond_1

    .line 52
    const-string v0, "mtop.rb-FinishListener"

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The MtopResponse is null."

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRetryTime()I

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/a;->a(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    .line 60
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isShowLoginUI()Z

    move-result v0

    invoke-static {v0, v5}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(ZLjava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "FAIL_SYS_ACCESS_TOKEN_EXPIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "FAIL_SYS_ILLEGAL_ACCESS_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isNeedAuth()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRetryTime()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 69
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/a;->a(Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    .line 70
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->authParam:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const-string v3, "x-act-hint"

    invoke-static {v2, v3}, Lmtopsdk/network/util/NetworkUtils;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-boolean v3, v3, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showAuthUI:Z

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 79
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 81
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lcom/taobao/tao/remotebusiness/IRemoteParserListener;

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lcom/taobao/tao/remotebusiness/IRemoteParserListener;

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/tao/remotebusiness/IRemoteParserListener;->parseResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v0, p1, v1}, Lcom/taobao/tao/remotebusiness/a/a;->a(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/a/b;

    move-result-object v8

    .line 86
    iput-object v5, v8, Lcom/taobao/tao/remotebusiness/a/b;->e:Lmtopsdk/mtop/domain/MtopResponse;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    const/4 v0, 0x0

    .line 91
    if-eqz v5, :cond_9

    .line 92
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    invoke-static {v5, v0}, Lmtopsdk/mtop/util/MtopConvert;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    .line 94
    iput-object v0, v8, Lcom/taobao/tao/remotebusiness/a/b;->c:Lmtopsdk/mtop/domain/BaseOutDo;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    :goto_1
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v4

    .line 98
    if-nez v4, :cond_6

    .line 99
    new-instance v4, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v4}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    .line 100
    invoke-virtual {v5, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 103
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    .line 104
    if-eqz v4, :cond_7

    .line 105
    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v10, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v12, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v4, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->beforeReqTime:J

    .line 107
    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v10, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    sub-long v10, v6, v10

    iput-wide v10, v4, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->mtopReqTime:J

    .line 108
    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v10, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    sub-long/2addr v10, v6

    iput-wide v10, v4, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->afterReqTime:J

    .line 109
    sub-long v6, v2, v6

    iput-wide v6, v4, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->parseTime:J

    .line 110
    sub-long/2addr v0, v2

    iput-wide v0, v4, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    .line 111
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v0, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v2, v2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, v4, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    .line 118
    :cond_7
    invoke-static {}, Lcom/taobao/tao/remotebusiness/a/a;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_8
    move-wide v0, v2

    goto :goto_1

    :cond_9
    move-object v4, v0

    move-wide v0, v2

    goto :goto_2
.end method
