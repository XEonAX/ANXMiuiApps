.class public Lcom/alibaba/mtl/appmonitor/model/Metric;
.super Ljava/lang/Object;
.source "Metric.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# instance fields
.field private b:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field private b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field private g:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->z:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p4, "dimensionSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p5, "isCommitDetail"    # Z

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->z:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 35
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 36
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    .line 37
    iput-boolean p5, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->g:Z

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p2, :cond_1

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 105
    iget-object v2, v0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->g:Z

    .line 183
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 184
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 185
    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->r:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-ne p0, p1, :cond_1

    .line 174
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 154
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_3
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/Metric;

    .line 159
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 160
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_5
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 165
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 166
    goto :goto_0

    .line 167
    :cond_6
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 168
    goto :goto_0

    .line 169
    :cond_7
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 170
    iget-object v2, p1, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 171
    goto :goto_0

    .line 172
    :cond_8
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 190
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    .line 192
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 193
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    .line 196
    :cond_0
    return-void
.end method

.method public getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    return-object v0
.end method

.method public getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getTransactionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->r:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->r:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    .line 142
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 143
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 146
    :goto_2
    add-int/2addr v0, v1

    .line 147
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->s:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public declared-synchronized isCommitDetail()Z
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 135
    :goto_0
    monitor-exit p0

    return v0

    .line 132
    :cond_0
    :try_start_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetTransactionId()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->r:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public declared-synchronized setCommitDetailFromConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "isCommitDetailFromConfig"    # Ljava/lang/String;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->z:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z
    .locals 7
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    if-eqz v0, :cond_7

    .line 70
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Z

    move-result v0

    move v1, v0

    .line 74
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_prefix"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_prefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->p:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-eqz v4, :cond_4

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-direct {p0, v0, v4}, Lcom/alibaba/mtl/appmonitor/model/Metric;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alibaba/mtl/appmonitor/model/Metric;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    .line 83
    :cond_1
    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {p2, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)Z

    move-result v0

    .line 85
    if-nez v0, :cond_0

    .line 99
    :cond_2
    :goto_1
    return v3

    :cond_3
    move v3, v1

    .line 92
    goto :goto_1

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-eqz v0, :cond_6

    .line 97
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/Metric;->b:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-virtual {v0, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    move v3, v2

    .line 99
    goto :goto_1

    :cond_5
    move v2, v3

    .line 97
    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_0
.end method
