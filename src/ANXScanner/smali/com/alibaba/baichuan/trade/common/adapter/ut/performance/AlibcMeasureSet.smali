.class public Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;",
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

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;"
        }
    .end annotation

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;-><init>()V

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

    invoke-virtual {v1, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static create([Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;
    .locals 4

    new-instance v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;-><init>()V

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addMeasure(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;
    .locals 1

    new-instance v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-direct {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->addMeasure(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;

    move-result-object v0

    return-object v0
.end method

.method public getMeasure(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getName()Ljava/lang/String;

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

.method public getMeasures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    return-object v0
.end method

.method public setConstantValue(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;)V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getConstantValue()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getConstantValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public upateMeasure(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getMax()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->setMax(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getMin()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->setMin(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getConstantValue()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->setConstantValue(Ljava/lang/Double;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public upateMeasures(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    iget-object v1, v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->c:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getMax()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->setMax(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getMin()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->setMin(Ljava/lang/Double;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public valid(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureSet;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->containValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-virtual {p1, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasure;->valid(Lcom/alibaba/baichuan/trade/common/adapter/ut/performance/AlibcMeasureValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
