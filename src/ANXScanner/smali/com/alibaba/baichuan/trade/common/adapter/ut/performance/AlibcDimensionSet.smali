.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;"
        }
    .end annotation

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-direct {v3, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static create([Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
    .locals 5

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;-><init>()V

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    new-instance v4, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-direct {v4, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addDimension(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-direct {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    return-object v0
.end method

.method public addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->addDimension(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    return-object v0
.end method

.method public setConstantValue(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->getConstantValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->getConstantValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public valid(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimension;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcDimensionValueSet;->containValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
