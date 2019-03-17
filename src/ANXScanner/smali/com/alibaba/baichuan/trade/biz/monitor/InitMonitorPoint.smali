.class public Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_TIME:Ljava/lang/String; = "allTime"

.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final MODULE:Ljava/lang/String; = "BCTradeSDK"

.field public static final MONITOR_POINT:Ljava/lang/String; = "init"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final SECURITY_TIME:Ljava/lang/String; = "securityInitTime"

.field public static final UT_INIT_TIME:Ljava/lang/String; = "utInitTime"


# instance fields
.field public allTime:J

.field public securityInitTime:J

.field public utInitTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerMonitorPoint()V
    .locals 5

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    const-string v1, "appkey"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "securityInitTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "utInitTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "allTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v2

    const-string v3, "BCTradeSDK"

    const-string v4, "init"

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->registerPerformancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;)V

    return-void
.end method


# virtual methods
.method public send()V
    .locals 6

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    const-string v1, "appkey"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    const-string v1, "app_version"

    sget-object v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-static {v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcTradeCommonUtil;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    const-string v1, "sdk_version"

    sget-object v2, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->systemVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "securityInitTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->securityInitTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "utInitTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->utInitTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "allTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->allTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v2

    const-string v3, "BCTradeSDK"

    const-string v4, "init"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendPerfomancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;)V

    return-void
.end method

.method public setSecurityInitTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->securityInitTime:J

    return-void
.end method

.method public setUtInitTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->utInitTime:J

    return-void
.end method

.method public startAllTimeRecord()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->allTime:J

    return-void
.end method

.method public stopAllTimeRecord()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->allTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/monitor/InitMonitorPoint;->allTime:J

    return-void
.end method
