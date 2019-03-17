.class public Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;
.super Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Application;)Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;
    .locals 6

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;-><init>()V

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->startAllTimeRecord()V

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->systemVersion:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->init(Landroid/app/Application;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->isSuccess:Z

    if-nez v3, :cond_3

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    if-nez v2, :cond_2

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :goto_1
    iput-object v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    iget v0, v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errCode:I

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errMsg:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->init()Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    if-nez v4, :cond_5

    :cond_4
    iget v0, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    iput v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    iget-object v0, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->init()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v0, 0x68

    iput v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    const-string v0, "\u6388\u6743\u670d\u52a1\u521d\u59cb\u5316\u5931\u8d25"

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->registerMonitorPoint()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->getTTID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->setTTID(Ljava/lang/String;)V

    iget-boolean v3, v3, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->isSuccess:Z

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    iget-wide v4, v3, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->securityInitTime:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->setSecurityInitTime(J)V

    iget-object v2, v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    iget-wide v2, v2, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->utInitTime:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->setUtInitTime(J)V

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->stopAllTimeRecord()V

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->send()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->isSuccess:Z

    move-object v0, v1

    goto :goto_2

    :cond_7
    const/16 v0, 0x69

    iput v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errCode:I

    const-string v0, "biz\u521d\u59cb\u5316\u51fa\u9519"

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz$AlibcTradeBizResult;->errMsg:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2
.end method
