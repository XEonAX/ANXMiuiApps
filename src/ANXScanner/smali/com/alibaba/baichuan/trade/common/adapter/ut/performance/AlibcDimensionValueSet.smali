.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addValues(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "null"

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public containValue(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->a:Ljava/util/Map;

    if-eqz p2, :cond_0

    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string p2, "null"

    goto :goto_0
.end method
