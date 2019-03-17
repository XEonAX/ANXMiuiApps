.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/Double;

.field protected b:Ljava/lang/Double;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->d:Ljava/lang/Double;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->d:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getConstantValue()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public getMax()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public getMin()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setConstantValue(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->d:Ljava/lang/Double;

    return-void
.end method

.method public setMax(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    return-void
.end method

.method public setMin(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    return-void
.end method

.method public setRange(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    return-void
.end method

.method public valid(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->b:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
