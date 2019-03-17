.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;
    }
.end annotation


# static fields
.field public static final ERR_CODE:I = 0x2

.field public static final ERR_MSG:Ljava/lang/String; = "UT\u521d\u59cb\u5316\u5931\u8d25"

.field private static a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;


# instance fields
.field private b:Z

.field private c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AppMonitorUserTracker;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AppMonitorUserTracker;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AplusUserTracker;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    goto :goto_0
.end method

.method private a()Z
    .locals 3

    :try_start_0
    const-string v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AlibcUserTracker"

    const-string v2, "no appmonitor"

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->a:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized init()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->init()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker$AlibcUserTrackerResult;-><init>(Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isThirdVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    instance-of v0, v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AppMonitorUserTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AppMonitorUserTracker;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/impl/AppMonitorUserTracker;->isThirdVersion()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerPerformancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->registerPerformancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;)V

    :cond_0
    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendCustomHit(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendCustomHit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendInitHit4DAU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendInitHit4DAU(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendPerfomancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendPerfomancePoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;)V

    :cond_0
    return-void
.end method

.method public sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->setChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSampling(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->setSampling(I)V

    :cond_0
    return-void
.end method

.method public turnOffDebug()V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->turnOffDebug()V

    :cond_0
    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->c:Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcBaseUserTracker;->turnOnDebug()V

    :cond_0
    return-void
.end method
