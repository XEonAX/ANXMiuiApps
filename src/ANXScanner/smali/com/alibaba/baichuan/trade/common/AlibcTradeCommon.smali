.class public Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;
.super Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;-><init>()V

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->e:Lcom/alibaba/baichuan/trade/common/Environment;

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;-><init>()V

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sput-object p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    if-nez p1, :cond_1

    const-string p1, "99"

    :cond_1
    sput-object p1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->systemVersion:Ljava/lang/String;

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->startSecurityInitRecord()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->init()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->stopSecurityInitRecord()V

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard$a;->a:I

    if-ne v1, v3, :cond_3

    :cond_2
    iput v3, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errCode:I

    const-string v1, "\u5b89\u5168\u521d\u59cb\u5316\u5931\u8d25"

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errMsg:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->getAppKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->startUTInitRecord()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->init()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->initMonitor:Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/common/monitor/CommomInitMonitor;->stopUTInitRecord()V

    iget v1, v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;->result:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errCode:I

    const-string v1, "UT\u521d\u59cb\u5316\u5931\u8d25"

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errMsg:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->init()I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errCode:I

    const-string v1, "mtop\u521d\u59cb\u5316\u5931\u8d25"

    iput-object v1, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->errMsg:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewProxy;->init()V

    iput-boolean v3, v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon$AlibcTradeCommonResult;->isSuccess:Z

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->c:Z

    return v0
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setEnvironment(Lcom/alibaba/baichuan/trade/common/Environment;)V
    .locals 0

    sput-object p0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->e:Lcom/alibaba/baichuan/trade/common/Environment;

    return-void
.end method

.method public static setTTID(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/alibaba/baichuan/trade/common/AlibcMiniTradeCommon;->setTTID(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->setTTID(Ljava/lang/String;)V

    return-void
.end method

.method public static turnOffDebug()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->c:Z

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->turnOffDebug()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->turnOffDebug()V

    return-void
.end method

.method public static turnOnDebug()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->c:Z

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/mtop/AlibcMtop;->turnOnDebug()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->turnOnDebug()V

    return-void
.end method
