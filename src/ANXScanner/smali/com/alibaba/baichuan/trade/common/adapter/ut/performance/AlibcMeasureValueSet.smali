.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;"
        }
    .end annotation

    new-instance v2, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    invoke-direct {v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    iget-object v4, v2, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    new-instance v5, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;-><init>(D)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static fromStringMap(Ljava/util/Map;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;"
        }
    .end annotation

    new-instance v2, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    invoke-direct {v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v2, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v5, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;-><init>(D)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public clean()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containValue(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    return-void
.end method

.method public setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    invoke-direct {v1, p2, p3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;-><init>(D)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
