.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->c:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->b:D

    iput-wide p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->c:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->a:Z

    return-void
.end method

.method public static create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;-><init>()V

    return-object v0
.end method

.method public static create(D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;-><init>(D)V

    return-object v0
.end method

.method public static create(DD)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public getOffset()Ljava/lang/Double;
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->c:D

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->a:Z

    return v0
.end method

.method public setFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->a:Z

    return-void
.end method

.method public setOffset(D)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->b:D

    return-void
.end method

.method public setValue(D)V
    .locals 1

    iput-wide p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;->c:D

    return-void
.end method
