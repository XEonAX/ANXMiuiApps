.class public Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;
.super Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;


# instance fields
.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/BaseTradeMonitorPoint;-><init>()V

    return-void
.end method

.method public static o()V
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

    const-string v1, "pageType"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    const-string v1, "taokeType"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "analysisTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "taokeTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "urlHandleTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "urlLoadTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    const-string v2, "allTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v2

    const-string v3, "BCTradeSDK"

    const-string v4, "showH5"

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->registerPerformancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;)V

    return-void
.end method


# virtual methods
.method public e()V
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

    const-string v1, "pageType"

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    const-string v1, "taokeType"

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "analysisTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->c:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "taokeTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->e:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "urlHandleTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->f:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "urlLoadTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->g:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    const-string v2, "allTime"

    iget-wide v4, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->d:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v2

    const-string v3, "BCTradeSDK"

    const-string v4, "showH5"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendPerfomancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;)V

    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->e:J

    return-void
.end method

.method public i()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->e:J

    return-void
.end method

.method public j()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->f:J

    return-void
.end method

.method public k()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->f:J

    return-void
.end method

.method public l()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->g:J

    return-void
.end method

.method public m()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->g:J

    return-void
.end method

.method public n()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->e:J

    return-void
.end method
