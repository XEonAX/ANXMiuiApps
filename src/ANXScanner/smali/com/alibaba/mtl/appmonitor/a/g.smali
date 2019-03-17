.class public Lcom/alibaba/mtl/appmonitor/a/g;
.super Lcom/alibaba/mtl/appmonitor/a/d;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/a/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/mtl/appmonitor/model/Metric;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "Lcom/alibaba/mtl/appmonitor/a/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/a/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lorg/json/JSONObject;
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 77
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->a()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "isCommitDetail"

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Metric;->isCommitDetail()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/c/d;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 83
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 84
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    const-class v3, Lcom/alibaba/mtl/appmonitor/c/e;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/g$a;

    .line 88
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 89
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->b(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 90
    const-string v9, "count"

    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v4, "noise"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v5, "dimensions"

    if-eqz v3, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a()Ljava/util/List;

    move-result-object v9

    .line 95
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    move v5, v6

    .line 96
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 97
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 98
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 99
    if-eqz v1, :cond_3

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 104
    new-instance v13, Lorg/json/JSONObject;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v13, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 119
    :catch_0
    move-exception v0

    .line 122
    :goto_4
    monitor-exit p0

    return-object v7

    .line 93
    :cond_1
    :try_start_2
    const-string v3, ""

    goto :goto_1

    .line 106
    :cond_2
    const-string v4, ""

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_3
    :try_start_3
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 113
    :cond_4
    const-string v1, "measures"

    invoke-virtual {v2, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 118
    :cond_5
    const-string v1, "values"

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public declared-synchronized a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 37
    monitor-enter p0

    .line 43
    if-nez p1, :cond_0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 45
    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-object p1, v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/g$a;

    move-object v2, v0

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/Metric;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result v0

    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->h()V

    .line 63
    invoke-virtual {v2, p2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 72
    :cond_1
    :goto_2
    const-string v0, "StatEvent"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "entity  count:"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, " noise:"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->b(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 52
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 53
    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 54
    new-instance v2, Lcom/alibaba/mtl/appmonitor/a/g$a;

    invoke-direct {v2, p0}, Lcom/alibaba/mtl/appmonitor/a/g$a;-><init>(Lcom/alibaba/mtl/appmonitor/a/g;)V

    .line 55
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->i()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->isCommitDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v2, p2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized clean()V
    .locals 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->clean()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    .line 137
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 143
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/d;->fill([Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->m:Ljava/util/Map;

    .line 154
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    .line 155
    return-void
.end method
